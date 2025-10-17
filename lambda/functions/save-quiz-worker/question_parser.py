"""Utilities to parse markdown-formatted SAA questions."""

from __future__ import annotations

import re
from dataclasses import dataclass
from pathlib import Path
from typing import Dict, Iterable, List, Sequence, Tuple

SECTION_PATTERN = re.compile(r"^##\s*#(\d+)\s*$", re.M)
CODE_BLOCK_PATTERN = re.compile(r"```(.*?)```", re.S)
CHOICE_PATTERN = re.compile(r"^\s*(?:[-*]\s*)?([A-Z])\.\s*(.*)")
ANSWER_LINE_PATTERN = re.compile(r"정답\s*:\s*`?([^`\n]+)`?")
ANSWER_TOKEN_PATTERN = re.compile(r"(?<![A-Za-z0-9])([A-Z])(?![A-Za-z0-9])")


@dataclass
class Choice:
    label: str
    text_kr: str
    text_en: str


@dataclass
class Question:
    qid: int
    question_kr: str
    question_en: str
    choices: List[Choice]
    answers: List[str]
    explanation: str


class ParseError(RuntimeError):
    pass


def _normalise(text: str) -> str:
    # Normalize newlines and remove non-printable control characters that may sneak in
    text = text.replace("\r\n", "\n").replace("\r", "\n")
    return re.sub(r"[\x00-\x08\x0b-\x0c\x0e-\x1f\x7f]", "", text)


def _split_sections(text: str) -> List[Tuple[int, str]]:
    matches = list(SECTION_PATTERN.finditer(text))
    sections: List[Tuple[int, str]] = []
    for idx, match in enumerate(matches):
        qid = int(match.group(1))
        start = match.end()
        end = matches[idx + 1].start() if idx + 1 < len(matches) else len(text)
        body = text[start:end].strip()
        if not body:
            continue
        sections.append((qid, body))
    return sections


def _parse_question_and_choices(block: str) -> Tuple[str, List[Tuple[str, str]]]:
    lines = block.strip().splitlines()
    question_lines: List[str] = []
    choices: List[Tuple[str, List[str]]] = []
    current_label: str | None = None
    current_buffer: List[str] = []

    def flush_choice() -> None:
        nonlocal current_label, current_buffer
        if current_label is None:
            return
        choices.append((current_label, current_buffer.copy()))
        current_label = None
        current_buffer = []

    for raw_line in lines:
        line = raw_line.rstrip("\r")
        match = CHOICE_PATTERN.match(line)
        if match:
            flush_choice()
            current_label = match.group(1)
            remainder = match.group(2).strip()
            current_buffer = [remainder] if remainder else []
        else:
            if current_label is None:
                question_lines.append(line)
            else:
                current_buffer.append(line.strip())

    flush_choice()

    cleaned_choices: List[Tuple[str, str]] = []
    for label, raw_lines in choices:
        text = "\n".join(raw_lines).strip()
        cleaned_choices.append((label, text))

    question_text = "\n".join(question_lines).strip()
    return question_text, cleaned_choices


def _parse_answers(
    text: str, qid: int, overrides: Dict[int, Sequence[str]]
) -> List[str]:
    tokens = ANSWER_TOKEN_PATTERN.findall(text)
    if not tokens and qid in overrides:
        tokens = list(dict.fromkeys(label.strip().upper() for label in overrides[qid]))
    if not tokens:
        raise ParseError(f"Could not parse answers for question {qid}: {text!r}")
    seen: Dict[str, None] = {}
    ordered: List[str] = []
    for token in tokens:
        if token not in seen:
            seen[token] = None
            ordered.append(token)
    return ordered


def parse_markdown_text(
    text: str, *, overrides: Dict[int, Sequence[str]] | None = None
) -> List[Question]:
    overrides = overrides or {}
    payload = _normalise(text)
    questions: List[Question] = []

    for qid, body in _split_sections(payload):
        english_match = None
        for match in CODE_BLOCK_PATTERN.finditer(body):
            _, potential_choices = _parse_question_and_choices(match.group(1))
            if len(potential_choices) >= 4:
                english_match = match
                break

        if english_match is None:
            raise ParseError(
                f"Question {qid} is missing code block with English prompt"
            )

        english_block = english_match.group(0)
        before, after = body.split(english_block, 1)

        last_choice_end_offset = -1
        consumed = 0
        for raw_line in before.splitlines(True):
            line = raw_line.rstrip("\r\n")
            if CHOICE_PATTERN.match(line):
                last_choice_end_offset = consumed + len(raw_line)
            consumed += len(raw_line)

        if last_choice_end_offset != -1:
            english_leading_start = before.find("```", last_choice_end_offset)
            if english_leading_start == -1:
                english_leading_start = last_choice_end_offset
        else:
            english_leading_start = len(before)

        korean_section = before[:english_leading_start]
        english_leading_section = before[english_leading_start:]

        question_kr, choices_kr = _parse_question_and_choices(korean_section)
        question_en, choices_en = _parse_question_and_choices(english_match.group(1))

        english_leading_section = english_leading_section.strip()
        if english_leading_section:
            question_en = f"{english_leading_section}\n\n{question_en}".strip()

        if len(choices_kr) != len(choices_en):
            raise ParseError(
                f"Choice count mismatch for question {qid} (KR={len(choices_kr)}, EN={len(choices_en)})"
            )

        answer_match = ANSWER_LINE_PATTERN.search(after)
        raw_answer = answer_match.group(1).strip() if answer_match else ""
        answers = _parse_answers(raw_answer, qid, overrides)

        explanation_start = answer_match.end() if answer_match else 0
        explanation = after[explanation_start:].strip()

        choices: List[Choice] = []
        for idx, (label, text_kr) in enumerate(choices_kr):
            text_en = choices_en[idx][1] if idx < len(choices_en) else ""
            choices.append(Choice(label=label, text_kr=text_kr, text_en=text_en))

        questions.append(
            Question(
                qid=qid,
                question_kr=question_kr,
                question_en=question_en,
                choices=choices,
                answers=answers,
                explanation=explanation,
            )
        )

    questions.sort(key=lambda q: q.qid)
    return questions


def parse_markdown_file(
    path: Path, *, overrides: Dict[int, Sequence[str]] | None = None
) -> List[Question]:
    return parse_markdown_text(path.read_text(encoding="utf-8"), overrides=overrides)


def collect_question_ids(questions: Iterable[Question]) -> List[int]:
    return [question.qid for question in questions]
