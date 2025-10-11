CREATE TABLE question (
  id BIGINT PRIMARY KEY,
  text_kr TEXT NOT NULL,
  text_en TEXT NOT NULL
) ENGINE=InnoDB;

CREATE TABLE choice (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  question_id BIGINT NOT NULL,
  text_kr TEXT NOT NULL,
  text_en TEXT NOT NULL,
  CONSTRAINT fk_choice_question FOREIGN KEY (question_id) REFERENCES question(id)
) ENGINE=InnoDB;

CREATE TABLE description (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  question_id BIGINT NOT NULL,
  text TEXT NOT NULL,
  CONSTRAINT fk_description_question FOREIGN KEY (question_id) REFERENCES question(id)
) ENGINE=InnoDB;

CREATE TABLE answer (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  question_id BIGINT NOT NULL,
  choice_id BIGINT NOT NULL,
  CONSTRAINT fk_answer_question FOREIGN KEY (question_id) REFERENCES question(id),
  CONSTRAINT fk_answer_choice FOREIGN KEY (choice_id) REFERENCES choice(id)
) ENGINE=InnoDB;