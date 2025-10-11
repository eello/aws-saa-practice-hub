-- Inserts for questions 1-40 extracted from SAA-C03 markdown sources
INSERT INTO question (id, text_kr, text_en) VALUES
  (1, '한 회사가 여러 대륙의 도시에서 온도, 습도, 기압 데이터를 수집하고 있습니다.
각 사이트에서 하루 평균 수집하는 데이터 양은 500GB입니다. 각 사이트는 고속 인터넷 연결을 보유하고 있습니다.

회사는 이러한 글로벌 사이트의 데이터를 **가능한 한 빨리 단일 Amazon S3 버킷으로 집계**하고자 합니다.
솔루션은 **운영 복잡성을 최소화**해야 합니다.

이 요구사항을 충족하는 솔루션은 무엇입니까?', 'A company collects data for temperature, humidity, and atmospheric pressure in cities across multiple continents. The average volume of data that the company collects from each site daily is 500 GB. Each site has a high-speed Internet connection.

The company wants to aggregate the data from all these global sites as quickly as possible in a single Amazon S3 bucket. The solution must minimize operational complexity.

Which solution meets these requirements?'),
  (2, '한 회사는 자체 애플리케이션의 로그 파일을 분석할 수 있는 기능이 필요합니다.
로그는 JSON 형식으로 Amazon S3 버킷에 저장되어 있습니다.
쿼리는 단순하며, 필요할 때(on-demand) 실행됩니다.

솔루션 설계자는 **기존 아키텍처를 최소한으로 변경**하면서 로그 분석을 수행해야 합니다.

이 요구사항을 **최소한의 운영 부담으로** 충족할 수 있는 방법은 무엇입니까?', 'A company needs the ability to analyze the log files of its proprietary application. The logs are stored in JSON format in an Amazon S3 bucket. Queries will be simple and will run on-demand. A solutions architect needs to perform the analysis with minimal changes to the existing architecture.
What should the solutions architect do to meet these requirements with the LEAST amount of operational overhead?'),
  (3, '한 회사는 부서별 여러 AWS 계정을 관리하기 위해 AWS Organizations를 사용하고 있습니다. 관리 계정에는 프로젝트 보고서를 저장하는 Amazon S3 버킷이 있습니다. 회사는 이 S3 버킷에 대한 액세스를 AWS Organizations 내 계정의 사용자로만 제한하려고 합니다.

다음 중 최소한의 운영 오버헤드로 이러한 요구 사항을 충족하는 솔루션은 무엇입니까?', 'A company uses AWS Organizations to manage multiple AWS accounts for different departments. The management account has an Amazon S3 bucket that contains project reports. The company wants to limit access to this S3 bucket to only users of accounts within the organization in AWS Organizations.
Which solution meets these requirements with the LEAST amount of operational overhead?'),
  (4, '한 애플리케이션이 VPC 내의 Amazon EC2 인스턴스에서 실행되고 있습니다.
이 애플리케이션은 Amazon S3 버킷에 저장된 로그를 처리해야 합니다.
EC2 인스턴스는 인터넷 연결 없이 S3 버킷에 접근해야 합니다.

다음 중 Amazon S3로의 **프라이빗 네트워크 연결**을 제공하는 솔루션은 무엇입니까?', 'An application runs on an Amazon EC2 instance in a VPC. The application processes logs that are stored in an Amazon S3 bucket. The EC2 instance needs to access the S3 bucket without connectivity to the internet.
Which solution will provide private network connectivity to Amazon S3?'),
  (5, '한 회사는 단일 Amazon EC2 인스턴스에서 웹 애플리케이션을 호스팅하고 있으며, 사용자가 업로드한 문서를 Amazon EBS 볼륨에 저장하고 있습니다.
확장성과 가용성을 높이기 위해, 회사는 아키텍처를 복제하여 다른 가용 영역(AZ)에 두 번째 EC2 인스턴스와 EBS 볼륨을 생성하고, 두 인스턴스를 모두 Application Load Balancer(ALB) 뒤에 배치했습니다.

변경 후, 사용자는 웹사이트를 새로 고칠 때마다 **문서의 일부 집합만 보이고 전체 문서를 한 번에 볼 수 없다**고 보고했습니다.

사용자가 항상 모든 문서를 볼 수 있도록 하기 위해 솔루션 아키텍트가 제안해야 하는 것은 무엇입니까?', 'A company is hosting a web application on AWS using a single Amazon EC2 instance that stores user-uploaded documents in an Amazon EBS volume. For better scalability and availability, the company duplicated the architecture and created a second EC2 instance and EBS volume in another Availability Zone, placing both behind an Application Load Balancer. After completing this change, users reported that, each time they refreshed the website, they could see one subset of their documents or the other, but never all of the documents at the same time.
What should a solutions architect propose to ensure users see all of their documents at once?'),
  (6, '한 회사는 NFS를 사용하여 온프레미스 네트워크 스토리지에 대용량 비디오 파일을 저장하고 있습니다.
각 비디오 파일의 크기는 1 MB에서 500 GB까지 다양하며, 총 저장 용량은 70 TB이고 더 이상 증가하지 않습니다.

회사는 비디오 파일을 Amazon S3로 **최대한 빠르게** 마이그레이션하면서 **최소한의 네트워크 대역폭**을 사용해야 합니다.

다음 중 이 요구 사항을 충족하는 솔루션은 무엇입니까?', 'A company uses NFS to store large video files in on-premises network attached storage. Each video file ranges in size from 1 MB to 500 GB. The total storage is 70 TB and is no longer growing. The company decides to migrate the video files to Amazon S3. The company must migrate the video files as soon as possible while using the least possible network bandwidth.
Which solution will meet these requirements?'),
  (7, '한 회사는 들어오는 메시지를 수집하는 애플리케이션을 가지고 있습니다.
수십 개의 다른 애플리케이션과 마이크로서비스가 이러한 메시지를 **빠르게 소비**합니다.
메시지 수는 크게 변동하며, 때때로 **초당 100,000개**까지 급증하기도 합니다.

회사는 솔루션을 **분리(decouple)**하고 **확장성**을 높이고자 합니다.

다음 중 이러한 요구 사항을 충족하는 솔루션은 무엇입니까?', 'A company has an application that ingests incoming messages. Dozens of other applications and microservices then quickly consume these messages. The number of messages varies drastically and sometimes increases suddenly to 100,000 each second. The company wants to decouple the solution and increase scalability.
Which solution meets these requirements?'),
  (8, '한 회사가 분산 애플리케이션을 AWS로 마이그레이션하고 있습니다.
애플리케이션은 **가변적인 워크로드**를 처리합니다.
기존 플랫폼은 **여러 컴퓨트 노드에 작업을 분배하는 주(primary) 서버**로 구성되어 있습니다.
회사는 애플리케이션을 **복원력과 확장성을 최대화하는 방식**으로 현대화하고자 합니다.

다음 중 이러한 요구 사항을 충족하도록 아키텍처를 설계하는 방법은 무엇입니까?', 'A company is migrating a distributed application to AWS. The application serves variable workloads. The legacy platform consists of a primary server that coordinates jobs across multiple compute nodes. The company wants to modernize the application with a solution that maximizes resiliency and scalability.
How should a solutions architect design the architecture to meet these requirements?'),
  (9, '한 회사가 데이터 센터에서 SMB 파일 서버를 운영하고 있습니다.
이 파일 서버는 **대용량 파일**을 저장하며, 생성 후 **처음 며칠간 자주 접근**됩니다.
7일 이후에는 파일 접근이 거의 없습니다.

총 데이터 크기는 계속 증가하여 회사의 **전체 저장 용량에 근접**하고 있습니다.

솔루션 아키텍트는 **가용 저장 공간을 늘리면서 최근 자주 접근된 파일에 대한 낮은 지연(latency) 접근을 유지**해야 합니다.
또한, **파일 라이프사이클 관리를 제공**하여 향후 저장 공간 문제를 방지해야 합니다.

다음 중 이러한 요구 사항을 충족하는 솔루션은 무엇입니까?', 'A company is running an SMB file server in its data center. The file server stores large files that are accessed frequently for the first few days after the files are created. After 7 days the files are rarely accessed.
The total data size is increasing and is close to the company''s total storage capacity. A solutions architect must increase the company''s available storage space without losing low-latency access to the most recently accessed files. The solutions architect must also provide file lifecycle management to avoid future storage issues.
Which solution will meet these requirements?'),
  (10, '한 회사가 AWS에서 전자상거래 웹 애플리케이션을 구축하고 있습니다.
애플리케이션은 **새 주문 정보를 처리하기 위해 Amazon API Gateway REST API**로 전송합니다.

회사는 **주문이 수신된 순서대로 처리되도록 보장**하고자 합니다.

다음 중 이러한 요구 사항을 충족하는 솔루션은 무엇입니까?', 'A company is building an ecommerce web application on AWS. The application sends information about new orders to an Amazon API Gateway REST API to process. The company wants to ensure that orders are processed in the order that they are received.
Which solution will meet these requirements?'),
  (11, '회사에는 Amazon EC2 인스턴스에서 실행되는 애플리케이션이 있으며 Amazon Aurora 데이터베이스를 사용합니다. EC2 인스턴스는 로컬 파일에 저장된 사용자 이름과 암호를 사용하여 데이터베이스에 연결합니다. 회사는 자격 증명 관리의 운영 오버헤드를 최소화하려고 합니다.
이 목표를 달성하기 위해 솔루션 아키텍트는 무엇을 해야 합니까?', 'A company has an application that runs on Amazon EC2 instances and uses an Amazon Aurora database. The EC2 instances connect to the database by using user names and passwords that are stored locally in a file. The company wants to minimize the operational overhead of credential management.
What should a solutions architect do to accomplish this goal?'),
  (12, '글로벌 회사가 Amazon EC2 인스턴스와 Application Load Balancer(ALB)를 사용하여 웹 애플리케이션을 호스팅하고 있습니다.
웹 애플리케이션에는 정적 데이터와 동적 데이터가 있습니다. 회사는 정적 데이터를 Amazon S3 버킷에 저장하고 있습니다.
회사는 정적 데이터와 동적 데이터 모두에 대해 성능을 향상시키고 지연 시간을 줄이고자 합니다.
또한 회사는 Amazon Route 53에 등록된 자체 도메인 이름을 사용하고 있습니다.

이러한 요구사항을 충족하기 위해 솔루션 아키텍트는 무엇을 해야 합니까?', 'A global company hosts its web application on Amazon EC2 instances behind an Application Load Balancer (ALB). The web application has static data and dynamic data. The company stores its static data in an Amazon S3 bucket. The company wants to improve performance and reduce latency for the static data and dynamic data. The company is using its own domain name registered with Amazon Route 53.
What should a solutions architect do to meet these requirements?'),
  (13, '한 회사는 AWS 인프라에서 월간 유지보수를 수행합니다. 이러한 유지보수 동안, 회사는 여러 AWS 리전에서 Amazon RDS for MySQL 데이터베이스의 자격 증명을 회전할 필요가 있습니다.
가장 적은 운영 오버헤드로 이 요구사항을 충족하는 솔루션은 무엇입니까?', 'A company performs monthly maintenance on its AWS infrastructure. During these maintenance activities, the company needs to rotate the credentials for its Amazon RDS for MySQL databases across multiple AWS Regions.
Which solution will meet these requirements with the LEAST operational overhead?'),
  (14, '한 회사는 Amazon EC2 인스턴스 뒤에 Application Load Balancer를 두고 전자상거래 애플리케이션을 운영합니다. 인스턴스는 여러 가용 영역에 걸쳐 있는 EC2 Auto Scaling 그룹에서 실행됩니다. Auto Scaling 그룹은 CPU 사용률 지표를 기준으로 확장됩니다.
전자상거래 애플리케이션은 MySQL 8.0 데이터베이스에 거래 데이터를 저장하며, 이 데이터베이스는 대형 EC2 인스턴스에서 호스팅됩니다.
애플리케이션 부하가 증가하면 데이터베이스 성능이 빠르게 저하됩니다. 애플리케이션은 쓰기보다는 읽기 요청이 많습니다.
회사는 예측할 수 없는 읽기 작업 부하를 처리하면서 **자동으로 데이터베이스를 확장**하고, **고가용성**을 유지하는 솔루션을 원합니다.', 'A company runs an ecommerce application on Amazon EC2 instances behind an Application Load Balancer. The instances run in an Amazon EC2 Auto Scaling group across multiple Availability Zones. The Auto Scaling group scales based on CPU utilization metrics. The ecommerce application stores the transaction data in a MySQL 8.0 database that is hosted on a large EC2 instance.
The database''s performance degrades quickly as application load increases. The application handles more read requests than write transactions. The company wants a solution that will automatically scale the database to meet the demand of unpredictable read workloads while maintaining high availability.
Which solution will meet these requirements?'),
  (15, '한 회사는 최근 AWS로 마이그레이션을 완료했으며, 프로덕션 VPC로 들어오고 나가는 트래픽을 보호하는 솔루션을 구현하고자 합니다.
이 회사는 온프레미스 데이터 센터에 검사 서버를 운영했었는데, 해당 서버는 트래픽 흐름 검사와 트래픽 필터링과 같은 특정 작업을 수행했습니다.
회사는 AWS 클라우드에서도 동일한 기능을 수행하고 싶어합니다.', 'A company recently migrated to AWS and wants to implement a solution to protect the traffic that flows in and out of the production VPC. The company had an inspection server in its on-premises data center. The inspection server performed specific operations such as traffic flow inspection and traffic filtering. The company wants to have the same functionalities in the AWS Cloud.
Which solution will meet these requirements?'),
  (16, '한 회사는 AWS에 데이터 레이크를 호스팅하고 있습니다. 데이터 레이크는 Amazon S3와 Amazon RDS for PostgreSQL에 저장된 데이터를 포함합니다.
회사는 **데이터 시각화 기능이 포함된 보고 솔루션**이 필요하며, 데이터 레이크 내 모든 데이터 소스를 포함해야 합니다.
회사의 경영진만 모든 시각화에 대한 **전체 액세스**를 갖고, 나머지 직원은 제한된 액세스만 갖도록 해야 합니다.', 'A company hosts a data lake on AWS. The data lake consists of data in Amazon S3 and Amazon RDS for PostgreSQL. The company needs a reporting solution that provides data visualization and includes all the data sources within the data lake. Only the company''s management team should have full access to all the visualizations. The rest of the company should have only limited access.
Which solution will meet these requirements?'),
  (17, '한 회사가 새로운 비즈니스 애플리케이션을 구현하고 있습니다.
애플리케이션은 두 개의 Amazon EC2 인스턴스에서 실행되며, 문서 저장을 위해 Amazon S3 버킷을 사용합니다.
솔루션 아키텍트는 EC2 인스턴스가 S3 버킷에 접근할 수 있도록 해야 합니다.', 'A company is implementing a new business application. The application runs on two Amazon EC2 instances and uses an Amazon S3 bucket for document storage. A solutions architect needs to ensure that the EC2 instances can access the S3 bucket.
What should the solutions architect do to meet this requirement?'),
  (18, '애플리케이션 개발팀은 대용량 이미지를 작은 크기의 압축 이미지로 변환하는 마이크로서비스를 설계하고 있습니다.
사용자가 웹 인터페이스를 통해 이미지를 업로드하면, 마이크로서비스는 이미지를 Amazon S3 버킷에 저장하고, AWS Lambda 함수로 처리 및 압축한 후 다른 S3 버킷에 압축된 이미지를 저장해야 합니다.
솔루션 아키텍트는 **내구성이 있으며 상태가 없는(stateless) 구성 요소**를 사용하여 이미지를 자동으로 처리하는 솔루션을 설계해야 합니다.
* 두 개 선택', 'An application development team is designing a microservice that will convert large images to smaller, compressed images. When a user uploads an image through the web interface, the microservice should store the image in an Amazon S3 bucket, process and compress the image with an AWS Lambda function, and store the image in its compressed form in a different S3 bucket.
A solutions architect needs to design a solution that uses durable, stateless components to process the images automatically.
Which combination of actions will meet these requirements? (Choose two.)'),
  (19, '한 회사는 AWS에 세 계층 웹 애플리케이션을 배포했습니다.
- 웹 서버: 퍼블릭 서브넷
- 애플리케이션 서버와 데이터베이스 서버: 프라이빗 서브넷
회사는 AWS Marketplace에서 제공되는 타사 가상 방화벽 어플라이언스를 검사 VPC에 배포했습니다.
어플라이언스는 IP 패킷을 수신할 수 있는 IP 인터페이스로 구성되어 있습니다.

솔루션 아키텍트는 **웹 서버에 도달하기 전에 모든 트래픽이 어플라이언스를 통해 검사되도록** 웹 애플리케이션을 통합해야 합니다.', 'A company has a three-tier web application that is deployed on AWS. The web servers are deployed in a public subnet in a VPC. The application servers and database servers are deployed in private subnets in the same VPC. The company has deployed a third-party virtual firewall appliance from AWS Marketplace in an inspection VPC. The appliance is configured with an IP interface that can accept IP packets.
A solutions architect needs to integrate the web application with the appliance to inspect all traffic to the application before the traffic reaches the web server.
Which solution will meet these requirements with the LEAST operational overhead?'),
  (20, '한 회사는 동일한 AWS 리전 내 테스트 환경으로 **대량의 프로덕션 데이터를 복제(clone)** 하고자 합니다.
데이터는 **Amazon EC2 인스턴스의 Amazon EBS 볼륨**에 저장되어 있습니다.
- 복제된 데이터의 수정은 프로덕션 환경에 영향을 주지 않아야 함
- 데이터를 접근하는 소프트웨어는 **일관되게 높은 I/O 성능** 필요

솔루션 아키텍트는 **프로덕션 데이터를 테스트 환경으로 복제하는 데 소요되는 시간을 최소화**해야 합니다.', 'A company wants to improve its ability to clone large amounts of production data into a test environment in the same AWS Region. The data is stored in Amazon EC2 instances on Amazon Elastic Block Store (Amazon EBS) volumes. Modifications to the cloned data must not affect the production environment. The software that accesses this data requires consistently high I/O performance.
A solutions architect needs to minimize the time that is required to clone the production data into the test environment.
Which solution will meet these requirements?'),
  (21, '한 전자상거래 회사는 AWS에서 **하루 한 제품만 판매하는 사이트**를 운영하려고 합니다.
- 매일 24시간 동안 정확히 한 제품 판매
- 최대 시간대에는 시간당 **수백만 건의 요청** 처리 필요
- 요청 지연(latency)은 **밀리초 단위**여야 함
- **운영 부담 최소화** 원함', 'An ecommerce company wants to launch a one-deal-a-day website on AWS. Each day will feature exactly one product on sale for a period of 24 hours. The company wants to be able to handle millions of requests each hour with millisecond latency during peak hours.

Which solution will meet these requirements with the LEAST operational overhead?'),
  (22, '한 솔루션 아키텍트가 새로운 디지털 미디어 애플리케이션을 위한 **스토리지 아키텍처**를 Amazon S3로 설계하려고 합니다.
- 미디어 파일은 **가용 영역(Availability Zone) 손실에도 내구성을 유지**해야 함
- 일부 파일은 자주 접근, 일부는 드물게 접근 (예측 불가)
- **저장 비용과 접근 비용**을 최소화해야 함', 'A solutions architect is using Amazon S3 to design the storage architecture of a new digital media application. The media files must be resilient to the loss of an Availability Zone. Some files are accessed frequently while other files are rarely accessed in an unpredictable pattern. The solutions architect must minimize the costs of storing and retrieving the media files.
Which storage option meets these requirements?'),
  (23, '한 회사가 Amazon S3 Standard 스토리지를 사용하여 백업 파일을 저장하고 있습니다.
파일은 1개월 동안 자주 접근됩니다. 그러나 파일은 1개월 이후에는 접근되지 않습니다.
회사는 파일을 무기한 보관해야 합니다.
어떤 스토리지 솔루션이 이러한 요구사항을 가장 비용 효율적으로 충족할 수 있습니까?', 'A company is storing backup files by using Amazon S3 Standard storage. The files are accessed frequently for 1 month. However, the files are not accessed after 1 month. The company must keep the files indefinitely.
Which storage solution will meet these requirements MOST cost-effectively?'),
  (24, '한 회사가 최근 청구서에서 Amazon EC2 비용 증가를 관찰했습니다.
청구팀은 몇 개의 EC2 인스턴스에서 **원치 않는 수직 확장(Vertical Scaling)**이 발생했음을 확인했습니다.
솔루션 아키텍트는 지난 2개월 동안의 EC2 비용을 비교하는 그래프를 만들고, **수직 확장의 근본 원인(root cause)**을 심층 분석해야 합니다.
솔루션 아키텍트가 **운영 부담을 최소화**하면서 이 정보를 생성하려면 어떻게 해야 합니까?', 'A company observes an increase in Amazon EC2 costs in its most recent bill. The billing team notices unwanted vertical scaling of instance types for a couple of EC2 instances. A solutions architect needs to create a graph comparing the last 2 months of EC2 costs and perform an in-depth analysis to identify the root cause of the vertical scaling.
How should the solutions architect generate the information with the LEAST operational overhead?'),
  (25, '한 회사가 애플리케이션을 설계하고 있습니다.
애플리케이션은 AWS Lambda 함수를 사용하여 Amazon API Gateway를 통해 정보를 받고, Amazon Aurora PostgreSQL 데이터베이스에 정보를 저장합니다.

POC(개념 검증) 단계에서, 회사는 데이터베이스로 로드해야 하는 **대량 데이터 처리**를 위해 Lambda 할당량(quotas)을 크게 증가시켜야 했습니다.
솔루션 아키텍트는 **확장성을 개선하고 구성 작업을 최소화**할 새로운 설계를 추천해야 합니다.', 'A company is designing an application. The application uses an AWS Lambda function to receive information through Amazon API Gateway and to store the information in an Amazon Aurora PostgreSQL database.
During the proof-of-concept stage, the company has to increase the Lambda quotas significantly to handle the high volumes of data that the company needs to load into the database. A solutions architect must recommend a new design to improve scalability and minimize the configuration effort.
Which solution will meet these requirements?'),
  (26, '한 회사가 AWS Cloud 배포를 검토하여 Amazon S3 버킷에 **승인되지 않은 구성 변경**이 없는지 확인해야 합니다.
솔루션 아키텍트는 이 목표를 달성하기 위해 무엇을 해야 합니까?', 'A company needs to review its AWS Cloud deployment to ensure that its Amazon S3 buckets do not have unauthorized configuration changes.
What should a solutions architect do to accomplish this goal?'),
  (27, '한 회사가 새로운 애플리케이션을 출시하며, 애플리케이션 지표를 Amazon CloudWatch 대시보드에 표시하려고 합니다.
제품 관리자는 주기적으로 이 대시보드에 접근해야 합니다. 제품 관리자는 AWS 계정을 가지고 있지 않습니다.
솔루션 아키텍트는 최소 권한 원칙(Principle of Least Privilege)을 준수하면서 제품 관리자에게 접근 권한을 제공해야 합니다.', 'A company is launching a new application and will display application metrics on an Amazon CloudWatch dashboard. The company''s product manager needs to access this dashboard periodically. The product manager does not have an AWS account. A solutions architect must provide access to the product manager by following the principle of least privilege.
Which solution will meet these requirements?'),
  (28, '한 회사가 애플리케이션을 AWS로 마이그레이션하고 있습니다. 애플리케이션은 서로 다른 AWS 계정에 배포되어 있습니다.
회사는 AWS Organizations를 사용하여 계정을 중앙에서 관리합니다.
회사의 보안 팀은 모든 AWS 계정에서 단일 로그인(SSO) 솔루션이 필요합니다.
회사는 온프레미스에서 자체 관리되는 Microsoft Active Directory에서 사용자와 그룹을 계속 관리해야 합니다.
어떤 솔루션이 이러한 요구사항을 충족할 수 있을까요?', 'A company is migrating applications to AWS. The applications are deployed in different accounts. The company manages the accounts centrally by using AWS Organizations. The company''s security team needs a single sign-on (SSO) solution across all the company''s accounts. The company must continue managing the users and groups in its on-premises self-managed Microsoft Active Directory.
Which solution will meet these requirements?'),
  (29, '한 회사가 UDP 연결을 사용하는 VoIP(Voice over Internet Protocol) 서비스를 제공합니다.
이 서비스는 Auto Scaling 그룹에서 실행되는 Amazon EC2 인스턴스로 구성됩니다.
회사는 여러 AWS 리전에 배포를 하고 있습니다.

회사는 사용자를 **지연(latency)이 가장 낮은 리전으로 라우팅**해야 합니다.
또한, 리전 간 자동 장애 조치(failover)가 필요합니다.
어떤 솔루션이 이러한 요구사항을 충족할 수 있을까요?', 'A company provides a Voice over Internet Protocol (VoIP) service that uses UDP connections. The service consists of Amazon EC2 instances that run in an Auto Scaling group. The company has deployments across multiple AWS Regions.
The company needs to route users to the Region with the lowest latency. The company also needs automated failover between Regions.
Which solution will meet these requirements?'),
  (30, '한 개발팀이 매월 48시간 동안 리소스를 많이 사용하는 테스트를 일반 목적 Amazon RDS for MySQL DB 인스턴스에서 실행하며, Performance Insights를 활성화합니다. 이 테스트는 매월 한 번 실행되며 데이터베이스를 사용하는 유일한 프로세스입니다. 팀은 DB 인스턴스의 컴퓨팅 및 메모리 사양을 줄이지 않고 테스트 실행 비용을 절감하고자 합니다.
어떤 솔루션이 가장 비용 효율적으로 이 요구사항을 충족할 수 있습니까?', 'A development team runs monthly resource-intensive tests on its general purpose Amazon RDS for MySQL DB instance with Performance Insights enabled. The testing lasts for 48 hours once a month and is the only process that uses the database. The team wants to reduce the cost of running the tests without reducing the compute and memory attributes of the DB instance.
Which solution meets these requirements MOST cost-effectively?'),
  (31, '한 회사가 AWS에서 웹 애플리케이션을 호스팅하고 있으며, 모든 Amazon EC2 인스턴스, Amazon RDS DB 인스턴스 및 Amazon Redshift 클러스터가 태그로 구성되었는지 확인하고자 합니다. 회사는 이 검사를 구성하고 운영하는 데 드는 노력을 최소화하고자 합니다.
솔루션 아키텍트는 이 목표를 어떻게 달성해야 합니까?', 'A company that hosts its web application on AWS wants to ensure all Amazon EC2 instances. Amazon RDS DB instances. and Amazon Redshift clusters are configured with tags. The company wants to minimize the effort of configuring and operating this check.
What should a solutions architect do to accomplish this?'),
  (32, '한 개발팀이 다른 팀이 접근할 수 있는 웹사이트를 호스팅해야 합니다. 웹사이트 콘텐츠는 HTML, CSS, 클라이언트 측 JavaScript, 이미지로 구성되어 있습니다.
이 웹사이트를 호스팅하는 가장 비용 효율적인 방법은 무엇입니까?', 'A development team needs to host a website that will be accessed by other teams. The website contents consist of HTML, CSS, client-side JavaScript, and images.
Which method is the MOST cost-effective for hosting the website?'),
  (33, '한 회사가 AWS에서 온라인 마켓플레이스 웹 애플리케이션을 운영하고 있습니다. 이 애플리케이션은 피크 시간 동안 수십만 명의 사용자에게 서비스를 제공합니다. 회사는 수백만 건의 금융 거래 세부 정보를 여러 내부 애플리케이션과 공유하기 위한 확장 가능하고 거의 실시간에 가까운 솔루션이 필요합니다. 또한 거래는 문서 데이터베이스에 저장되기 전에 민감한 데이터를 제거하도록 처리되어야 하며, 문서 데이터베이스는 저지연 검색을 지원해야 합니다.
솔루션 설계자가 이러한 요구 사항을 충족하기 위해 무엇을 권장해야 합니까?', 'A company runs an online marketplace web application on AWS. The application serves hundreds of thousands of users during peak hours. The company needs a scalable, near-real-time solution to share the details of millions of financial transactions with several other internal applications. Transactions also need to be processed to remove sensitive data before being stored in a document database for low-latency retrieval.
What should a solutions architect recommend to meet these requirements?'),
  (34, '한 회사가 AWS에서 다계층(Multi-tier) 애플리케이션을 호스팅하고 있습니다.
컴플라이언스, 거버넌스, 감사(auditing), 보안을 위해, 회사는 AWS 리소스의 구성(Configuration) 변경 사항을 추적하고, 이러한 리소스에 대한 API 호출 기록을 저장해야 합니다.

솔루션 설계자가 이러한 요구 사항을 충족하기 위해 무엇을 해야 합니까?', 'A company hosts its multi-tier applications on AWS. For compliance, governance, auditing, and security, the company must track configuration changes on its AWS resources and record a history of API calls made to these resources.
What should a solutions architect do to meet these requirements?'),
  (35, '한 회사가 AWS 클라우드에서 공개 웹 애플리케이션을 출시할 준비를 하고 있습니다.
아키텍처는 VPC 내 Amazon EC2 인스턴스와 그 뒤의 Elastic Load Balancer(ELB)로 구성되어 있습니다.
DNS는 서드파티 서비스를 사용합니다.
회사의 솔루션 설계자는 대규모 DDoS 공격을 감지하고 방어할 수 있는 솔루션을 권장해야 합니다.

어떤 솔루션이 이러한 요구사항을 충족합니까?', 'A company is preparing to launch a public-facing web application in the AWS Cloud. The architecture consists of Amazon EC2 instances within a VPC behind an Elastic Load Balancer (ELB). A third-party service is used for the DNS. The company''s solutions architect must recommend a solution to detect and protect against large-scale DDoS attacks.
Which solution meets these requirements?'),
  (36, '한 회사가 AWS 클라우드에서 애플리케이션을 구축하고 있습니다.
이 애플리케이션은 두 개의 AWS 리전의 Amazon S3 버킷에 데이터를 저장할 예정입니다.
회사는 모든 S3 버킷에 저장되는 데이터를 암호화하기 위해 **AWS Key Management Service(AWS KMS) 고객 관리 키(CMK)**를 사용해야 합니다.
두 S3 버킷의 데이터는 **같은 KMS 키**로 암호화 및 복호화되어야 합니다.
데이터와 키는 두 리전 각각에 저장되어야 합니다.

운영 부담을 최소화하면서 이 요구사항을 충족할 수 있는 솔루션은 무엇입니까?', 'A company is building an application in the AWS Cloud. The application will store data in Amazon S3 buckets in two AWS Regions. The company must use an AWS Key Management Service (AWS KMS) customer managed key to encrypt all data that is stored in the S3 buckets. The data in both S3 buckets must be encrypted and decrypted with the same KMS key. The data and the key must be stored in each of the two Regions.
Which solution will meet these requirements with the LEAST operational overhead?'),
  (37, '한 회사가 최근 AWS 계정에서 Amazon EC2 인스턴스에 다양한 신규 워크로드를 출시했습니다.
회사는 인스턴스에 원격으로 안전하게 접근하고 관리할 수 있는 전략을 수립해야 합니다.
또한, **AWS 네이티브 서비스**를 사용하고 **AWS Well-Architected Framework**를 준수하며 반복 가능한 프로세스를 구현해야 합니다.

이 요구사항을 최소한의 운영 부담으로 충족할 수 있는 솔루션은 무엇입니까?', 'A company recently launched a variety of new workloads on Amazon EC2 instances in its AWS account. The company needs to create a strategy to access and administer the instances remotely and securely. The company needs to implement a repeatable process that works with native AWS services and follows the AWS Well-Architected Framework.
Which solution will meet these requirements with the LEAST operational overhead?'),
  (38, '한 회사가 Amazon S3에서 정적 웹사이트를 호스팅하고 있으며, Amazon Route 53을 DNS로 사용하고 있습니다.
웹사이트에 전 세계적으로 증가하는 트래픽이 발생하고 있습니다.
회사는 웹사이트에 접근하는 사용자에 대한 **지연 시간(latency)을 줄여야** 합니다.

어떤 솔루션이 이러한 요구사항을 **가장 비용 효율적으로** 충족합니까?', 'A company is hosting a static website on Amazon S3 and is using Amazon Route 53 for DNS. The website is experiencing increased demand from around the world. The company must decrease latency for users who access the website.
Which solution meets these requirements MOST cost-effectively?'),
  (39, '한 회사가 웹사이트에서 항목을 검색할 수 있는 저장소를 운영하고 있습니다.
데이터는 Amazon RDS for MySQL 데이터베이스 테이블에 저장되어 있으며, 1천만 개 이상의 행이 있습니다.
데이터베이스는 2TB의 General Purpose SSD 스토리지를 사용하고 있습니다.
회사의 웹사이트를 통해 매일 수백만 건의 데이터 업데이트가 발생합니다.

회사는 일부 삽입(insert) 작업이 10초 이상 걸리는 것을 확인했습니다.
분석 결과, **데이터베이스 스토리지 성능**이 문제임을 확인했습니다.

이 성능 문제를 해결할 수 있는 솔루션은 무엇입니까?', 'A company maintains a searchable repository of items on its website. The data is stored in an Amazon RDS for MySQL database table that contains more than 10 million rows. The database has 2 TB of General Purpose SSD storage. There are millions of updates against this data every day through the company''s website.
The company has noticed that some insert operations are taking 10 seconds or longer. The company has determined that the database storage performance is the problem.
Which solution addresses this performance issue?'),
  (40, '한 회사는 수천 개의 엣지 디바이스를 운영하며, 이 디바이스들이 매일 1TB의 상태 알림(status alerts)을 생성합니다.
각 알림의 크기는 약 2KB입니다.

솔루션 설계자는 알림을 수집하고 향후 분석을 위해 저장할 수 있는 솔루션을 구현해야 합니다.

요구사항:
- 고가용성 솔루션
- 비용 최소화
- 추가 인프라 관리 불필요
- 데이터는 **14일간 즉시 분석 가능**
- 14일이 지난 데이터는 **아카이브**

이 요구사항을 가장 운영 효율적으로 충족하는 솔루션은 무엇입니까?', 'A company has thousands of edge devices that collectively generate 1 TB of status alerts each day. Each alert is approximately 2 KB in size. A solutions architect needs to implement a solution to ingest and store the alerts for future analysis.
The company wants a highly available solution. However, the company needs to minimize costs and does not want to manage additional infrastructure. Additionally, the company wants to keep 14 days of data available for immediate analysis and archive any data older than 14 days.
What is the MOST operationally efficient solution that meets these requirements?');

INSERT INTO choice (id, question_id, text_kr, text_en) VALUES
  (1, 1, '대상 S3 버킷에서 **S3 Transfer Acceleration**을 활성화합니다. 멀티파트 업로드를 사용하여 각 사이트에서 대상 S3 버킷으로 직접 데이터를 업로드합니다.', 'Turn on S3 Transfer Acceleration on the destination S3 bucket. Use multipart uploads to directly upload site data to the destination S3 bucket.'),
  (2, 1, '각 사이트에서 데이터를 가장 가까운 리전의 S3 버킷으로 업로드합니다. **S3 크로스 리전 복제(CRR)**를 사용하여 객체를 대상 S3 버킷으로 복사합니다. 그런 다음 원본 S3 버킷의 데이터를 삭제합니다.', 'Upload the data from each site to an S3 bucket in the closest Region. Use S3 Cross-Region Replication to copy objects to the destination S3 bucket. Then remove the data from the origin S3 bucket.'),
  (3, 1, '매일 **AWS Snowball Edge Storage Optimized** 장치를 사용하여 각 사이트에서 가장 가까운 리전으로 데이터를 전송합니다. S3 크로스 리전 복제를 사용하여 객체를 대상 S3 버킷으로 복사합니다.', 'Schedule AWS Snowball Edge Storage Optimized device jobs daily to transfer data from each site to the closest Region. Use S3 Cross-Region Replication to copy objects to the destination S3 bucket.'),
  (4, 1, '각 사이트에서 데이터를 가장 가까운 리전의 Amazon EC2 인스턴스로 업로드합니다. 데이터를 Amazon EBS 볼륨에 저장합니다. 정기적으로 EBS 스냅샷을 생성하고 대상 S3 버킷이 있는 리전으로 복사합니다. 해당 리전에서 EBS 볼륨을 복원합니다.', 'Upload the data from each site to an Amazon EC2 instance in the closest Region. Store the data in an Amazon Elastic Block Store (Amazon EBS) volume. At regular intervals, take an EBS snapshot and copy it to the Region that contains the destination S3 bucket. Restore the EBS volume in that Region.'),
  (5, 2, 'Amazon Redshift를 사용하여 모든 내용을 한 곳에 로드하고, 필요할 때 SQL 쿼리를 실행합니다.', 'Use Amazon Redshift to load all the content into one place and run the SQL queries as needed.'),
  (6, 2, 'Amazon CloudWatch Logs에 로그를 저장하고, Amazon CloudWatch 콘솔에서 필요할 때 SQL 쿼리를 실행합니다.', 'Use Amazon CloudWatch Logs to store the logs. Run SQL queries as needed from the Amazon CloudWatch console.'),
  (7, 2, 'Amazon Athena를 Amazon S3와 직접 사용하여 필요할 때 쿼리를 실행합니다.', 'Use Amazon Athena directly with Amazon S3 to run the queries as needed.'),
  (8, 2, 'AWS Glue를 사용하여 로그를 카탈로그화하고, Amazon EMR에서 임시 Apache Spark 클러스터를 사용하여 필요할 때 SQL 쿼리를 실행합니다.', 'Use AWS Glue to catalog the logs. Use a transient Apache Spark cluster on Amazon EMR to run the SQL queries as needed.'),
  (9, 3, 'S3 버킷 정책에 조직 ID를 참조하는 aws:PrincipalOrgID 글로벌 조건 키를 추가한다.', 'Add the aws PrincipalOrgID global condition key with a reference to the organization ID to the S3 bucket policy.'),
  (10, 3, '각 부서별로 조직 단위(OU)를 생성한다. S3 버킷 정책에 aws:PrincipalOrgPaths 글로벌 조건 키를 추가한다.', 'Create an organizational unit (OU) for each department. Add the aws:PrincipalOrgPaths global condition key to the S3 bucket policy.'),
  (11, 3, 'AWS CloudTrail을 사용하여 CreateAccount, InviteAccountToOrganization, LeaveOrganization, RemoveAccountFromOrganization 이벤트를 모니터링한다. 그리고 S3 버킷 정책을 해당 이벤트에 맞게 업데이트한다.', 'Use AWS CloudTrail to monitor the CreateAccount, InviteAccountToOrganization, LeaveOrganization, and RemoveAccountFromOrganization events. Update the S3 bucket policy accordingly.'),
  (12, 3, 'S3 버킷에 액세스가 필요한 각 사용자에게 태그를 추가한다. 그리고 S3 버킷 정책에 aws:PrincipalTag 글로벌 조건 키를 추가한다.', 'Tag each user that needs access to the S3 bucket. Add the aws:PrincipalTag global condition key to the S3 bucket policy.'),
  (13, 4, 'S3 버킷에 대한 게이트웨이 VPC 엔드포인트를 생성한다.', 'Create a gateway VPC endpoint to the S3 bucket.'),
  (14, 4, '로그를 Amazon CloudWatch Logs로 스트리밍한 후 S3 버킷으로 내보낸다.', 'Stream the logs to Amazon CloudWatch Logs. Export the logs to the S3 bucket.'),
  (15, 4, 'EC2 인스턴스에 인스턴스 프로파일을 생성하여 S3 액세스를 허용한다.', 'Create an instance profile on Amazon EC2 to allow S3 access.'),
  (16, 4, 'S3 엔드포인트에 접근하기 위해 프라이빗 링크가 연결된 Amazon API Gateway API를 생성한다.', 'Create an Amazon API Gateway API with a private link to access the S3 endpoint.'),
  (17, 5, '데이터를 복사하여 두 EBS 볼륨에 모든 문서를 포함시킨다.', 'Copy the data so both EBS volumes contain all the documents'),
  (18, 5, 'Application Load Balancer를 구성하여 사용자를 문서가 있는 서버로 직접 연결한다.', 'Configure the Application Load Balancer to direct a user to the server with the documents'),
  (19, 5, '두 EBS 볼륨의 데이터를 Amazon EFS로 복사한다. 애플리케이션을 수정하여 새 문서를 Amazon EFS에 저장하도록 한다.', 'Copy the data from both EBS volumes to Amazon EFS. Modify the application to save new documents to Amazon EFS'),
  (20, 5, 'Application Load Balancer를 구성하여 요청을 두 서버 모두로 보낸다. 각 문서를 올바른 서버에서 반환한다.', 'Configure the Application Load Balancer to send the request to both servers. Return each document from the correct server'),
  (21, 6, 'S3 버킷을 생성하고, 해당 버킷에 쓰기 권한이 있는 IAM 역할을 생성합니다. AWS CLI를 사용하여 모든 파일을 로컬에서 S3 버킷으로 복사합니다.', 'Create an S3 bucket. Create an IAM role that has permissions to write to the S3 bucket. Use the AWS CLI to copy all files locally to the S3 bucket.'),
  (22, 6, 'AWS Snowball Edge 작업을 생성합니다. 온프레미스에서 Snowball Edge 장치를 수령하고, Snowball Edge 클라이언트를 사용하여 데이터를 장치로 전송합니다. 장치를 반환하면 AWS가 데이터를 Amazon S3로 가져옵니다.', 'Create an AWS Snowball Edge job. Receive a Snowball Edge device on premises. Use the Snowball Edge client to transfer data to the device. Return the device so that AWS can import the data into Amazon S3.'),
  (23, 6, '온프레미스에 S3 File Gateway를 배포합니다. S3 File Gateway에 연결할 공개 서비스 엔드포인트를 생성합니다. S3 버킷을 생성합니다. S3 File Gateway에서 새 NFS 파일 공유를 생성하고, 이를 S3 버킷에 연결합니다. 기존 NFS 파일 공유의 데이터를 S3 File Gateway로 전송합니다.', 'Deploy an S3 File Gateway on premises. Create a public service endpoint to connect to the S3 File Gateway. Create an S3 bucket. Create a new NFS file share on the S3 File Gateway. Point the new file share to the S3 bucket. Transfer the data from the existing NFS file share to the S3 File Gateway.'),
  (24, 6, '온프레미스 네트워크와 AWS 간에 AWS Direct Connect 연결을 설정합니다. 온프레미스에 S3 File Gateway를 배포합니다. S3 File Gateway에 연결할 공개 가상 인터페이스(VIF)를 생성합니다. S3 버킷을 생성합니다. S3 File Gateway에서 새 NFS 파일 공유를 생성하고, 이를 S3 버킷에 연결합니다. 기존 NFS 파일 공유의 데이터를 S3 File Gateway로 전송합니다.', 'Set up an AWS Direct Connect connection between the on-premises network and AWS. Deploy an S3 File Gateway on premises. Create a public virtual interface (VIF) to connect to the S3 File Gateway. Create an S3 bucket. Create a new NFS file share on the S3 File Gateway. Point the new file share to the S3 bucket. Transfer the data from the existing NFS file share to the S3 File Gateway.'),
  (25, 7, '메시지를 Amazon Kinesis Data Analytics에 저장합니다. 소비자 애플리케이션이 메시지를 읽고 처리하도록 구성합니다.', 'Persist the messages to Amazon Kinesis Data Analytics. Configure the consumer applications to read and process the messages.'),
  (26, 7, '수집 애플리케이션을 Auto Scaling 그룹에 있는 Amazon EC2 인스턴스에 배포하고, CPU 지표에 따라 EC2 인스턴스 수를 조절합니다.', 'Deploy the ingestion application on Amazon EC2 instances in an Auto Scaling group to scale the number of EC2 instances based on CPU metrics.'),
  (27, 7, '메시지를 단일 샤드가 있는 Amazon Kinesis Data Streams에 작성합니다. AWS Lambda 함수를 사용하여 메시지를 전처리하고 Amazon DynamoDB에 저장합니다. 소비자 애플리케이션이 DynamoDB에서 메시지를 읽고 처리하도록 구성합니다.', 'Write the messages to Amazon Kinesis Data Streams with a single shard. Use an AWS Lambda function to preprocess messages and store them in Amazon DynamoDB. Configure the consumer applications to read from DynamoDB to process the messages.'),
  (28, 7, '메시지를 Amazon SNS 주제로 게시하고, 여러 Amazon SQS 구독을 연결합니다. 소비자 애플리케이션이 큐에서 메시지를 처리하도록 구성합니다.', 'Publish the messages to an Amazon Simple Notification Service (Amazon SNS) topic with multiple Amazon Simple Queue Service (Amazon SOS) subscriptions. Configure the consumer applications to process the messages from the queues.'),
  (29, 8, '작업 대상(job destination)으로 Amazon SQS 큐를 구성합니다.
컴퓨트 노드를 Auto Scaling 그룹으로 관리되는 EC2 인스턴스로 구현합니다.
EC2 Auto Scaling을 스케줄링 기반으로 구성합니다.', 'Configure an Amazon Simple Queue Service (Amazon SQS) queue as a destination for the jobs. Implement the compute nodes with Amazon EC2 instances that are managed in an Auto Scaling group. Configure EC2 Auto Scaling to use scheduled scaling.'),
  (30, 8, '작업 대상(job destination)으로 Amazon SQS 큐를 구성합니다.
컴퓨트 노드를 Auto Scaling 그룹으로 관리되는 EC2 인스턴스로 구현합니다.
EC2 Auto Scaling을 큐의 크기를 기준으로 구성합니다.', 'Configure an Amazon Simple Queue Service (Amazon SQS) queue as a destination for the jobs. Implement the compute nodes with Amazon EC2 instances that are managed in an Auto Scaling group. Configure EC2 Auto Scaling based on the size of the queue.'),
  (31, 8, '주 서버(primary server)와 컴퓨트 노드를 Auto Scaling 그룹으로 관리되는 EC2 인스턴스로 구현합니다.
작업 대상(job destination)으로 AWS CloudTrail을 구성합니다.
EC2 Auto Scaling을 주 서버의 로드를 기준으로 구성합니다.', 'Implement the primary server and the compute nodes with Amazon EC2 instances that are managed in an Auto Scaling group. Configure AWS CloudTrail as a destination for the jobs. Configure EC2 Auto Scaling based on the load on the primary server.'),
  (32, 8, '주 서버(primary server)와 컴퓨트 노드를 Auto Scaling 그룹으로 관리되는 EC2 인스턴스로 구현합니다.
작업 대상(job destination)으로 Amazon EventBridge를 구성합니다.
EC2 Auto Scaling을 컴퓨트 노드의 로드를 기준으로 구성합니다.', 'Implement the primary server and the compute nodes with Amazon EC2 instances that are managed in an Auto Scaling group. Configure Amazon EventBridge (Amazon CloudWatch Events) as a destination for the jobs. Configure EC2 Auto Scaling based on the load on the compute nodes.'),
  (33, 9, 'AWS DataSync를 사용하여 SMB 파일 서버에서 7일 이상 된 데이터를 AWS로 복사합니다.', 'Use AWS DataSync to copy data that is older than 7 days from the SMB file server to AWS.'),
  (34, 9, 'Amazon S3 File Gateway를 생성하여 회사의 저장 공간을 확장합니다. S3 Lifecycle 정책을 만들어 데이터를 7일 후 S3 Glacier Deep Archive로 전환합니다.', 'Create an Amazon S3 File Gateway to extend the company''s storage space. Create an S3 Lifecycle policy to transition the data to S3 Glacier Deep Archive after 7 days.'),
  (35, 9, 'Amazon FSx for Windows File Server 파일 시스템을 생성하여 회사의 저장 공간을 확장합니다.', 'Create an Amazon FSx for Windows File Server file system to extend the company''s storage space.'),
  (36, 9, '각 사용자 컴퓨터에 유틸리티를 설치하여 Amazon S3에 접근합니다. S3 Lifecycle 정책을 만들어 데이터를 7일 후 S3 Glacier Flexible Retrieval로 전환합니다.', 'Install a utility on each user''s computer to access Amazon S3. Create an S3 Lifecycle policy to transition the data to S3 Glacier Flexible Retrieval after 7 days.'),
  (37, 10, '애플리케이션이 주문을 수신할 때, API Gateway 통합을 사용하여 Amazon SNS 주제로 메시지를 게시합니다.
주제에 AWS Lambda 함수를 구독시켜 처리하도록 구성합니다.', 'Use an API Gateway integration to publish a message to an Amazon Simple Notification Service (Amazon SNS) topic when the application receives an order. Subscribe an AWS Lambda function to the topic to perform processing.'),
  (38, 10, '애플리케이션이 주문을 수신할 때, API Gateway 통합을 사용하여 Amazon SQS **FIFO 큐**에 메시지를 전송합니다.
SQS FIFO 큐를 구성하여 AWS Lambda 함수를 호출하도록 설정합니다.', 'Use an API Gateway integration to send a message to an Amazon Simple Queue Service (Amazon SQS) FIFO queue when the application receives an order. Configure the SQS FIFO queue to invoke an AWS Lambda function for processing.'),
  (39, 10, 'API Gateway 인증자를 사용하여 애플리케이션이 주문을 처리하는 동안 모든 요청을 차단합니다.', 'Use an API Gateway authorizer to block any requests while the application processes an order.'),
  (40, 10, '애플리케이션이 주문을 수신할 때, API Gateway 통합을 사용하여 Amazon SQS **Standard 큐**에 메시지를 전송합니다.
SQS Standard 큐를 구성하여 AWS Lambda 함수를 호출하도록 설정합니다.', 'Use an API Gateway integration to send a message to an Amazon Simple Queue Service (Amazon SQS) standard queue when the application receives an order. Configure the SQS standard queue to invoke an AWS Lambda function for processing.'),
  (41, 11, 'AWS Secrets Manager를 사용합니다. 자동 로테이션을 켭니다.', 'Use AWS Secrets Manager. Turn on automatic rotation.'),
  (42, 11, 'AWS Systems Manager Parameter Store를 사용합니다. 자동 로테이션을 켭니다.', 'Use AWS Systems Manager Parameter Store. Turn on automatic rotation.'),
  (43, 11, 'AWS Key Management Service(AWS KMS)로 암호화된 객체를 저장할 Amazon S3 버킷을 생성합니다. 자격 증명 파일을 S3로 마이그레이션합니다. 애플리케이션이 S3 버킷을 가리키도록 합니다.', 'Create an Amazon S3 bucket to store objects that are encrypted with an AWS Key Management Service (AWS KMS) encryption key. Migrate the credential file to the S3 bucket. Point the application to the S3 bucket.'),
  (44, 11, '각 EC2 인스턴스에 대해 암호화된 Amazon EBS 볼륨을 생성합니다. 각 EC2 인스턴스에 새 EBS 볼륨을 연결합니다. 자격 증명 파일을 새 EBS 볼륨으로 마이그레이션합니다. 애플리케이션이 새 EBS 볼륨을 가리키도록 합니다.', 'Create an encrypted Amazon Elastic Block Store (Amazon EBS) volume for each EC2 instance. Attach the new EBS volume to each EC2 instance. Migrate the credential file to the new EBS volume. Point the application to the new EBS volume.'),
  (45, 12, 'S3 버킷과 ALB를 오리진으로 갖는 Amazon CloudFront 배포를 생성합니다. Route 53을 구성하여 CloudFront 배포로 트래픽을 라우팅합니다.', 'Create an Amazon CloudFront distribution that has the S3 bucket and the ALB as origins. Configure Route 53 to route traffic to the CloudFront distribution.'),
  (46, 12, 'ALB를 오리진으로 갖는 Amazon CloudFront 배포를 생성합니다. S3 버킷을 엔드포인트로 갖는 AWS Global Accelerator 표준 가속기를 생성합니다. Route 53을 구성하여 CloudFront 배포로 트래픽을 라우팅합니다.', 'Create an Amazon CloudFront distribution that has the ALB as an origin. Create an AWS Global Accelerator standard accelerator that has the S3 bucket as an endpoint Configure Route 53 to route traffic to the CloudFront distribution.'),
  (47, 12, 'S3 버킷을 오리진으로 갖는 Amazon CloudFront 배포를 생성합니다. ALB와 CloudFront 배포를 엔드포인트로 갖는 AWS Global Accelerator 표준 가속기를 생성합니다. 커스텀 도메인 이름을 생성하여 가속기 DNS 이름을 가리키게 합니다. 해당 커스텀 도메인을 웹 애플리케이션의 엔드포인트로 사용합니다.', 'Create an Amazon CloudFront distribution that has the S3 bucket as an origin. Create an AWS Global Accelerator standard accelerator that has the ALB and the CloudFront distribution as endpoints. Create a custom domain name that points to the accelerator DNS name. Use the custom domain name as an endpoint for the web application.'),
  (48, 12, 'ALB를 오리진으로 갖는 Amazon CloudFront 배포를 생성합니다. S3 버킷을 엔드포인트로 갖는 AWS Global Accelerator 표준 가속기를 생성합니다. 두 개의 도메인 이름을 생성합니다. 하나는 CloudFront DNS 이름(동적 콘텐츠용), 다른 하나는 가속기 DNS 이름(정적 콘텐츠용)을 가리키게 합니다. 두 도메인 이름을 웹 애플리케이션 엔드포인트로 사용합니다.', 'Create an Amazon CloudFront distribution that has the ALB as an origin. Create an AWS Global Accelerator standard accelerator that has the S3 bucket as an endpoint. Create two domain names. Point one domain name to the CloudFront DNS name for dynamic content. Point the other domain name to the accelerator DNS name for static content. Use the domain names as endpoints for the web application.'),
  (49, 13, 'AWS Secrets Manager에 자격 증명을 비밀로 저장합니다. 필요한 리전에 대해 다중 리전 비밀 복제를 사용합니다. Secrets Manager가 일정에 따라 비밀을 회전하도록 구성합니다.', 'Store the credentials as secrets in AWS Secrets Manager. Use multi-Region secret replication for the required Regions. Configure Secrets Manager to rotate the secrets on a schedule.'),
  (50, 13, 'AWS Systems Manager에 보안 문자열 매개변수를 생성하여 자격 증명을 저장합니다. 필요한 리전에 대해 다중 리전 비밀 복제를 사용합니다. Systems Manager가 일정에 따라 비밀을 회전하도록 구성합니다.', 'Store the credentials as secrets in AWS Systems Manager by creating a secure string parameter. Use multi-Region secret replication for the required Regions. Configure Systems Manager to rotate the secrets on a schedule.'),
  (51, 13, '서버 측 암호화(SSE)가 활성화된 Amazon S3 버킷에 자격 증명을 저장합니다. Amazon EventBridge(Amazon CloudWatch Events)를 사용하여 AWS Lambda 함수를 호출하여 자격 증명을 회전합니다.', 'Store the credentials in an Amazon S3 bucket that has server-side encryption (SSE) enabled. Use Amazon EventBridge (Amazon CloudWatch Events) to invoke an AWS Lambda function to rotate the credentials.'),
  (52, 13, 'AWS Key Management Service(AWS KMS) 다중 리전 고객 관리 키를 사용하여 자격 증명을 암호화합니다. Amazon DynamoDB 글로벌 테이블에 비밀을 저장합니다. Lambda 함수를 사용하여 DynamoDB에서 비밀을 검색하고 RDS API를 사용하여 비밀을 회전합니다.', 'Encrypt the credentials as secrets by using AWS Key Management Service (AWS KMS) multi-Region customer managed keys. Store the secrets in an Amazon DynamoDB global table. Use an AWS Lambda function to retrieve the secrets from DynamoDB. Use the RDS API to rotate the secrets.'),
  (53, 14, '단일 노드로 leader와 compute 기능을 갖춘 Amazon Redshift 사용', 'Use Amazon Redshift with a single node for leader and compute functionality.'),
  (54, 14, 'Single-AZ 배포로 Amazon RDS 사용, 다른 가용 영역에 리더 인스턴스 추가', 'Use Amazon RDS with a Single-AZ deployment Configure Amazon RDS to add reader instances in a different Availability Zone.'),
  (55, 14, 'Multi-AZ 배포로 Amazon Aurora 사용, Aurora Replica와 함께 Aurora Auto Scaling 구성', 'Use Amazon Aurora with a Multi-AZ deployment. Configure Aurora Auto Scaling with Aurora Replicas.'),
  (56, 14, 'EC2 Spot 인스턴스로 Amazon ElastiCache for Memcached 사용', 'Use Amazon ElastiCache for Memcached with EC2 Spot Instances.'),
  (57, 15, 'Amazon GuardDuty를 사용하여 프로덕션 VPC에서 트래픽 검사 및 필터링 수행', 'Use Amazon GuardDuty for traffic inspection and traffic filtering in the production VPC.'),
  (58, 15, 'Traffic Mirroring을 사용하여 프로덕션 VPC의 트래픽을 복제해 트래픽 검사 및 필터링 수행', 'Use Traffic Mirroring to mirror traffic from the production VPC for traffic inspection and filtering.'),
  (59, 15, 'AWS Network Firewall을 사용하여 프로덕션 VPC에서 트래픽 검사 및 필터링을 위한 규칙 생성', 'Use AWS Network Firewall to create the required rules for traffic inspection and traffic filtering for the production VPC.'),
  (60, 15, 'AWS Firewall Manager를 사용하여 프로덕션 VPC에서 트래픽 검사 및 필터링을 위한 규칙 생성', 'Use AWS Firewall Manager to create the required rules for traffic inspection and traffic filtering for the production VPC.'),
  (61, 16, 'Amazon QuickSight에서 분석을 생성합니다. 모든 데이터 소스를 연결하고 새로운 데이터셋을 생성합니다. 대시보드를 게시하여 데이터를 시각화하고, 적절한 IAM 역할과 대시보드를 공유합니다.', 'Create an analysis in Amazon QuickSight. Connect all the data sources and create new datasets. Publish dashboards to visualize the data. Share the dashboards with the appropriate IAM roles.'),
  (62, 16, 'Amazon QuickSight에서 분석을 생성합니다. 모든 데이터 소스를 연결하고 새로운 데이터셋을 생성합니다. 대시보드를 게시하여 데이터를 시각화하고, 적절한 사용자와 그룹과 대시보드를 공유합니다.', 'Create an analysis in Amazon QuickSight. Connect all the data sources and create new datasets. Publish dashboards to visualize the data. Share the dashboards with the appropriate users and groups.'),
  (63, 16, 'Amazon S3의 데이터를 위해 AWS Glue 테이블과 크롤러를 생성합니다. AWS Glue ETL 작업으로 보고서를 생성하고 S3에 게시합니다. S3 버킷 정책을 사용해 보고서 접근을 제한합니다.', 'Create an AWS Glue table and crawler for the data in Amazon S3. Create an AWS Glue extract, transform, and load (ETL) job to produce reports. Publish the reports to Amazon S3. Use S3 bucket policies to limit access to the reports.'),
  (64, 16, 'Amazon S3의 데이터를 위해 AWS Glue 테이블과 크롤러를 생성합니다. Amazon Athena Federated Query를 사용해 RDS PostgreSQL 데이터에 접근합니다. Athena로 보고서를 생성하고 S3에 게시합니다. S3 버킷 정책으로 접근을 제한합니다.', 'Create an AWS Glue table and crawler for the data in Amazon S3. Use Amazon Athena Federated Query to access data within Amazon RDS for PostgreSQL. Generate reports by using Amazon Athena. Publish the reports to Amazon S3. Use S3 bucket policies to limit access to the reports.'),
  (65, 17, 'S3 버킷 접근 권한을 부여하는 IAM 역할을 생성하고, EC2 인스턴스에 연결', 'Create an IAM role that grants access to the S3 bucket. Attach the role to the EC2 instances.'),
  (66, 17, 'S3 버킷 접근 권한을 부여하는 IAM 정책을 생성하고, EC2 인스턴스에 연결', 'Create an IAM policy that grants access to the S3 bucket. Attach the policy to the EC2 instances.'),
  (67, 17, 'S3 버킷 접근 권한을 부여하는 IAM 그룹을 생성하고, EC2 인스턴스에 연결', 'Create an IAM group that grants access to the S3 bucket. Attach the group to the EC2 instances.'),
  (68, 17, 'S3 버킷 접근 권한을 부여하는 IAM 사용자를 생성하고, EC2 인스턴스에 연결', 'Create an IAM user that grants access to the S3 bucket. Attach the user account to the EC2 instances.'),
  (69, 18, 'Amazon Simple Queue Service(Amazon SQS) 큐를 생성합니다. 이미지가 S3 버킷에 업로드될 때 S3 버킷에서 SQS 큐로 알림을 전송하도록 구성합니다.', 'Create an Amazon Simple Queue Service (Amazon SQS) queue. Configure the S3 bucket to send a notification to the SQS queue when an image is uploaded to the S3 bucket.'),
  (70, 18, 'Lambda 함수를 Amazon SQS 큐를 호출 소스로 사용하도록 구성합니다. SQS 메시지가 성공적으로 처리되면 큐에서 메시지를 삭제합니다.', 'Configure the Lambda function to use the Amazon Simple Queue Service (Amazon SQS) queue as the invocation source. When the SQS message is successfully processed, delete the message in the queue.'),
  (71, 18, 'Lambda 함수를 구성하여 S3 버킷에서 새로운 업로드를 모니터링합니다. 업로드된 이미지를 감지하면 메모리에 텍스트 파일을 작성하고 처리된 이미지를 추적합니다.', 'Configure the Lambda function to monitor the S3 bucket for new uploads. When an uploaded image is detected, write the file name to a text file in memory and use the text file to keep track of the images that were processed.'),
  (72, 18, 'Amazon EC2 인스턴스를 시작하여 Amazon SQS 큐를 모니터링합니다. 큐에 항목이 추가되면 EC2 인스턴스에서 텍스트 파일에 파일 이름을 기록하고 Lambda 함수를 호출합니다.', 'Launch an Amazon EC2 instance to monitor an Amazon Simple Queue Service (Amazon SQS) queue. When items are added to the queue, log the file name in a text file on the EC2 instance and invoke the Lambda function.'),
  (73, 18, 'Amazon EventBridge(Amazon CloudWatch Events) 이벤트를 구성하여 S3 버킷을 모니터링합니다. 이미지가 업로드되면 애플리케이션 소유자의 이메일 주소로 알림을 보내는 Amazon SNS 주제로 전송합니다.', 'Configure an Amazon EventBridge (Amazon CloudWatch Events) event to monitor the S3 bucket. When an image is uploaded, send an alert to an Amazon ample Notification Service (Amazon SNS) topic with the application owner''s email address for further processing.'),
  (74, 19, '애플리케이션 VPC의 퍼블릭 서브넷에 Network Load Balancer를 생성하여 트래픽을 어플라이언스로 라우팅', 'Create a Network Load Balancer in the public subnet of the application''s VPC to route the traffic to the appliance for packet inspection.'),
  (75, 19, '애플리케이션 VPC의 퍼블릭 서브넷에 Application Load Balancer를 생성하여 트래픽을 어플라이언스로 라우팅', 'Create an Application Load Balancer in the public subnet of the application''s VPC to route the traffic to the appliance for packet inspection.'),
  (76, 19, 'Inspection VPC에 Transit Gateway를 배포하고, 라우팅 테이블을 구성하여 들어오는 패킷을 Transit Gateway로 라우팅', 'Deploy a transit gateway in the inspection VPConfigure route tables to route the incoming packets through the transit gateway.'),
  (77, 19, 'Inspection VPC에 Gateway Load Balancer를 배포하고, Gateway Load Balancer 엔드포인트를 생성하여 들어오는 패킷을 어플라이언스로 전달', 'Deploy a Gateway Load Balancer in the inspection VPC. Create a Gateway Load Balancer endpoint to receive the incoming packets and forward the packets to the appliance.'),
  (78, 20, '프로덕션 EBS 볼륨의 스냅샷을 생성하고, 테스트 환경의 EC2 인스턴스에 **인스턴스 스토어**로 복원', 'Take EBS snapshots of the production EBS volumes. Restore the snapshots onto EC2 instance store volumes in the test environment.'),
  (79, 20, '프로덕션 EBS 볼륨에 **EBS Multi-Attach**를 구성. 스냅샷 생성 후, 테스트 환경 EC2에 프로덕션 EBS 볼륨을 바로 연결', 'Configure the production EBS volumes to use the EBS Multi-Attach feature. Take EBS snapshots of the production EBS volumes. Attach the production EBS volumes to the EC2 instances in the test environment.'),
  (80, 20, '프로덕션 EBS 볼륨의 스냅샷을 생성하고, 새 EBS 볼륨을 만들고 초기화 후 테스트 환경 EC2에 연결 → 스냅샷 복원', 'Take EBS snapshots of the production EBS volumes. Create and initialize new EBS volumes. Attach the new EBS volumes to EC2 instances in the test environment before restoring the volumes from the production EBS snapshots.'),
  (81, 20, '프로덕션 EBS 볼륨의 스냅샷을 생성 후 **EBS Fast Snapshot Restore(FSR)** 활성화 → 새 EBS 볼륨으로 복원 후 테스트 환경 EC2에 연결', 'Take EBS snapshots of the production EBS volumes. Turn on the EBS fast snapshot restore feature on the EBS snapshots. Restore the snapshots into new EBS volumes. Attach the new EBS volumes to EC2 instances in the test environment.'),
  (82, 21, 'Amazon S3에 전체 웹사이트를 여러 버킷으로 호스팅. CloudFront 배포 추가. S3를 오리진으로 설정. 주문 데이터도 S3에 저장', 'Use Amazon S3 to host the full website in different S3 buckets. Add Amazon CloudFront distributions. Set the S3 buckets as origins for the distributions. Store the order data in Amazon S3.'),
  (83, 21, 'Amazon EC2 + Auto Scaling (다중 AZ). ALB로 웹 트래픽 분산. 백엔드 API용 ALB 추가. 데이터는 RDS MySQL', 'Deploy the full website on Amazon EC2 instances that run in Auto Scaling groups across multiple Availability Zones. Add an Application Load Balancer (ALB) to distribute the website traffic. Add another ALB for the backend APIs. Store the data in Amazon RDS for MySQL.'),
  (84, 21, '애플리케이션을 컨테이너로 마이그레이션. Amazon EKS에서 컨테이너 호스팅. Kubernetes Cluster Autoscaler로 트래픽 변동 처리. 데이터는 RDS MySQL', 'Migrate the full application to run in containers. Host the containers on Amazon Elastic Kubernetes Service (Amazon EKS). Use the Kubernetes Cluster Autoscaler to increase and decrease the number of pods to process bursts in traffic. Store the data in Amazon RDS for MySQL.'),
  (85, 21, 'S3 버킷에 웹사이트 정적 콘텐츠 호스팅. CloudFront 배포. S3를 오리진으로 설정. API Gateway + Lambda로 백엔드 API 구현. 데이터는 DynamoDB', 'Use an Amazon S3 bucket to host the website''s static content. Deploy an Amazon CloudFront distribution. Set the S3 bucket as the origin. Use Amazon API Gateway and AWS Lambda functions for the backend APIs. Store the data in Amazon DynamoDB.'),
  (86, 22, 'S3 Standard', 'S3 Standard'),
  (87, 22, 'S3 Intelligent-Tiering', 'S3 Intelligent-Tiering'),
  (88, 22, 'S3 Standard-Infrequent Access (S3 Standard-IA)', 'S3 Standard-Infrequent Access (S3 Standard-IA)'),
  (89, 22, 'S3 One Zone-Infrequent Access (S3 One Zone-IA)', 'S3 One Zone-Infrequent Access (S3 One Zone-IA)'),
  (90, 23, 'S3 Intelligent-Tiering을 구성하여 객체를 자동으로 이동하도록 설정합니다.', 'Configure S3 Intelligent-Tiering to automatically migrate objects.'),
  (91, 23, 'S3 Lifecycle 구성을 생성하여 객체를 1개월 후 S3 Glacier Deep Archive로 전환합니다.', 'Create an S3 Lifecycle configuration to transition objects from S3 Standard to S3 Glacier Deep Archive after 1 month.'),
  (92, 23, 'S3 Lifecycle 구성을 생성하여 객체를 1개월 후 S3 Standard-Infrequent Access(S3 Standard-IA)로 전환합니다.', 'Create an S3 Lifecycle configuration to transition objects from S3 Standard to S3 Standard-Infrequent Access (S3 Standard-IA) after 1 month.'),
  (93, 23, 'S3 Lifecycle 구성을 생성하여 객체를 1개월 후 S3 One Zone-Infrequent Access(S3 One Zone-IA)로 전환합니다.', 'Create an S3 Lifecycle configuration to transition objects from S3 Standard to S3 One Zone-Infrequent Access (S3 One Zone-IA) after 1 month.'),
  (94, 24, 'AWS Budgets를 사용하여 예산 보고서를 생성하고 인스턴스 유형별 EC2 비용을 비교합니다.', 'Use AWS Budgets to create a budget report and compare EC2 costs based on instance types.'),
  (95, 24, 'Cost Explorer의 세부 필터링 기능을 사용하여 인스턴스 유형별 EC2 비용을 심층 분석합니다.', 'Use Cost Explorer''s granular filtering feature to perform an in-depth analysis of EC2 costs based on instance types.'),
  (96, 24, 'AWS Billing and Cost Management 대시보드의 그래프를 사용하여 지난 2개월 동안 인스턴스 유형별 EC2 비용을 비교합니다.', 'Use graphs from the AWS Billing and Cost Management dashboard to compare EC2 costs based on instance types for the last 2 months.'),
  (97, 24, 'AWS Cost and Usage Reports를 사용하여 보고서를 생성하고 Amazon S3 버킷으로 전송합니다. S3를 소스로 Amazon QuickSight를 사용하여 인스턴스 유형별 인터랙티브 그래프를 생성합니다.', 'Use AWS Cost and Usage Reports to create a report and send it to an Amazon S3 bucket. Use Amazon QuickSight with Amazon S3 as a source to generate an interactive graph based on instance types.'),
  (98, 25, 'Lambda 함수 코드를 Apache Tomcat 코드로 리팩터링하여 Amazon EC2 인스턴스에서 실행합니다. 데이터베이스는 JDBC 드라이버를 사용하여 연결합니다.', 'Refactor the Lambda function code to Apache Tomcat code that runs on Amazon EC2 instances. Connect the database by using native Java Database Connectivity (JDBC) drivers.'),
  (99, 25, 'Aurora에서 Amazon DynamoDB로 플랫폼을 변경합니다. DynamoDB Accelerator(DAX) 클러스터를 프로비저닝하고, DAX 클라이언트 SDK를 사용하여 기존 DynamoDB API 호출을 DAX 클러스터로 향하게 합니다.', 'Change the platform from Aurora to Amazon DynamoDProvision a DynamoDB Accelerator (DAX) cluster. Use the DAX client SDK to point the existing DynamoDB API calls at the DAX cluster.'),
  (100, 25, '두 개의 Lambda 함수를 설정합니다. 하나는 정보를 수신하고, 다른 하나는 데이터를 데이터베이스에 로드하도록 구성합니다. Lambda 함수들은 Amazon SNS를 사용하여 통합합니다.', 'Set up two Lambda functions. Configure one function to receive the information. Configure the other function to load the information into the database. Integrate the Lambda functions by using Amazon Simple Notification Service (Amazon SNS).'),
  (101, 25, '두 개의 Lambda 함수를 설정합니다. 하나는 정보를 수신하고, 다른 하나는 데이터를 데이터베이스에 로드하도록 구성합니다. Lambda 함수들은 Amazon SQS 큐를 사용하여 통합합니다.', 'Set up two Lambda functions. Configure one function to receive the information. Configure the other function to load the information into the database. Integrate the Lambda functions by using an Amazon Simple Queue Service (Amazon SQS) queue.'),
  (102, 26, '적절한 규칙을 사용하여 AWS Config를 활성화합니다.', 'Turn on AWS Config with the appropriate rules.'),
  (103, 26, '적절한 검사를 사용하여 AWS Trusted Advisor를 활성화합니다.', 'Turn on AWS Trusted Advisor with the appropriate checks.'),
  (104, 26, '적절한 평가 템플릿을 사용하여 Amazon Inspector를 활성화합니다.', 'Turn on Amazon Inspector with the appropriate assessment template.'),
  (105, 26, 'Amazon S3 서버 액세스 로깅을 활성화하고, Amazon EventBridge(CloudWatch Events)를 구성합니다.', 'Turn on Amazon S3 server access logging. Configure Amazon EventBridge (Amazon Cloud Watch Events).'),
  (106, 27, 'CloudWatch 콘솔에서 대시보드를 공유합니다. 제품 관리자의 이메일 주소를 입력하고 공유 단계를 완료합니다. 공유 가능한 링크를 제품 관리자에게 제공합니다.', 'Share the dashboard from the CloudWatch console. Enter the product manager''s email address, and complete the sharing steps. Provide a shareable link for the dashboard to the product manager.'),
  (107, 27, '제품 관리자를 위해 IAM 사용자를 생성합니다. 해당 사용자에게 CloudWatchReadOnlyAccess AWS 관리형 정책을 연결합니다. 새 로그인 자격 증명을 제품 관리자와 공유합니다. 올바른 대시보드의 브라우저 URL도 공유합니다.', 'Create an IAM user specifically for the product manager. Attach the CloudWatchReadOnlyAccess AWS managed policy to the user. Share the new login credentials with the product manager. Share the browser URL of the correct dashboard with the product manager.'),
  (108, 27, '회사 직원용 IAM 사용자를 생성합니다. 해당 사용자에게 ViewOnlyAccess AWS 관리형 정책을 연결합니다. 새 로그인 자격 증명을 제품 관리자와 공유합니다. 제품 관리자에게 CloudWatch 콘솔에 접속하여 Dashboards 섹션에서 대시보드를 이름으로 찾도록 안내합니다.', 'Create an IAM user for the company''s employees. Attach the ViewOnlyAccess AWS managed policy to the IAM user. Share the new login credentials with the product manager. Ask the product manager to navigate to the CloudWatch console and locate the dashboard by name in the Dashboards section.'),
  (109, 27, '퍼블릭 서브넷에 Bastion 서버를 배포합니다. 제품 관리자가 대시보드에 접근할 필요가 있을 때 서버를 시작하고 RDP 자격 증명을 공유합니다. Bastion 서버에서 브라우저가 적절한 권한을 가진 캐시된 AWS 자격 증명으로 대시보드 URL을 열도록 구성합니다.', 'Deploy a bastion server in a public subnet. When the product manager requires access to the dashboard, start the server and share the RDP credentials. On the bastion server, ensure that the browser is configured to open the dashboard URL with cached AWS credentials that have appropriate permissions to view the dashboard.'),
  (110, 28, 'AWS SSO 콘솔에서 AWS Single Sign-On(AWS SSO)을 활성화합니다. AWS Directory Service for Microsoft Active Directory를 사용하여 회사의 자체 관리 Microsoft Active Directory와 AWS SSO를 연결하기 위해 단방향 포리스트 신뢰(one-way forest trust) 또는 단방향 도메인 신뢰(one-way domain trust)를 생성합니다.', 'Enable AWS Single Sign-On (AWS SSO) from the AWS SSO console. Create a one-way forest trust or a one-way domain trust to connect the company''s self-managed Microsoft Active Directory with AWS SSO by using AWS Directory Service for Microsoft Active Directory.'),
  (111, 28, 'AWS SSO 콘솔에서 AWS Single Sign-On(AWS SSO)을 활성화합니다. AWS Directory Service for Microsoft Active Directory를 사용하여 회사의 자체 관리 Microsoft Active Directory와 AWS SSO를 연결하기 위해 양방향 포리스트 신뢰(two-way forest trust)를 생성합니다.', 'Enable AWS Single Sign-On (AWS SSO) from the AWS SSO console. Create a two-way forest trust to connect the company''s self-managed Microsoft Active Directory with AWS SSO by using AWS Directory Service for Microsoft Active Directory.'),
  (112, 28, 'AWS Directory Service를 사용합니다. 회사의 자체 관리 Microsoft Active Directory와 양방향 신뢰(two-way trust) 관계를 생성합니다.', 'Use AWS Directory Service. Create a two-way trust relationship with the company''s self-managed Microsoft Active Directory.'),
  (113, 28, '온프레미스에 아이덴티티 제공자(IdP)를 배포합니다. AWS SSO 콘솔에서 AWS Single Sign-On(AWS SSO)을 활성화합니다.', 'Deploy an identity provider (IdP) on premises. Enable AWS Single Sign-On (AWS SSO) from the AWS SSO console.'),
  (114, 29, 'Network Load Balancer(NLB)와 연관된 타겟 그룹을 배포합니다. 타겟 그룹을 Auto Scaling 그룹과 연결합니다. 각 리전에서 NLB를 AWS Global Accelerator 엔드포인트로 사용합니다.', 'Deploy a Network Load Balancer (NLB) and an associated target group. Associate the target group with the Auto Scaling group. Use the NLB as an AWS Global Accelerator endpoint in each Region.'),
  (115, 29, 'Application Load Balancer(ALB)와 연관된 타겟 그룹을 배포합니다. 타겟 그룹을 Auto Scaling 그룹과 연결합니다. 각 리전에서 ALB를 AWS Global Accelerator 엔드포인트로 사용합니다.', 'Deploy an Application Load Balancer (ALB) and an associated target group. Associate the target group with the Auto Scaling group. Use the ALB as an AWS Global Accelerator endpoint in each Region.'),
  (116, 29, 'Network Load Balancer(NLB)와 연관된 타겟 그룹을 배포합니다. 타겟 그룹을 Auto Scaling 그룹과 연결합니다. Amazon Route 53 레이턴시 레코드를 생성하여 각 NLB의 앨리어스를 가리키게 합니다. Amazon CloudFront 배포를 생성하고 레이턴시 레코드를 오리진으로 사용합니다.', 'Deploy a Network Load Balancer (NLB) and an associated target group. Associate the target group with the Auto Scaling group. Create an Amazon Route 53 latency record that points to aliases for each NLB. Create an Amazon CloudFront distribution that uses the latency record as an origin.'),
  (117, 29, 'Application Load Balancer(ALB)와 연관된 타겟 그룹을 배포합니다. 타겟 그룹을 Auto Scaling 그룹과 연결합니다. Amazon Route 53 가중치 레코드를 생성하여 각 ALB의 앨리어스를 가리키게 합니다. Amazon CloudFront 배포를 생성하고 가중치 레코드를 오리진으로 사용합니다.', 'Deploy an Application Load Balancer (ALB) and an associated target group. Associate the target group with the Auto Scaling group. Create an Amazon Route 53 weighted record that points to aliases for each ALB. Deploy an Amazon CloudFront distribution that uses the weighted record as an origin.'),
  (118, 30, '테스트가 완료되면 DB 인스턴스를 중지하고, 필요할 때 DB 인스턴스를 다시 시작합니다.', 'Stop the DB instance when tests are completed. Restart the DB instance when required.'),
  (119, 30, 'DB 인스턴스에 Auto Scaling 정책을 적용하여 테스트가 완료되면 자동으로 확장하도록 합니다.', 'Use an Auto Scaling policy with the DB instance to automatically scale when tests are completed.'),
  (120, 30, '테스트가 완료되면 스냅샷을 생성하고 DB 인스턴스를 종료한 다음, 필요할 때 스냅샷에서 복원합니다.', 'Create a snapshot when tests are completed. Terminate the DB instance and restore the snapshot when required.'),
  (121, 30, '테스트가 완료되면 DB 인스턴스를 낮은 용량으로 수정하고, 필요할 때 다시 수정합니다.', 'Modify the DB instance to a low-capacity instance when tests are completed. Modify the DB instance again when required.'),
  (122, 31, 'AWS Config 규칙을 사용하여 올바르게 태그되지 않은 리소스를 정의하고 감지합니다.', 'Use AWS Config rules to define and detect resources that are not properly tagged.'),
  (123, 31, 'Cost Explorer를 사용하여 올바르게 태그되지 않은 리소스를 표시하고, 해당 리소스를 수동으로 태그합니다.', 'Use Cost Explorer to display resources that are not properly tagged. Tag those resources manually.'),
  (124, 31, '모든 리소스를 확인하여 적절한 태그 할당을 확인하는 API 호출을 작성하고, EC2 인스턴스에서 주기적으로 코드를 실행합니다.', 'Write API calls to check all resources for proper tag allocation. Periodically run the code on an EC2 instance.'),
  (125, 31, '모든 리소스를 확인하여 적절한 태그 할당을 확인하는 API 호출을 작성하고, Amazon CloudWatch를 통해 Lambda 함수를 예약하여 주기적으로 코드를 실행합니다.', 'Write API calls to check all resources for proper tag allocation. Schedule an AWS Lambda function through Amazon CloudWatch to periodically run the code.'),
  (126, 32, '웹사이트를 컨테이너화하여 AWS Fargate에서 호스팅합니다.', 'Containerize the website and host it in AWS Fargate.'),
  (127, 32, 'Amazon S3 버킷을 생성하고 웹사이트를 그곳에서 호스팅합니다.', 'Create an Amazon S3 bucket and host the website there.'),
  (128, 32, 'Amazon EC2 인스턴스에서 웹 서버를 배포하여 웹사이트를 호스팅합니다.', 'Deploy a web server on an Amazon EC2 instance to host the website.'),
  (129, 32, 'Express.js 프레임워크를 사용하는 AWS Lambda 대상을 가진 Application Load Balancer(ALB)를 구성합니다.', 'Configure an Application Load Balancer with an AWS Lambda target that uses the Express.js framework.'),
  (130, 33, '거래 데이터를 Amazon DynamoDB에 저장합니다. 쓰기 시 각 거래에서 민감한 데이터를 제거하는 규칙을 DynamoDB에 설정합니다. DynamoDB Streams를 사용하여 거래 데이터를 다른 애플리케이션과 공유합니다.', 'Store the transactions data into Amazon DynamoDB. Set up a rule in DynamoDB to remove sensitive data from every transaction upon write. Use DynamoDB Streams to share the transactions data with other applications.'),
  (131, 33, '거래 데이터를 Amazon Kinesis Data Firehose로 스트리밍하여 데이터를 Amazon DynamoDB 및 Amazon S3에 저장합니다. Kinesis Data Firehose와 AWS Lambda 통합을 사용하여 민감한 데이터를 제거합니다. 다른 애플리케이션은 Amazon S3에 저장된 데이터를 소비할 수 있습니다.', 'Stream the transactions data into Amazon Kinesis Data Firehose to store data in Amazon DynamoDB and Amazon S3. Use AWS Lambda integration with Kinesis Data Firehose to remove sensitive data. Other applications can consume the data stored in Amazon S3.'),
  (132, 33, '거래 데이터를 Amazon Kinesis Data Streams로 스트리밍합니다. AWS Lambda 통합을 사용하여 각 거래에서 민감한 데이터를 제거한 후 거래 데이터를 Amazon DynamoDB에 저장합니다. 다른 애플리케이션은 Kinesis 데이터 스트림에서 거래 데이터를 소비할 수 있습니다.', 'Stream the transactions data into Amazon Kinesis Data Streams. Use AWS Lambda integration to remove sensitive data from every transaction and then store the transactions data in Amazon DynamoDB. Other applications can consume the transactions data off the Kinesis data stream.'),
  (133, 33, '배치된 거래 데이터를 파일 형태로 Amazon S3에 저장합니다. AWS Lambda를 사용하여 각 파일을 처리하고 민감한 데이터를 제거한 후 Amazon S3의 파일을 업데이트합니다. 그런 다음 Lambda 함수가 데이터를 Amazon DynamoDB에 저장합니다. 다른 애플리케이션은 Amazon S3에 저장된 거래 파일을 소비할 수 있습니다.', 'Store the batched transactions data in Amazon S3 as files. Use AWS Lambda to process every file and remove sensitive data before updating the files in Amazon S3. The Lambda function then stores the data in Amazon DynamoDB. Other applications can consume transaction files stored in Amazon S3.'),
  (134, 34, 'AWS CloudTrail을 사용하여 구성 변경 사항을 추적하고 AWS Config를 사용하여 API 호출을 기록합니다.', 'Use AWS CloudTrail to track configuration changes and AWS Config to record API calls.'),
  (135, 34, 'AWS Config를 사용하여 구성 변경 사항을 추적하고 AWS CloudTrail을 사용하여 API 호출을 기록합니다.', 'Use AWS Config to track configuration changes and AWS CloudTrail to record API calls.'),
  (136, 34, 'AWS Config를 사용하여 구성 변경 사항을 추적하고 Amazon CloudWatch를 사용하여 API 호출을 기록합니다.', 'Use AWS Config to track configuration changes and Amazon CloudWatch to record API calls.'),
  (137, 34, 'AWS CloudTrail을 사용하여 구성 변경 사항을 추적하고 Amazon CloudWatch를 사용하여 API 호출을 기록합니다.', 'Use AWS CloudTrail to track configuration changes and Amazon CloudWatch to record API calls.'),
  (138, 35, '계정에서 Amazon GuardDuty를 활성화합니다.', 'Enable Amazon GuardDuty on the account.'),
  (139, 35, 'EC2 인스턴스에서 Amazon Inspector를 활성화합니다.', 'Enable Amazon Inspector on the EC2 instances.'),
  (140, 35, 'AWS Shield를 활성화하고 Amazon Route 53에 연결합니다.', 'Enable AWS Shield and assign Amazon Route 53 to it.'),
  (141, 35, 'AWS Shield Advanced를 활성화하고 ELB에 연결합니다.', 'Enable AWS Shield Advanced and assign the ELB to it.'),
  (142, 36, '각 리전에 S3 버킷을 생성합니다. S3 버킷을 **Amazon S3 관리 암호화 키(SSE-S3)**로 서버 측 암호화를 구성합니다. S3 버킷 간 복제를 구성합니다.', 'Create an S3 bucket in each Region. Configure the S3 buckets to use server-side encryption with Amazon S3 managed encryption keys (SSE-S3). Configure replication between the S3 buckets.'),
  (143, 36, '**멀티 리전 고객 관리 KMS 키**를 생성합니다. 각 리전에 S3 버킷을 생성합니다. S3 버킷 간 복제를 구성합니다. 애플리케이션이 **클라이언트 측 암호화**로 KMS 키를 사용하도록 구성합니다.', 'Create a customer managed multi-Region KMS key. Create an S3 bucket in each Region. Configure replication between the S3 buckets. Configure the application to use the KMS key with client-side encryption.'),
  (144, 36, '고객 관리 KMS 키를 생성하고 각 리전에 S3 버킷을 생성합니다. S3 버킷을 **Amazon S3 관리 암호화 키(SSE-S3)**로 서버 측 암호화를 구성합니다. S3 버킷 간 복제를 구성합니다.', 'Create a customer managed KMS key and an S3 bucket in each Region. Configure the S3 buckets to use server-side encryption with Amazon S3 managed encryption keys (SSE-S3). Configure replication between the S3 buckets.'),
  (145, 36, '고객 관리 KMS 키를 생성하고 각 리전에 S3 버킷을 생성합니다. S3 버킷을 **AWS KMS 키(SSE-KMS)**로 서버 측 암호화를 구성합니다. S3 버킷 간 복제를 구성합니다.', 'Create a customer managed KMS key and an S3 bucket in each Region. Configure the S3 buckets to use server-side encryption with AWS KMS keys (SSE-KMS). Configure replication between the S3 buckets.'),
  (146, 37, 'EC2 직렬 콘솔을 사용하여 각 인스턴스의 터미널 인터페이스에 직접 접근합니다.', 'Use the EC2 serial console to directly access the terminal interface of each instance for administration.'),
  (147, 37, '각 기존 인스턴스와 신규 인스턴스에 적절한 IAM 역할을 연결합니다. AWS Systems Manager **Session Manager**를 사용하여 원격 SSH 세션을 설정합니다.', 'Attach the appropriate IAM role to each existing instance and new instance. Use AWS Systems Manager Session Manager to establish a remote SSH session.'),
  (148, 37, '관리용 SSH 키 페어를 생성합니다. 각 EC2 인스턴스에 공개 키를 로드합니다. 퍼블릭 서브넷에 배스천 호스트를 배포하여 각 인스턴스의 관리용 터널을 제공합니다.', 'Create an administrative SSH key pair. Load the public key into each EC2 instance. Deploy a bastion host in a public subnet to provide a tunnel for administration of each instance.'),
  (149, 37, 'AWS Site-to-Site VPN 연결을 설정합니다. 관리자는 온프레미스 로컬 머신에서 VPN 터널을 통해 SSH 키를 사용하여 인스턴스에 직접 연결하도록 안내합니다.', 'Establish an AWS Site-to-Site VPN connection. Instruct administrators to use their local on-premises machines to connect directly to the instances by using SSH keys across the VPN tunnel.'),
  (150, 38, '웹사이트가 저장된 S3 버킷을 모든 AWS 리전으로 복제합니다. Route 53 지리적 위치(Geolocation) 라우팅 항목을 추가합니다.', 'Replicate the S3 bucket that contains the website to all AWS Regions. Add Route 53 geolocation routing entries.'),
  (151, 38, 'AWS Global Accelerator에서 가속기를 프로비저닝합니다. 제공된 IP 주소를 S3 버킷과 연결합니다. Route 53 항목을 가속기의 IP 주소로 변경합니다.', 'Provision accelerators in AWS Global Accelerator. Associate the supplied IP addresses with the S3 bucket. Edit the Route 53 entries to point to the IP addresses of the accelerators.'),
  (152, 38, 'Amazon CloudFront 배포를 S3 버킷 앞에 추가합니다. Route 53 항목을 CloudFront 배포로 변경합니다.', 'Add an Amazon CloudFront distribution in front of the S3 bucket. Edit the Route 53 entries to point to the CloudFront distribution.'),
  (153, 38, 'S3 Transfer Acceleration을 버킷에서 활성화합니다. Route 53 항목을 새로운 엔드포인트로 변경합니다.', 'Enable S3 Transfer Acceleration on the bucket. Edit the Route 53 entries to point to the new endpoint.'),
  (154, 39, '스토리지 유형을 **Provisioned IOPS SSD**로 변경합니다.', 'Change the storage type to Provisioned IOPS SSD.'),
  (155, 39, 'DB 인스턴스를 **메모리 최적화 인스턴스 클래스**로 변경합니다.', 'Change the DB instance to a memory optimized instance class.'),
  (156, 39, 'DB 인스턴스를 **버스트 가능한 성능(Burstable) 인스턴스 클래스**로 변경합니다.', 'Change the DB instance to a burstable performance instance class.'),
  (157, 39, 'MySQL 네이티브 비동기 복제를 사용하여 **Multi-AZ RDS 읽기 전용 리플리카**를 활성화합니다.', 'Enable Multi-AZ RDS read replicas with MySQL native asynchronous replication.'),
  (158, 40, 'Amazon Kinesis Data Firehose 배포 스트림을 만들어 알림을 수집합니다. Kinesis Data Firehose 스트림이 알림을 Amazon S3 버킷으로 전달하도록 구성합니다. S3 수명주기(Lifecycle) 구성을 설정하여 데이터를 14일 후 Amazon S3 Glacier로 이전합니다.', 'Create an Amazon Kinesis Data Firehose delivery stream to ingest the alerts. Configure the Kinesis Data Firehose stream to deliver the alerts to an Amazon S3 bucket. Set up an S3 Lifecycle configuration to transition data to Amazon S3 Glacier after 14 days.'),
  (159, 40, '두 개의 가용 영역(AZ)에 Amazon EC2 인스턴스를 배포하고, Elastic Load Balancer 뒤에 배치하여 알림을 수집합니다. EC2 인스턴스에서 알림을 Amazon S3 버킷에 저장하는 스크립트를 작성합니다. S3 수명주기 구성을 설정하여 14일 후 데이터를 Amazon S3 Glacier로 이전합니다.', 'Launch Amazon EC2 instances across two Availability Zones and place them behind an Elastic Load Balancer to ingest the alerts. Create a script on the EC2 instances that will store the alerts in an Amazon S3 bucket. Set up an S3 Lifecycle configuration to transition data to Amazon S3 Glacier after 14 days.'),
  (160, 40, 'Amazon Kinesis Data Firehose 배포 스트림을 만들어 알림을 수집합니다. Kinesis Data Firehose 스트림이 알림을 Amazon OpenSearch Service(이전 Amazon Elasticsearch Service) 클러스터로 전달하도록 구성합니다. OpenSearch Service 클러스터에서 매일 수동 스냅샷을 생성하고 14일 이상 된 데이터를 삭제하도록 설정합니다.', 'Create an Amazon Kinesis Data Firehose delivery stream to ingest the alerts. Configure the Kinesis Data Firehose stream to deliver the alerts to an Amazon OpenSearch Service (Amazon Elasticsearch Service) cluster. Set up the Amazon OpenSearch Service (Amazon Elasticsearch Service) cluster to take manual snapshots every day and delete data from the cluster that is older than 14 days.'),
  (161, 40, 'Amazon SQS 표준 큐를 만들어 알림을 수집하고, 메시지 보존 기간을 14일로 설정합니다. 소비자가 SQS 큐를 폴링하고 메시지의 나이를 확인하며 필요한 경우 메시지 데이터를 분석합니다. 메시지가 14일 이상이면 소비자가 메시지를 Amazon S3 버킷으로 복사하고 SQS 큐에서 삭제합니다.', 'Create an Amazon Simple Queue Service (Amazon SQS) standard queue to ingest the alerts, and set the message retention period to 14 days. Configure consumers to poll the SQS queue, check the age of the message, and analyze the message data as needed. If the message is 14 days old, the consumer should copy the message to an Amazon S3 bucket and delete the message from the SQS queue.');

INSERT INTO answer (id, question_id, choice_id) VALUES
  (1, 1, 1),
  (2, 2, 7),
  (3, 3, 9),
  (4, 4, 13),
  (5, 5, 19),
  (6, 6, 22),
  (7, 7, 28),
  (8, 8, 30),
  (9, 9, 34),
  (10, 10, 38),
  (11, 11, 41),
  (12, 12, 45),
  (13, 13, 49),
  (14, 14, 55),
  (15, 15, 59),
  (16, 16, 62),
  (17, 17, 65),
  (18, 18, 69),
  (19, 18, 70),
  (20, 19, 77),
  (21, 20, 81),
  (22, 21, 85),
  (23, 22, 87),
  (24, 23, 91),
  (25, 24, 95),
  (26, 25, 101),
  (27, 26, 102),
  (28, 27, 106),
  (29, 28, 110),
  (30, 29, 114),
  (31, 30, 118),
  (32, 31, 122),
  (33, 32, 127),
  (34, 33, 132),
  (35, 34, 135),
  (36, 35, 141),
  (37, 36, 143),
  (38, 37, 147),
  (39, 38, 152),
  (40, 39, 154),
  (41, 40, 158);

INSERT INTO description (id, question_id, text) VALUES
  (1, 1, '- **S3 Transfer Acceleration (TA)** 는 전 세계 AWS 엣지 로케이션([[AWS Services#AWS CloudFront|AWS CloudFront]] 엣지)을 통해 업로드를 받아 AWS 글로벌 백본으로 전달하므로, 장거리(geographically distributed clients → single S3 버킷) 업로드 성능을 크게 개선
- 각 사이트에 이미 **고속 인터넷**이 있고 매일 500 GB씩 전송해야 하는 반복적 워크플로우에 적합
- **multipart upload**를 사용하면 큰 파일/데이터를 분할해 병렬 업로드해 전송 시간을 단축하고 안정성을 높일 수 있음
- **운영 복잡성도 낮음**
- 각 사이트에서 S3에 직접 업로드하면 별도의 디바이스 운영·배송·중계서버 같은 관리가 필요 없음

오답 이유

**B. 각 사이트에서 가장 가까운 리전의 S3로 업로드 → S3 Cross-Region Replication(CRR)으로 목적지로 복제 → 원본 삭제**
- 운영 복잡성과 지연이 늘어남 -> 여러 리전별 버킷과 복제 규칙을 관리해야 하고, CRR 복제 지연과 비용(데이터 복제 요금) 발생
- 요구사항은 `최대한 빨리 + 운영 복잡성 최소화`를 요구하므로 직접 단일 버킷에 가속 업로드보다 덜 적합

**C. 매일 Snowball Edge Storage Optimized 디바이스를 스케줄링해서 각 사이트에서 가장 가까운 리전으로 전송 → CRR로 목적지 복사**
- Snowball 은 물리 디바이스 배송 기반이므로 네트워크 제약 시 사용하거나 대규모 초기 마이그레이션에 사용
- 전 세계 여러 사이트에서 매일 500 GB씩 반복적으로 처리하기에 디바이스 배송, 반납, 물리적 운영(운영 복잡성)과 소요시간 문제가 커짐

**D. 각 사이트 → 가장 가까운 리전의 EC2에 업로드 → EBS에 저장 → 정기적으로 EBS 스냅샷 찍어 목적지 리전으로 복사 → 복원**
- 운영 및 관리가 매우 복잡 - EC2 관리, 스냅샷/복사/복원 작업, 비용 및 오류지점 증가
- EBS 스냅샷은 객체 수준의 데이터 집계(로그/파일 업로드)에는 부적절하고 지연이 큼
- 단일 S3 버킷에 직접 업로드하는 것이 훨씬 단순하고 적합'),
  (2, 2, '- Athena는 S3에 있는 파일(JSON)을 직접 일고 SQL로 쿼리하므로 로그를 S3에 둔 채 아키텍처 변경 없이 바로 분석 가능 -> 운영/관리할 클러스터가 필요 없음
- 온디맨드에 적합: 쿼리는 필요할 때만 실행하면 되고(서버리스/페이퍼쿼리), 반복적이지 않은 간단 온디맨드 분석에 비용/운영 면에서 효율적
- JSON 지원: Athena(및 그 하부의 Presto/Trino 스타일 엔진)는 Json/Parquet 같은 반정형 데이터에 대해 쿼리 가능하고 스키마를 정의해 쉽게 조회 가능

오답 이유

**A. [[AWS Services#Amazon Redshift|Amazon Redshift]]에 모두 로드 → 쿼리**
- Redshift는 강력한 DWH지만 **데이터를 먼저 로드(COPY 등)** 해야 하고 클러스터 운영·관리(프로비저닝, 유지보수, 비용)가 필요하다. 요청이 **온디맨드·간단**하고 아키텍처 변경을 최소화해야 하는 상황에서는 과도한 솔루션이다.   

**B. [[AWS Services#Amazon CloudWatch Logs / Logs Insights|Amazon CloudWatch Logs]]로 옮기고 CloudWatch Logs Insights에서 쿼리**
- CloudWatch Logs Insights는 로그 분석용 기능이 있지만, **현재 로그가 S3에 저장**되어 있다면 로그를 CloudWatch로 다시 이관(또는 애플리케이션 레벨 변경)해야 하고 이 또한 아키텍처 변경이 발생한다. 또한 CloudWatch Logs는 로그를 직접 수집/저장하는 용도로 설계되어 있어, 이미 S3에 저장된 대규모 로그를 단순히 온디맨드 SQL로 분석하려면 적합하지 않을 수 있다. (즉, “최소 변경” 요구사항에 부합하지 않음). 

**D. [[AWS Services#AWS Glue + Amazon EMR (Spark)|AWS Glue + Amazon EMR (Spark)]]으로 쿼리**
- Glue + EMR은 매우 유연하고 대규모 배치 처리에 적합하지만 **클러스터 설정·관리(또는 Glue Job 관리)** 같은 운영 오버헤드가 생긴다. 간단한 온디맨드 쿼리 목적이라면 과잉 설계이며 운영 복잡성이 큼.'),
  (3, 3, '- aws:PrincipalOrgID 조건 키는 특정 [[AWS Services#AWS Organizations|AWS Organizations]] 전체를 기준으로 액세스를 제한할 수 있는 가장 단순하고 효과적인 방법
- 버킷 정책에 추가하면 해당 Organization ID 내의 모든 계정에서 오는 요청만 허용
- 운영 오버헤드가 거의 없으며 OU나 개별 사용자/계정 단위로 별도 관리할 필요가 없음

오답 이유

**B - aws:PrincipalOrgPaths 사용**
- aws:PrincipalOrgPaths는 특정 OU(조직 단위)까지 제한할 수 있어 더 세밀한 제어가 가능합니다.
- 하지만 문제 요구사항은 단순히 **Organizations 내부 계정**만 허용하는 것이므로 OU까지 관리하는 것은 불필요한 오버헤드입니다.

**C - [[AWS Services#AWS CloudTrail|CloudTrail]]로 이벤트 모니터링**
- CloudTrail을 통해 계정 이동/생성 이벤트를 추적하고 그때마다 정책을 업데이트하는 방식은 관리가 매우 번거롭습니다.
- “최소한의 운영 오버헤드” 요구사항에 맞지 않습니다.

**D - 사용자별 태그 기반 제어**
- 각 사용자에 대해 태그를 관리해야 하고, 새로운 사용자가 생길 때마다 태그 작업이 필요합니다.
- 이는 계정/조직 단위의 단순한 정책보다 훨씬 관리 비용이 큽니다.'),
  (4, 4, '- Amazon S3는 **게이트웨이 VPC 엔드포인트(Gateway Endpoint)**를 지원하며 이를 통해 프라이빗 네트워크 경로로 S3 버킷에 접근 가능
- 인터넷 게이트웨이, NAT 게이트웨이, 프록시 없이 바로 S3와 통신 가능

오답 이유

**B. CloudWatch Logs → S3 Export**
- CloudWatch Logs를 거쳐 S3에 데이터를 내보내는 방식은 S3 접근을 대체하지 못함
- EC2 인스턴스가 직접 S3 버킷에서 로그를 읽어야 하는 요구사항과 맞지 않음

**C. Instance Profile (IAM Role)**
- 인스턴스 프로파일(IAM Role)은 권한(Authorization)**을 제공하는 것이지 네트워크 경로를 제공하지 않음
- 따라서 S3에 접근하려면 인터넷/NAT 게이트웨이나 VPC 엔드포인트 필요

**D. API Gateway + PrivateLink**
- API Gateway를 사용해 S3를 프록시할 수는 있지만 불필요하게 복잡하며 비용 증가
- S3에 이미 최적화된 게이트웨이 엔드포인트 솔루션이 있기 때문에 잘못된 선택'),
  (5, 5, '- EBS는 단일 인스턴스 전용 볼륨이므로 여러 인스턴스에서 동시에 접근할 수 없음.
- 이를 해결하기 위해 공유 파일 시스템을 사용해야함
	- [[AWS Services#Amazon EFS (Elastic File System)|Amazon EFS]]는 여러 EC2 인스턴스에서 동시에 접근 가능한 NFS 기반 파일 시스템
	- 문서를 EFS로 이동하고 애플리케이션이 새 문서를 EFS에 저장하도록 하면, 모든 인스턴스에서 같은 데이터를 볼 수 있음.

오답 이유
**A - EBS 볼륨 복사**
- 초기 복사 후 새로운 문서가 생기면 **동기화 문제** 발생.
- 사용자가 새로 업로드한 문서가 한 인스턴스에만 저장되므로 동일 문제 재발.

**B - ALB를 특정 서버로 연결**
- 로드 밸런서는 인스턴스 간 트래픽을 분산하도록 설계됨.
- 특정 서버로 연결하면 **고가용성/로드 분산** 효과가 사라짐.
- 또한, 사용자가 업로드한 문서가 다른 서버에 존재할 수 있음 → 여전히 일부 문서만 보임.

**D - 요청을 두 서버 모두로 보내기**
- ALB는 단일 요청을 **동시에 여러 서버에 보내는 기능 없음**.
- 구현이 복잡하며 불필요한 트래픽과 데이터 정합성 문제 발생.'),
  (6, 6, '- 문제의 요구사항은 빠른 마이그레이션과 최소환의 네트워크 대역폭 사용
- 데이터의 크기는 70TB, 파일 최대 크기는 500GB로 인터넷 전송 시 수일~수주 소요 가능
- AWS Snowball Edge는 대규모 데이터를 물리적으로 AWS로 이동시키는 오프라인 데이터 전송 장치
	- 장치를 수령 후 데이터 복사 -> 장치를 AWS에 반환하여 S3로 데이터 업로드
- 네트워크를 거의 사용하지 않으면서 대규모 데이터를 빠르게 마이그레이션 가능

오답 이유
**A - AWS CLI를 통한 직접 복사**
- 70 TB 데이터를 인터넷을 통해 전송하면 **대역폭 소모가 크고, 전송 속도가 매우 느림**
- 요구사항 “최소 네트워크 대역폭”을 충족하지 못함

**C - S3 File Gateway + 퍼블릭 엔드포인트**
- File Gateway는 온프레미스에서 S3로 마이그레이션 가능
- 하지만 퍼블릭 엔드포인트를 사용하면 **인터넷 대역폭을 모두 사용**
- 70 TB 전송 시 시간이 오래 걸림 → 요구사항 “빠른 마이그레이션” 불충족

**D - Direct Connect + S3 File Gateway**
- Direct Connect 사용 시 전송 속도는 빨라지지만, **70 TB 전송에는 여전히 상당한 시간 소요**
- Snowball Edge 대비 오프라인 전송보다 느리고, 장치 비용 효율이 떨어짐'),
  (7, 7, '- 문제의 요구사항은 메시지 수집과 소비를 분리(decoupling), 높은 확장성, 급격한 메시지 증가(최대 100,000/s) 처리
- SNS + SQS 패턴은 Pub/Sub 모델을 구현
	- SNS -> 여러 SQS 큐 구독 가능 -> 각 소비자가 독립적으로 처리 가능
	- 메시지 수 급증에도 SQS가 버퍼 역할 -> 소비자 처리 속도와 독립적
	- 완전 관리형 서비스 -> 서버 관리 필요 없음

오답 이유
**A - Kinesis Data Analytics**
- Kinesis Data Analytics는 **스트리밍 데이터를 분석**하기 위한 서비스
- 단순 메시지 전달과 소비자 분리용으로는 적합하지 않음

**B - EC2 Auto Scaling**
- Auto Scaling을 사용해 EC2 수를 늘리면 메시지 처리량은 늘어나지만
- **애플리케이션과 소비자가 직접 연결**되어 있어 decoupling 되지 않음
- 급격한 트래픽 증가 시 스케일링 지연 발생 가능

**C - Kinesis Data Streams 단일 샤드 + Lambda + DynamoDB**
- 단일 샤드 제한 → 처리량 한계
    - 샤드 1개당 최대 **1,000건/초 쓰기, 2,000건/초 읽기**
- 초당 100,000건 메시지를 처리할 수 없음 → 확장성 부족
- DynamoDB를 메시지 버퍼로 사용 → 복잡성 증가'),
  (8, 8, '- 문제의 요구사항
	- 분산 처리
	- 가변 워크로드 처리 -> 워크로드가 급격히 늘어나거나 줄어도 대응할 수 있어야 함
	- 복원력과 확장성 극대화
- SQS + Auto Scailing 패턴
	- SQS를 통해 작업 큐를 분리(decoupling) -> 주 서버 장애에도 작업 손실 최소화
	- 컴퓨트 노드는 오토 스케일링 그룹에서 동적으로 스케일 아웃/인
	- 큐 사이즈를 기준으로 오토 스케일링 설정 -> 워크로드 급증 시 자동 확장

오답 이유
**A - 스케줄링 기반 Auto Scaling**
- 스케줄링은 정해진 시간에만 인스턴스 수를 조정
- 워크로드 변동(급증/급감)에 대응 불가 → 확장성 부족

**C - CloudTrail 사용**
- CloudTrail은 **AWS API 호출 로깅 및 감사**용 서비스
- 작업 분배 및 스케일링과 관련 없음 → 부적합

**D - EventBridge 사용**
- EventBridge는 이벤트 중심 처리 가능하지만, **작업 큐 기반 스케일링**과 직접 연계되지 않음
- Auto Scaling이 컴퓨트 노드의 로드 기준이면 급격한 메시지 폭증 대응에 한계'),
  (9, 9, '- 요구사항
	- 최근 파일에 대해 낮은 지연 접근 유지
	- 저장 공간 확장
	- 파일 라이프사이클 관리
- [[AWS Services#AWS S3 File Gateway|AWS S3 File Gateway]]는 기존 SMB/NFS 파일 서버를 클라우드 확장 스토리지로 연결
	- 사용자는 온프레미스처럼 로컬 파일 서버처럼 접근 가능 -> 최근 파일은 온프레미스 캐시에서 낮은 지연 접근 가능
	- 백엔드는 S3에 저장 -> 용량 확장 가능
- S3 라이프사이클 정책을 통해 7일 후 Glacier Deep Archive로 자동 전환 -> 비용 절감 및 장기 보관
- 

오답 이유
**A - DataSync 단순 복사**
- DataSync는 파일을 **AWS로 이동/복사**만 하는 도구
- 최근 파일에 대한 낮은 지연 접근을 보장하지 못함
- 라이프사이클 관리 자동화 기능 부족


**C - FSx for Windows File Server**
- FSx는 확장 가능한 파일 시스템 제공
- 그러나 비용이 높고, Glacier와 같은 **자동 라이프사이클 정책** 지원하지 않음
- 최근/오래된 파일 접근 패턴 최적화 어려움
  

**D - 사용자 유틸리티 + S3**
- 각 사용자에 설치 필요 → 관리 복잡
- S3 직접 접근은 **온프레미스 SMB/NFS 서버처럼 동작하지 않음** → 기존 워크플로우와 호환성 문제
- Glacier Flexible Retrieval는 **액세스 지연 존재** → 최근 파일 접근 성능 요구사항 불충족'),
  (10, 10, '- 요구사항 - 주문이 수신된 순서대로 처리되도록 보장
- SQS FIFO 큐는 메시지 순서를 보장
	- 메시지 그룹 ID를 사용해 그룹 내 순서를 유지
	- 중복 방지
- 람다 함수를 SQS FIFO 큐와 연동하면 주문이 들어온 순서대로 처리 가능

오답 이유
**A - SNS 사용**
- SNS는 **Pub/Sub 모델**    
- 여러 구독자가 병렬로 메시지를 처리하므로 **메시지 순서 보장 불가**

**C - API Gateway 요청 차단**
- 모든 요청을 차단하면 처리 순서를 맞출 수 있지만, **애플리케이션 가용성이 크게 떨어지고 비효율적**    
- 실질적인 순서 보장 방법 아님

**D - SQS Standard 큐 사용**
- Standard 큐는 **순서를 보장하지 않음**
- 대량 처리 및 높은 처리량에 적합하지만, **FIFO 요구사항 충족 불가**'),
  (11, 11, '- AWS Secrets Manager는 데이터베이스 자격증명을 안전하게 저장하도록 설계
- RDS/Aurora와 통합된 자동 비밀번호(자격 증명) 로테이션을 기본 제공
- 자동 로테이션을 활성화하면 Secrets Manager가 람다(또는 내장기능)를 통해 주기적으로 비밀번호를 안전하게 교체
- 애플리케이션은 Secrets Manager API 또는 SDK를 통해 최신 자격 증명을 가져오도록 구성하면 운영자가 수동으로 파일을 관리하거나 배포할 필요가 줄어듦

오답 이유
**B**
- Systems Manager Parameter Store(특히 SecureString)는 자격 증명을 안전하게 저장할 수는 있지만, Secrets Manager처럼 RDS/Aurora용 **내장 자동 로테이션 기능을 제공하지 않습니다**. 로테이션을 구현하려면 Lambda와 추가 오케스트레이션을 직접 만들어야 하므로 운영 오버헤드가 증가합니다. 따라서 “자동 로테이션을 켠다”는 문구를 충족하지 못합니다.

**C**
- S3에 암호화된 객체로 자격 증명을 저장하는 것은 암호화 측면에서는 가능하지만, **자동 로테이션, 버전 관리에 따른 안전한 교체, IAM 기반의 비밀 전용 기능(예: 임시 자격증명 제공) 등 비밀 관리의 핵심 기능이 부족**합니다. 또한 애플리케이션이 S3에서 자격증명을 읽으려면 추가 코드(권한, 캐시, 재시도, 보안 주의)가 필요하고 비밀번호 교체 시 배포/동기화 문제가 발생합니다.

**D**
- 각 EC2 인스턴스에 EBS 볼륨을 만들어 자격증명을 저장하는 방식은 **비밀이 인스턴스 바깥으로 안전하게 회전되지 않으며**, 인스턴스별로 파일을 관리해야 하므로 운영 오버헤드와 보안 위험(예: 스냅샷 노출, 볼륨 복제)이 높아집니다. 또한 자동 로테이션을 제공하지 않아 요구사항을 만족하지 않습니다.'),
  (12, 12, '- CloudFront 는 전 세계 엣지 로케이션을 통해 정적 콘텐츠(S3)와 동적 콘텐츠(ALB의 EC2)를 모두 캐싱/가속할 수 있음
- 단일 CloudFront 배포에서 다중 오리진(S3 + ALB) 설정이 가능하므로, 정적/동적 콘텐츠를 모두 처리할 수 있음
- Route 53은 커스텀 도메인에서 CloudFront 배포로 트래픽을 전달하므로, 사용자는 단일 도메인에서 정적/동적 데이터를 모두 빠르게 접근할 수 있음
- Global Accelerator는 다중 리전 애플리케이션을 위한 최적화 도구이지만, 문제의 요구사항은 단일 글로벌 애플리케이션에 대해 지연 시간 개선 + 캐싱을 요구하고 있으므로 CloudFront가 정답

오답 이유
**B - ALB만 CloudFront로 가속하고, 정적 데이터(S3)는 Global Accelerator를 통해 접근**
- Global Accelerator는 캐싱을 제공하지 않습니다. 따라서 정적 콘텐츠는 여전히 원본 S3에서 가져와야 하므로 성능 최적화 부족.
- S3 정적 콘텐츠는 CloudFront를 사용하는 것이 훨씬 효율적입니다.  

**C - CloudFront와 ALB를 [[AWS Services#AWS Global Accelerator|Gloval Accelerator]]와 함께 혼합 사용**
- 불필요하게 복잡합니다. 단순히 CloudFront 하나로도 전 세계 지연 시간 단축 및 캐싱이 가능합니다.
- Global Accelerator는 다중 리전 액티브-액티브 아키텍처에 더 적합한 서비스입니다.

**D - 두 개의 별도 도메인 사용 (정적/동적 분리)**
- 사용자 경험이 나빠집니다. 정적/동적 콘텐츠를 따로 다른 도메인으로 호출해야 하므로 애플리케이션 통합성이 깨짐.
- CloudFront 하나로 통합 처리 가능하므로 불필요한 복잡성.'),
  (13, 13, '- 시크릿 매니저는 RDS와 통합되어 자동으로 데이터베이스 자격 증명을 회전할 수 있음
- 다중 리전 비밀 복제를 지원하여 여러 리전에서 동일한 비밀을 관리 가능
- 관리형 서비스이므로 직접 람다나 EventBridge를 설정할 필요 없이 최소한의 운영 오버헤드로 자격 증명 회전 가능
- RDS 전용 회전 기능을 제공하므로 안전하고 신뢰성 높은 자격 증명 회전 가능

오답 이유
**B - 이유**:
- Systems Manager Parameter Store는 비밀 저장 및 회전을 지원하지만, RDS 회전과의 통합이 Secrets Manager만큼 원활하지 않음. 다중 리전 자동 복제 기능도 제한적이며 운영 오버헤드가 증가함.

**C - 이유**:
- S3와 Lambda/EventBridge 조합은 수동 스크립트를 만들어야 하고, RDS와의 직접 통합이 없으므로 회전 로직을 직접 구현해야 함. 운영 오버헤드가 가장 높음.

**D - 이유**:
- KMS + DynamoDB + Lambda + RDS API를 조합해야 하며, 모든 회전 로직과 다중 리전 동기화를 직접 구현해야 함. 관리 부담이 큼.'),
  (14, 14, '- Aurora는 읽기 전용 복제본(오로라 레플리카)을 쉽게 생성 가능
- 오로라 오토 스케일링을 사용하면 읽기 부하 증가 시 자동으로 복제본을 추가하고 부하 감소시 제거 가능
- 멀티 AZ 배포로 기본 인스턴스가 실패해도 자동 장애 조치 지원
- 기존 MySQL 8.0과 호환 가능하고 마이그레이션이 비교적 용이

오답 이유
**A - 이유**:
- Amazon Redshift는 OLAP(분석용 데이터웨어하우스)용으로, 트랜잭션 중심(ecommerce MySQL) 워크로드에는 적합하지 않음.

**B - 이유**:
- Single-AZ 배포는 기본 인스턴스 장애 시 다운타임 발생 가능.
- RDS Reader 인스턴스 추가는 가능하지만, 자동 확장(Auto Scaling) 기능이 제한적임.

**D - 이유**:
- ElastiCache는 캐시 솔루션으로, DB 자체를 확장하는 것이 아님.
- 읽기 성능 향상에는 도움이 되지만, 트랜잭션 데이터 저장과 고가용성을 제공하지 못함.'),
  (15, 15, '- AWS Network Firewall은 VPC 수준에서 들어오고 나가는 트래픽을 검사하고 필터링할 수 있는 완전 관리형 방화벽 서비스
- 온프레미스에서 수행하던 트래픽 검사와 트래픽 필터링을 그대로 구현 가능
- 상태 기반 방화벽과 패킷 필터링 규칙을 지원하며 보안 정책 관리가 편리
- 프로덕션 VPC의 모든 서브넷 트래픽을 대상으로 적용 가능, 고가용성과 자동 확장 지원

오답 이유
**A - 이유**:
- GuardDuty는 **위협 탐지(Threat Detection)** 서비스이며, 트래픽을 직접 차단하거나 필터링하는 기능은 없음.
- 트래픽 분석용은 가능하지만 방화벽 역할을 하진 않음.

**B - 이유**:
- Traffic Mirroring은 트래픽을 **복제해서 모니터링/분석**하는 용도
- 트래픽 필터링이나 차단 기능은 제공하지 않음.  

**D - 이유**:
- Firewall Manager는 **조직 전체 방화벽 정책 관리** 서비스
- 개별 VPC에서 트래픽 검사/필터링 규칙을 직접 적용하는 서비스는 아니고, Network Firewall이나 WAF 정책을 중앙에서 관리하는 역할임.'),
  (16, 16, '- QuickSight는 S3, RDS 등 다양한 데이터 소스를 통합하여 시각화 가능
- QuickSight에서 사용자와 그룹 단위로 대시보드 공유 가능 -> 경영진에게 전체 엑세스, 나머지 직원은 제한된 액세스 설정 가능
- IAM 역할로 공유하면 일부 제약이 있어 관리가 복잡할 수 있음 -> 사용자/그룹 단위 공유 권장

오답 이유
**A - 이유**:
- IAM 역할을 기반으로 공유하면 QuickSight 사용자 계정과 직접 연결되지 않아 세밀한 접근 제어가 어렵고 관리가 복잡함

**C - 이유**:
- Glue ETL + S3 접근 제어는 보고서를 생성하고 공유할 수 있지만 **대시보드 수준의 인터랙티브 시각화**를 제공하지 않음
- 경영진과 직원 간 접근 제한을 실시간으로 관리하기 어려움

**D - 이유**:
- Athena + S3 접근 제어 역시 보고서 생성 및 배포는 가능하지만, QuickSight처럼 **인터랙티브 대시보드** 제공이 제한적임
- 시각화 및 접근 제어가 QuickSight보다 유연하지 않음'),
  (17, 17, '- IAM 역할(Role)은 EC2 인스턴스에 연결하여 해당 인스턴스에서 AWS 서비스(S3 등)에 안전하게 접근 가능하게 하는 권한 부여 방식
- EC2 인스턴스에 IAM 역할을 연결하면 인스턴스 프로파일을 통해 임시 보안 자격 증명이 자동으로 제공됨
- 사용자 인증 정보(Access Key/Secret Key)를 코드에 하드코딩할 필요 없음 -> 보안과 관리 측면에서 안전

오답 이유
**B - 이유**:
- IAM 정책은 권한을 정의하는 문서일 뿐, **직접 EC2 인스턴스에 연결할 수 없음**
- 정책은 **역할(Role)이나 사용자(User) 또는 그룹(Group)**에 붙여야 함

**C - 이유**:
- IAM 그룹은 사용자(User)를 관리하기 위한 단위이며, **EC2 인스턴스에 직접 연결할 수 없음**

**D - 이유**:
- IAM 사용자를 생성하고 Access Key를 EC2에 하드코딩하면 가능하지만, **보안상 권장되지 않음**
- IAM 역할을 사용하는 것이 가장 안전하고 관리가 용이함'),
  (18, 18, '- 내구성(durable): SQS 큐는 메시지를 안전하게 저장, 람다가 실패하더라도 메시지가 손실되지 않음
- 상태 없는 처리(stateless): 람다 함수는 상태를 유지하지 않고 메시지를 받아 이미지 처리 후 완료
- 자동처리 : S3 업로드 시 SQS 알림 -> 람다 자동 트리거 -> 이미지 처리 및 다른 S3 버킷 저장
- 메시지 삭제는 정상 처리 후 큐에서 제거하여 중복 방지

오답 이유
**C - 이유**:
- Lambda가 메모리에 텍스트 파일을 만들어 처리 상태를 추적하면 **상태 유지(stateful)**
- 서버리스 원칙에 맞지 않고 내구성이 낮음

**D - 이유**:
- EC2를 사용하면 **상태가 있는 구성 요소**가 필요하고 관리 부담 증가
- 서버리스, stateless 아키텍처 원칙과 맞지 않음

**E - 이유**:
- SNS는 알림용이며, **이미지 처리나 자동 Lambda 트리거** 목적에는 부적합'),
  (19, 19, '- Gateway Load Balancer(GWLB)는 네트워크 패킷을 가상 어플라이언스로 투명하게 전달할 수 있는 AWS 서비스
- 타사 방화벽 어플라이언스와 통합 시 최소한의 운영 부담으로 트래픽 검사 가능
- 엔드포인트와 함께 사용하면 기존 라우팅을 크게 변경하지 않고도 트래픽을 어플라이언스로 전달 가능
- 상태 유지(stateful) 패킷 검사, 확장성, 고가용성 지원

오답 이유
**A - 이유**:
- Network Load Balancer는 **L4 TCP/UDP 로드 밸런싱**에 적합하지만, 패킷을 투명하게 어플라이언스로 전달하는 기능은 부족
- 방화벽 통합 시 GWLB만큼 간편하지 않음

**B - 이유**:
- Application Load Balancer는 **L7 HTTP/HTTPS 로드 밸런싱**
- IP 패킷 단위 검사에는 적합하지 않음

**C - 이유**:
- Transit Gateway는 VPC 간 라우팅에 적합
- 방화벽 검사 기능 자체는 제공하지 않고, 직접 라우팅/운영 관리 부담이 큼'),
  (20, 20, '- EBS FSR(Fast Snapshot Restore)는 스탭샷을 볼륨으로 복원할 때 즉시 고성능 볼륨 제공
	- 일반 스냅샷 복원 시 초기 I/O는 느리지만 FSR 사용 시 첫 번째 I/O부터 프로덕션 수준의 성능 보장
		- 일반 스냅샷은 S3에 증분 백업 형태로 저장됨 -> 새 EBS 볼륨을 스냅샷에서 복원할 때는 아직 실제 EBS 볼륨 블록에 로드되지 않은 상태
		- AWS 복원된 블록을 Lazy Loading 방식으로 처리
			- 처음 접근하는 블록에 대해서만 S3에서 EBS로 로드하기 때문에 초기 I/O 성능이 느림
		- FSR을 활성화하면 스냅샷의 모든 블록을 미리 EBS 볼륨에 로드 -> 첫 번째 I/O부터 EBS 본래 성능 제공
- 테스트 볼륨이 프로덕션과 독립 -> 수정해도 프로덕션 영향 없음
- 대량 데이터 복제 시간 최소화 -> FSR로 초기화 없이 바로 사용 가능

오답 이유

**A - 이유**:
- EC2 인스턴스 스토어는 **임시 스토리지**, 인스턴스 종료 시 데이터 손실
- 테스트 환경에서 독립적 데이터 유지 불가, I/O 성능 보장 어려움

**B - 이유**:
- EBS Multi-Attach는 **하나의 볼륨을 여러 EC2에서 공유**
- 테스트 환경에서 수정하면 **프로덕션 데이터에 영향** → 요구사항 불충족

**C - 이유**:
- 새 EBS 볼륨 생성 후 스냅샷 복원 → **초기 I/O가 느림** (성능 저하)
- 대량 데이터 복제 시간 최소화 목적 미달'),
  (21, 21, '- 수백만 건의 요청 처리와 밀리초 지연 보장 : CloudFront + Lambda + DynamoDB는 서버리스 구조로 자동 확장, DynamoDB는 밀리초 단위 읽기 쓰기 성능 제공
- 운영 부담 최소화 : 서버리스 구성으로 EC2, EKS, 클러스터, 오토스케일ㄹ링, 패치, OS 관리 등이 불필요
- 비용 효율성 : 트래픽 급증 시에도 서버 미리 프로비저닝할 필요 없음, 사용한 만큼만 지불

오답 이유

**A - 이유**
- S3 + CloudFront는 정적 콘텐츠에 적합
- 하지만 주문 처리 같은 **동적 API 기능 제공 불가** → 데이터 저장/처리 어려움

**B - 이유**
- EC2 + ALB + RDS는 전통적인 웹 아키텍처
- 수백만 요청 처리 시 **Auto Scaling, DB 스케일링, 운영 부담** 많음

**C - 이유**
- EKS + RDS는 컨테이너 기반 확장 가능
- 하지만 **클러스터/노드 관리, 스케일링 정책, DB 운영 부담** 큼
- 서버리스 대비 운영 부담 높음'),
  (22, 22, '- 자동 계층 전환
	- 자주 접근되는 객체는 Standard 계층
	- 드물게 접근되는 객체는 Infrequent Access 계층으로 자동 이동
	- 접근 패턴이 예측 불가할 때 최적 비용 유지
- 가용 영역 내구성
	- Intelligent Tiering은 다중 AZ에 데이터 복제 -> AZ 장애에도 데이터 안전
- 비용 최소화
	- 접근 패턴에 따라 자동으로 비용 효율적 계층 사용
	- 관리자가 직접 접근 패턴 예측하거나 수동 전환할 필요 없음

오답 이유

**A - S3 Standard**
- 장점: 다중 AZ 내구성, 고속 접근
- 단점: **드물게 접근하는 데이터에도 높은 저장 비용** → 비용 최적화 불가

**C - S3 Standard-IA**
- 장점: 다중 AZ 내구성, 낮은 저장 비용
- 단점: **접근 비용 높음**, 접근 패턴 예측 불가 시 비용 효율 낮음

**D - S3 One Zone-IA**
- 장점: 저장 비용 가장 낮음
- 단점: **한 AZ만 저장** → AZ 장애 발생 시 데이터 손실 가능
- 요구 사항(“AZ 손실에도 내구성”) 불충족'),
  (23, 23, '- 접근 패턴 기반 비용 최적화
	- 처음 1개월은 자주 접근 -> S3 Standard 유지
	- 이후 접근 없음 -> 저비용 장기 보관 스토리지인 Glacier Deep Archive로 이동
- 무기한 보관 가능
	- Glacier Deep Archive는 장기 보관용 최저 비용 스토리지
	- 데이터 복원 시 몇 시간 -> 자주 접근하지 않는 백업에 적합
- Lifecycle 정책 활용
	- 자동으로 스토리지 전환으로 운영 부담을 최소화

오답 이유

**A - S3 Intelligent-Tiering**
- 자동 계층 이동 가능하지만, **최저 비용 스토리지(Glacier Deep Archive)까지 이동하지는 않음**
- 접근 패턴 예측 가능하면 비용 절감 효과 제한적

**C - S3 Standard-IA**
- 낮은 접근 빈도의 스토리지지만 Glacier 대비 **저장 비용 높음**
- 장기 보관 비용 최적화 불리

**D - S3 One Zone-IA**
- 한 AZ만 저장 → AZ 장애 시 데이터 손실 가능
- 요구 사항(무기한 안전 보관) 불충족'),
  (24, 24, '- **AWS Cost Explorer**: AWS 비용 및 사용량 분석 도구. 세부 필터링, 그래프, 시간별 비교 가능
- Cost Explorer는 웹 UI에서 즉시 분석 가능, 추가 구성 불필요 -> 운영 부담 최소화
- 인스턴스 유형, AZ, 태그 등 다양한 기준으로 비용 세분화 가능, 수직 확장 원인 분석에 적합 -> 세부 필터링 가능
- 지난 2개월 비용 데이터를 그래프 형태로 바로 시각화 가능 -> 그래프 비교 용이

오답 이유

**A - AWS Budgets**
- **AWS Budgets**: 비용 및 사용량 목표 설정, 초과 시 알림
- 예산 초과 여부 모니터링 용도
- 세부 비용 분석 기능 제한 → 근본 원인 분석에는 부적합


**C - Billing & Cost Management 대시보드**
- **Billing and Cost Management Dashboard**: 기본 비용 그래프 및 청구 정보 제공, 세부 분석 기능 제한
- 단순 비교 그래프 제공, 필터링 기능 제한
- 인스턴스 유형별 심층 분석 어려움

**D - Cost and Usage Report + QuickSight**
- **AWS Cost and Usage Reports (CUR)**: 상세 사용량 및 비용 데이터 제공, 분석 위해 S3/QuickSight와 연계 가능
- 강력하지만 구성 및 운영 부담 큼
- **가장 최소 운영 부담** 요구 조건과 맞지 않음'),
  (25, 25, '- 스케일링 문제 해결
	- 람다 단일 함수에서 직접 오로라에 데이터를 로드하면 동시 호출 제한과 데이터베이스 연결 제한에 걸림
	- SQS 큐를 사용하면 람다가 메시지를 비동기적으로 처리해 데이터베이스 과부하 방지
	- **SQS 메시지 수를 기준으로 처리 속도 조절**
		Lambda가 SQS를 이벤트 소스로 사용하면 다음과 같은 방식으로 처리됩니다.
		1. **SQS 큐에 메시지가 들어감**
		    - API Gateway → Lambda(수신) → SQS
		    - 메시지 = 처리할 데이터 하나
		2. **Lambda(SQS 처리용) 자동 호출**
		    - AWS가 SQS 메시지를 **배치 단위로 Lambda에 전달**
		    - 배치 크기(batch size)를 설정할 수 있음 → 한 번에 몇 개 메시지를 처리할지 조절		    
		3. **동시 처리 수 제어**
		    - Lambda는 **최대 동시 실행 수**(concurrent executions) 설정 가능
		    - 예: 동시 실행 수를 10으로 제한 → 동시에 Aurora에 연결되는 Lambda 인스턴스도 최대 10개
		4. **결과**
		    - 메시지가 너무 많아도 Lambda 동시 실행 제한 + 배치 단위 조절로 **DB 과부하 방지**
		    - 큐에 쌓인 메시지는 Lambda가 여유가 생기면 순서대로 처리 → 안정적인 데이터베이스 연결
- 운영 및 구성 부담 최소화
	- EC2 또는 DynamoDB로 변경 불필요 -> 기존 아키텍처 유지
	- 큐 기반 설계 -> 높은 데이터량 처리 가능, 확장성 확보
- 람다 함수 분리
	- 수신 함수 : API Gateway 이벤트 수신 -> SQS 메시지 작성
	- 처리 함수 : SQS 메시지 처리 -> 오로라 로드
	- 각 함수는 독립적, 오류 재시도, 재처리 가능

오답 이유

**A - EC2 + Tomcat**
- 서버 관리 부담이 크게 증가
- 확장성 확보 위해 서버 수 관리 필요 → 구성 부담 큼

**B - Aurora → DynamoDB + DAX**
- 데이터베이스 변경 필요 → POC 기반 기존 설계 파괴
- 관계형 트랜잭션 요구사항(Aurora PostgreSQL) 만족 불가
  
**C - Lambda + SNS**
- SNS는 **푸시 기반**으로 메시지를 전송, 순서 보장 및 메시지 재처리 관리가 어려움
- 고용량 데이터 처리에 적합하지 않음'),
  (26, 26, '- AWS Config
	- AWS 리소스 구성 변경을 자동으로 기록 및 평가
	- S3 버킷 정책, 버킷 ACL, 퍼블릭 접근 설정 등 구성 변경 감지 가능
	- 사전 정의된 규칙을 사용해 승인되지 않은 변경 자동 감지
- 자동 감사 및 알림
	- 구성 변경 시 알림 전송 가능
	- 규정 준수 상태를 추적하고 보고서 생성 가능

오답 이유

**B - AWS Trusted Advisor**
- 비용 최적화, 보안 권장사항, 성능, 내구성 점검    
- 실시간 구성 변경 감지 및 감사 기능 **제한적** → S3 변경 모니터링 목적에는 부적합

**C - Amazon Inspector**
- EC2, 컨테이너 등 취약점 및 보안 평가 도구    
- S3 버킷 구성 변경 감지에는 **사용되지 않음**

**D - S3 서버 액세스 로깅 + EventBridge**
- 접근 로그 기록 가능 → 누가 객체에 접근했는지 추적
- **구성 변경** 감지는 자동으로 수행되지 않음 → 추가 분석 필요'),
  (27, 27, '- 제품 관리자는 AWS 계정이 없기 때문에 IAM 사용자 생성(B,C)는 적합하지 않음
- CloudWatch 대시보드 공유 기능은 읽기 전용 링크 제공
- 링크를 통해 제품 관리자는 대시보드 보기만 가능 -> 추가 권한 불필요
- 별도 IAM 계정, Bastion 서버, RDP 세션 설정 불필요

오답 이유

**B - IAM 사용자 생성 + CloudWatchReadOnlyAccess**
- AWS 계정이 없는 제품 관리자는 로그인 불가 → 요구사항 불충족

**C - ViewOnlyAccess IAM 사용자 공유**
- 마찬가지로 제품 관리자가 AWS 계정이 없으므로 접근 불가

**D - [[용어 모음#**Bastion 서버**|Bastion 서버]] + [[용어 모음#**RDP (Remote Desktop Protocol)**|RDP]]**
- 지나치게 복잡하고 운영 부담 큼
- 최소 권한 원칙 위반 가능 (서버 접속, 브라우저 사용 등)'),
  (28, 28, '- **AWS [[용어 모음#**SSO (Single Sign-On)**|SSO]]와 온프레미스 AD 통합 가능**
	- AWS SSO는 AWS Organizations 내 여러 계정에서 단일 로그인(SSO)을 제공
    - 온프레미스 AD 사용자를 계속 관리 가능
- **AWS Directory Service for Microsoft AD 사용**
    - AWS SSO와 연결 가능
    - 단방향 신뢰(one-way trust) 설정 → 온프레미스 AD 사용자로 AWS SSO 로그인 가능
    - 복잡성과 보안 위험 최소화
- **운영 및 보안 효율성**
    - 사용자와 그룹 관리는 온프레미스 AD에서 중앙화
    - 모든 계정에 대한 단일 로그인 제공

오답 이유

**B - 양방향 포리스트 신뢰**
- AWS SSO 관점에서 필요 없는 복잡성 추가
- 최소 권한 원칙에 맞지 않음

**C - AWS Directory Service만 사용 + 양방향 신뢰**
- 단일 로그인(SSO) 기능 제공 불가
- 요구사항 불충족

**D - 온프레미스 IdP 배포 + AWS SSO**
- 가능은 하지만, 관리 부담 증가
- AWS SSO와 직접 연동하는 것보다 운영 효율성 떨어짐'),
  (29, 29, '- UDP 지원
	- [[용어 모음#**VoIP(Voice over Internet Protocol)**|VoIP]] 서비스는 UDP 프로토콜 사용
	- ALB는 HTTP/HTTPS 전용 -> UDP 지원 X
	- NLB는 TCP 및 UDP 지원
- 글로벌 지연 시간 기반 라우팅 + 자동 장애 조치
	- [[AWS Services#AWS Global Accelerator|AWS Global Accelerator]] 사용 -> 사용자 트래픽을 가장 가까운 리전으로 라우팅
	- 특정 리전 장애 시 자동 장애 조치 제공
- 오토 스케일링 그룹과 통합 용이
	- NLB 타겟 그룹과 연결해 인스턴스 수에 따라 자동 확장 가능

오답 이유

**B - ALB 사용**
- UDP를 지원하지 않음 → VoIP 서비스 요구사항 불충족

**C - Route 53 레이턴시 + CloudFront**
- CloudFront는 UDP를 지원하지 않음 → VoIP 트래픽 처리 불가
- NLB는 적합하지만 CloudFront를 통해 전달하면 UDP 통신 불가능

**D - ALB + Route 53 가중치 + CloudFront**
- ALB는 UDP 미지원, CloudFront도 UDP 미지원 → VoIP 트래픽 처리 불가'),
  (30, 30, '- RDS는 Start/Stop 기능을 제공 -> 인스턴스를 중지하면 컴퓨팅 비용만 중지되고, 스토리지와 백업은 유지
- 테스트가 한 달에 한 번이고 장시간만 필요하므로, 테스트가 끝난 후 인스턴스 중지로 비용 절감
- 인스턴스 사양은 그대로 유지 -> 테스트 성능을 떨어뜨리지 않음

오답 이유

**B - Auto Scaling**
- RDS는 EC2처럼 CPU 기반 자동 스케일링을 지원하지 않음.
- 테스트 후 비용 절감에는 적합하지 않음.

**C - 스냅샷 후 종료/복원**
- 복원 과정이 시간이 오래 걸리며, 운영 효율성이 떨어짐.    
- 테스트에 필요한 인스턴스 사양을 유지하는데 비효율적임.

**D - 인스턴스 용량 변경**
- 수동 조정 필요, 변경 과정에서 테스트 지연 가능.
- 비용 절감 효과가 Stop/Start보다 낮음.'),
  (31, 31, '- AWS Config는 AWS 리소스의 구성 상태를 지속적으로 평가하고 규정 준수 여부를 자동으로 확인 가능
- 태그 규칙을 생성하면 EC2, RDS, Redshift 등 지정된 리소스에서 태그가 올바르게 적용되지 않은 경우 자동으로 감지 가능
- 수동 검사나 코드 작성 없이도 지속적으로 모니터링이 가능하므로 운영 부담 최소화

오답 이유
**B - Cost Explorer**
- 비용 분석 도구일 뿐, 태그 규정 준수 여부를 지속적으로 모니터링하거나 자동으로 감지하지 못합니다.
- 수동으로 태그를 설정해야 하므로 운영 부담이 큽니다.

**C - API 호출 + EC2 실행**
- 직접 코드 작성과 EC2 인스턴스 운영이 필요하여 관리 오버헤드가 높습니다.
- 자동화 및 지속적인 모니터링 측면에서 비효율적입니다.

**D - API 호출 + Lambda 실행**
- C와 달리 Lambda를 사용해 주기적 자동 실행 가능하지만, 규칙 기반 모니터링을 제공하는 Config보다 구현 및 유지보수가 더 복잡합니다.
- AWS Config를 사용하면 별도 코드 작성 없이 바로 규정 준수 검사가 가능하므로 최소 노력 목표에는 부적합합니다.'),
  (32, 32, '- S3는 정적 콘텐츠를 제공하는데 최적화되어 있으며 서버나 컨테이너 관리가 필요 없음
- 사용한 스토리지 및 요청 수에 대해서만 비용이 발생하므로 가장 비용 효율적

오답 이유

**A - Fargate**
- Fargate는 컨테이너 기반 애플리케이션 실행에 적합하지만, 단순 정적 콘텐츠를 위해 컨테이너를 운영하는 것은 과도합니다.
- 비용도 S3에 비해 훨씬 비쌉니다.

**C - EC2**
- EC2 인스턴스에 웹 서버(Apache, Nginx 등)를 설치해 정적 콘텐츠를 호스팅할 수 있지만, 인스턴스 관리와 유지보수 필요.
- 항상 실행되는 EC2 비용이 발생해 비효율적입니다.

**D - ALB + Lambda**
- 동적 API 처리에는 유용할 수 있지만, 정적 콘텐츠를 위해 ALB와 Lambda를 사용하는 것은 불필요하게 복잡하고 비용이 더 많이 듭니다.
- S3가 훨씬 간단하고 저렴합니다.'),
  (33, 33, '- 요구사항 : 수백만 검의 금융 거래를 확장 가능하고 실시간에 가깝게 처리
- Kinesis Data Streams는 대규모 이벤트 스트리밍과 실시간 처리에 최적화
- 람다를 통합해 민감한 데이터를 제거하는 ETL(Extract, Transform, Load)
- 정제된 데이터를 DynamoDB(문서 기반 데이터베이스)로 저장하면 저지연 검색 가능
- 동시에 Kinesis Data Streams는 여러 소비자를 지원하므로 다른 내부 애플리케이션이 거래 데이터를 직접 스트림에서 소비 가능 -> 확장성, 실시간 처리, 다중 소비자 요구사항 충족

오답 이유

- **A. DynamoDB + DynamoDB Streams**
    - DynamoDB는 쓰기 시점에 “규칙”을 적용해 데이터 필터링하는 기능이 없습니다.
    - Streams는 변경 사항을 스트리밍할 수 있지만, 민감 데이터 제거를 사전에 보장하지 못합니다.
    - 따라서 민감 데이터 제거 요건을 만족하지 않습니다.

- **B. Kinesis Data Firehose**
    - Firehose는 데이터를 최종 목적지(S3, Redshift, OpenSearch 등)에 전송하는 데 적합하며, **DynamoDB를 직접 대상으로 지원하지 않습니다.**
    - Firehose는 거의 실시간이지만 최소 60초 버퍼링 후 전송되므로 **거의 실시간 처리 요구사항**에는 적합하지 않습니다.
    - 또한 다른 애플리케이션이 데이터를 실시간으로 소비할 수 없고, 저장된 S3 파일만 접근 가능합니다.
    
- **D. Amazon S3 + Lambda**
    - 배치(batch) 기반 처리 방식으로 실시간 성능을 만족하지 못합니다.
    - S3에 저장 후 처리하면 민감 데이터 제거가 늦게 적용되고, 내부 애플리케이션도 즉시 접근 불가합니다.
    - 실시간 요구사항과 다중 소비자 요구사항을 충족하지 않습니다.'),
  (34, 34, '- AWS Config: AWS 리소스의 구성 상태를 추적하고 변경 이력을 기록하며, 규정 준수 감사에 필요한 리소스 변경 기록 제공 -> 리소스 설정 변경을 감사 및 추적할 때 적합
- AWS CloudTrail: AWS 계정 내에서 수행된 모든 API 호출을 기록, 이벤트 히스토리를 제공해 보안, 감사 운영 및 문제 해결에 사용

오답 이유

- **A. CloudTrail → 구성 변경, Config → API 호출**
    - CloudTrail은 리소스 상태 변경 자체를 추적하는 것이 아니라 API 호출 이벤트를 기록합니다.
    - Config가 API 호출 기록 기능을 제공하지 않음.
    - 따라서 요구사항과 정확히 일치하지 않습니다.
    
- **C. Config → 구성 변경, CloudWatch → API 호출**
    - CloudWatch는 주로 모니터링 및 로그 수집(애플리케이션 로그, 메트릭)에 사용됩니다.
    - AWS API 호출 이벤트 기록용으로는 CloudTrail이 필요합니다.
    - 따라서 API 호출 기록 요구사항 충족 불가.
    
- **D. CloudTrail → 구성 변경, CloudWatch → API 호출**
    - CloudTrail은 구성 변경 추적이 아니라 **API 호출 기록**에 적합합니다.
    - CloudWatch는 API 호출 기록용으로 적합하지 않음.
    - 따라서 요구사항을 만족하지 않습니다.'),
  (35, 35, '- 요구사항 : 대규모 DDoS 공격 감지 및 방어
- AWS Shield Standard는 모든 AWS 고객에게 기본 제공되지만, 규모가 큰 공격에 대한 고급 보호, 대응 및 알림 기능이 필요한 경우 Shield Advanced를 사용
- Shield Advanced는 ELB, CloudFront, Global Accelerator 등에 연결해 공격 감지, 완화, 금융 보호 및 24/7 DDoS 대응 팀(DRT) 지원 제공
- 현재 아키텍처에서는 ELB가 인터넷 트래픽의 진입점이므로 ELB에 Shield Advanced를 연결해야 효과적으로 보호 가능

오답 이유

- **A. Amazon GuardDuty**
    - GuardDuty는 악성 활동, 계정 침해, 의심스러운 API 호출 등을 탐지하는 **위협 탐지 서비스**입니다.        
    - DDoS 공격 방어 기능은 제공하지 않음. → 요구사항 불충족.

- **B. Amazon Inspector**
    - Inspector는 EC2 및 컨테이너의 **취약점 평가 및 보안 검사 서비스**입니다.
    - 실시간 DDoS 방어와는 관련 없음. → 요구사항 불충족.
    
- **C. AWS Shield + Route 53**
    - Shield Standard는 기본 보호만 제공, Advanced 수준의 **대규모 공격 완화, 알림, 비용 보호**는 제공되지 않습니다.
    - 또한, DNS는 서드파티를 사용하고 있으므로 Route 53 연결이 불필요하며, 보호 대상이 ELB여야 함. → 요구사항 불충족.'),
  (36, 36, '- 요구사항
	- 두 리전의 S3 버킷에 저장되는 모든 데이터는 같은 KMS 키로 암호화/복호화해야함
	- 데이터와 키는 두 리전에 모두 존재해야 함
	- 운영 부담 최소화
- 멀티 리전 KMS 키를 사용하면 단일 키 ID로 여러 리전에서 동일한 키 참조 가능
- 리전별 KMS 키 동기화 필요 없음
- S3 버킷 간 복제 시 키 재매핑이나 추가 작업 필요 없음
- 애플리케이션에서 클라이언트 측 암호화(CSE)를 사용하면 동일한 멀티 리전 키로 데이터를 암호화하고 복호화 가능

오답 이유

- **A. SSE-S3 사용**
    - SSE-S3는 AWS가 관리하는 키를 사용하므로 **고객 관리 KMS 키 요구사항을 충족하지 못함**.
    - 요구사항: 고객 관리 KMS 키 사용 → 불충분.
    
- **C. SSE-S3 + 고객 KMS 키**
    - 설명상 모순: SSE-S3는 S3 관리 키 사용, 고객 KMS 키는 미사용.
    - 또한, 같은 키로 두 리전을 암호화하려면 멀티 리전 CMK가 필요함.
    - 요구사항 충족 불가.
    
- **D. SSE-KMS + 단일 리전 KMS 키**
    - SSE-KMS는 고객 관리 키 사용 가능하지만, **단일 리전 KMS 키**는 다른 리전 S3 버킷 복제 시 사용 불가.
    - 리전별 키 동기화 필요 → 운영 부담 증가.'),
  (37, 37, '- 요구사항
	- 원격으로 안전하게 접근 및 관리
	- 반복 가능한 프로세스
	- AWS 네이티브 서비스 사용
	- 최소 운영 부담
- AWS System Manager (SSM) Session Manager
	- SSH 키 없이 안전한게 EC2에 접근 가능
	- IAM 역할 기반 권한 제어 -> 계정별 관리 가능
	- CloudTrail 및 CloudWatch 통합 -> 감사 가능
	- 인터넷 접근이 필요 없으므로 보안 강화
	- 새로운 인스턴스에도 동일한 IAM 역할을 붙이면 반복 가능

오답 이유

- **A. EC2 직렬 콘솔**
    - 직렬 콘솔은 제한적인 상황에서만 사용 가능하며, 모든 운영 요구사항을 반복적으로 처리하기 어렵습니다.
    - SSH나 원격 관리 자동화에 적합하지 않음. → 운영 부담 증가.
    
- **C. SSH 키 + 배스천 호스트**
    - 전통적인 접근 방식, 배스천 호스트 운영 필요 → 유지관리 부담 높음.
    - 키 관리, 포트 관리, 보안 업데이트 등 반복 작업 필요.        
    - AWS 네이티브 서비스 기반 자동화가 아님.

- **D. Site-to-Site VPN + SSH 키**
    - VPN 구축과 관리 부담 존재, 온프레미스 의존.
    - 모든 관리자가 로컬 머신에서 접속해야 하며 반복적인 자동화 어렵고, Well-Architected Framework에서 권장하는 클라우드 네이티브 접근 아님.'),
  (38, 38, '- 요구사항
	- 전 세계 사용자에 대한 지연 시간 감소
	- 비용 효율적 솔루션
- CloudFront
	- 전 세계에 배포된 엣지 로케이션을 통해 콘텐츠 캐싱
	- 사용자가 가장 가까운 엣지 위치에서 콘텐츠를 제공 -> 지연 시간 최소화
	- S3 정적 웹사이트와 쉽게 통합 가능
	- 다른 옵션(Global Accelerator, S3 Transfer Acceleration, 리전 복제)에 비해 비용 효율적

오답 이유

- **A. S3 버킷을 모든 리전으로 복제 + Route 53 지리적 라우팅**
    - 리전별 복제 비용 및 관리 부담 발생.
    - 운영 복잡성 높고 비용 증가. → 비용 효율적 아님.
    
- **B. AWS Global Accelerator + IP 연결**
    - Global Accelerator는 주로 TCP/UDP 애플리케이션 가속용, 정적 웹사이트를 위한 최적화 아님.
    - 비용이 높고, S3 웹사이트와 직접 연결하려면 복잡한 설정 필요. → 비용 효율성 낮음.
    
- **D. S3 Transfer Acceleration**
    - S3 엔드포인트와 사용자의 네트워크 간 업로드 가속에는 적합.
    - 정적 웹사이트 다운로드/지연 시간 감소에는 CloudFront만큼 효율적이지 않음. → 비용 대비 성능 낮음.'),
  (39, 39, '- 문제의 원인 : 스토리지 성능
- General Purpose SSD(gp2)는 기본 IOPS 성능이 용량에 따라 제한되며 대규모 업데이트가 많은 워크로드에서는 I/O 병목 발생 가능
- Provisioned IOPS SSD(io1/io2)는 원하는 IOPS를 직접 설정할 수 있어 일관된 고성능 I/O 제공
- 따라서 삽입/갱신 성능이 개선되고 수백만 건의 트랜잭션 처리에 적합
- 

오답 이유

- **B. 메모리 최적화 인스턴스로 변경**
    - 메모리 최적화 인스턴스는 캐시 활용 및 쿼리 성능에 유리하지만, 문제는 **스토리지 I/O 병목**입니다.
    - 메모리 확장만으로 삽입 성능 문제 해결 불가.
    
- **C. 버스트 가능한 성능 인스턴스로 변경**
    - Burstable 인스턴스(T3/T4)는 CPU 성능에 제한적.
    - 스토리지 I/O 문제에는 도움 되지 않음.
    
- **D. Multi-AZ 읽기 전용 리플리카 활성화**
    - 읽기 성능 향상에 적합하지만, **삽입/업데이트는 주 인스턴스에서 처리**됩니다.
    - 따라서 삽입 성능 문제는 해결되지 않음.'),
  (40, 40, '- 요구사항: 고가용성 / 운영 부담 최소화(추가 인프라 관리 불필요) / 비용 효율적 / 데이터 14일간 즉시 분석 가능 / 14일 이후 데이터 아카이브
- Kinesis Data Firehose + S3
	- 완전 관리형 서버리스 서비스 -> 인프라 관리 불필요
	- S3에 데이터 저장, 라이프사이클 정책으로 14일 후 Glacier로 자동 아카이브 가능
	- Firehose 데이터 버퍼링 및 배치 전송으로 높은 데이터 처리량 지원(1TB/일 가능)
	- 비용 효율적이며 고가용성 확보 가능

오답 이유

- **B. EC2 인스턴스 + ELB + 스크립트**
    - 인프라 관리 필요 (OS, 패치, 모니터링, Auto Scaling)
    - 운영 부담 높음 → 요구사항 불충족
    
- **C. Firehose → OpenSearch Service**
    - OpenSearch는 데이터 검색에 적합하지만, **1TB/일** 수준의 대량 데이터 장기 저장 시 비용 높음
    - 수동 스냅샷 관리 필요 → 운영 부담 증가
    
- **D. SQS 큐 + 소비자 스크립트**
    - 메시지 14일 보관 후 아카이브를 자동화하려면 **소비자 스크립트 필요**
    - 메시지 1TB/일 수준이면 SQS 메시지 수 제한 및 비용 문제 발생
    - 운영 효율성이 떨어짐');
-- Inserts for questions 41-240 extracted from additional SAA-C03 markdown sources
INSERT INTO question (id, text_kr, text_en) VALUES
  (41, '한 회사의 애플리케이션은 데이터 수집을 위해 여러 SaaS(Software-as-a-Service) 소스와 통합됩니다.
회사는 데이터를 수신하고 분석을 위해 Amazon S3 버킷에 업로드하기 위해 Amazon EC2 인스턴스를 운영합니다.
데이터를 수신하고 업로드하는 동일한 EC2 인스턴스가 업로드 완료 시 사용자에게 알림도 보냅니다.
회사는 애플리케이션 성능이 느려지는 것을 관찰했고 가능한 한 성능을 개선하고자 합니다.

어떤 솔루션이 최소한의 운영 오버헤드로 이러한 요구사항을 충족합니까?', 'A company''s application integrates with multiple software-as-a-service (SaaS) sources for data collection. The company runs Amazon EC2 instances to receive the data and to upload the data to an Amazon S3 bucket for analysis. The same EC2 instance that receives and uploads the data also sends a notification to the user when an upload is complete. The company has noticed slow application performance and wants to improve the performance as much as possible.
Which solution will meet these requirements with the LEAST operational overhead?'),
  (42, '한 회사가 단일 VPC에서 Amazon EC2 인스턴스로 고가용성 이미지 처리 애플리케이션을 실행합니다. EC2 인스턴스는 여러 가용 영역에 걸쳐 여러 서브넷 내부에서 실행됩니다. EC2 인스턴스는 서로 통신하지 않습니다. 그러나 EC2 인스턴스는 단일 NAT 게이트웨이를 통해 Amazon S3에서 이미지를 다운로드하고 Amazon S3에 이미지를 업로드합니다. 회사는 데이터 전송 요금에 대해 우려하고 있습니다.
회사가 지역(Regional) 데이터 전송 요금을 피하기 위한 가장 비용 효율적인 방법은 무엇입니까?', 'A company runs a highly available image-processing application on Amazon EC2 instances in a single VPC. The EC2 instances run inside several subnets across multiple Availability Zones. The EC2 instances do not communicate with each other. However, the EC2 instances download images from Amazon S3 and upload images to Amazon S3 through a single NAT gateway. The company is concerned about data transfer charges.
What is the MOST cost-effective way for the company to avoid Regional data transfer charges?'),
  (43, '한 회사는 많은 양의 시기 민감(time-sensitive) 데이터를 생성하는 온프레미스 애플리케이션을 운영하고 있으며, 이 데이터를 Amazon S3에 백업합니다. 애플리케이션이 성장하면서 내부 사용자들이 인터넷 대역폭 제한으로 불만을 제기하고 있습니다. 솔루션 설계자는 온프레미스 사용자들에게 미치는 영향을 최소화하면서 S3로 시기 적절한(timely) 백업을 장기적으로 수행할 수 있는 솔루션을 설계해야 합니다.
어떤 솔루션이 이러한 요구사항을 충족합니까?', 'A company has an on-premises application that generates a large amount of time-sensitive data that is backed up to Amazon S3. The application has grown and there are user complaints about internet bandwidth limitations. A solutions architect needs to design a long-term solution that allows for both timely backups to Amazon S3 and with minimal impact on internet connectivity for internal users.
Which solution meets these requirements?'),
  (44, '한 회사에 중요한 데이터가 포함된 Amazon S3 버킷이 있습니다. 회사는 실수로 데이터가 삭제되는 것을 방지해야 합니다.
솔루션 설계자가 이 요구사항을 충족하기 위해 어떤 조합의 단계를 수행해야 합니까? (둘을 선택하세요.)', 'A company has an Amazon S3 bucket that contains critical data. The company must protect the data from accidental deletion.
Which combination of steps should a solutions architect take to meet these requirements? (Choose two.)'),
  (45, '한 회사에는 다음으로 구성된 데이터 수집 워크플로가 있습니다:
• 새 데이터 전달에 대한 알림을 위한 Amazon Simple Notification Service (Amazon SNS) 주제
• 데이터를 처리하고 메타데이터를 기록하기 위한 AWS Lambda 함수

회사는 네트워크 연결 문제로 인해 데이터 수집 워크플로가 가끔 실패하는 것을 관찰했습니다. 이러한 실패가 발생하면 회사가 수동으로 작업을 다시 실행하지 않는 한 Lambda 함수는 해당 데이터를 수집하지 않습니다.

솔루션 설계자가 향후 Lambda 함수가 모든 데이터를 수집하도록 보장하려면 어떤 조치 조합을 취해야 합니까? (두 가지를 선택하세요.)', 'A company has a data ingestion workflow that consists of the following:
• An Amazon Simple Notification Service (Amazon SNS) topic for notifications about new data deliveries
• An AWS Lambda function to process the data and record metadata
The company observes that the ingestion workflow fails occasionally because of network connectivity issues. When such a failure occurs, the Lambda function does not ingest the corresponding data unless the company manually reruns the job.
Which combination of actions should a solutions architect take to ensure that the Lambda function ingests all data in the future? (Choose two.)'),
  (46, '한 회사는 매장에 대한 마케팅 서비스를 제공하는 애플리케이션을 운영합니다. 이 서비스는 매장 고객의 과거 구매를 기반으로 합니다. 매장들은 SFTP를 통해 거래 데이터를 회사에 업로드하고, 그 데이터는 처리 및 분석되어 새로운 마케팅 제안을 생성합니다. 일부 파일은 200GB를 초과할 수 있습니다.

최근 회사는 일부 매장이 포함해서는 안 되는 개인 식별 정보(PII)를 포함한 파일을 업로드한 사실을 발견했습니다. 회사는 관리자가 이후에 PII가 다시 공유되면 경고를 받기를 원합니다. 또한 회사는 자동 복구(remediation)를 원합니다.

최소한의 개발 작업으로 이러한 요구사항을 충족하려면 솔루션 설계자는 무엇을 해야 합니까?', 'A company has an application that provides marketing services to stores. The services are based on previous purchases by store customers. The stores upload transaction data to the company through SFTP, and the data is processed and analyzed to generate new marketing offers. Some of the files can exceed 200 GB in size.
Recently, the company discovered that some of the stores have uploaded files that contain personally identifiable information (PII) that should not have been included. The company wants administrators to be alerted if PII is shared again. The company also wants to automate remediation.
What should a solutions architect do to meet these requirements with the LEAST development effort?'),
  (47, '한 회사는 다가오는 이벤트를 위해 특정 AWS 리전 내 세 개의 특정 가용 영역(Availability Zones)에서 Amazon EC2 용량을 보장받아야 합니다. 이벤트 기간은 1주일입니다.

회사가 EC2 용량을 보장받으려면 무엇을 해야 합니까?', 'A company needs guaranteed Amazon EC2 capacity in three specific Availability Zones in a specific AWS Region for an upcoming event that will last 1 week.
What should the company do to guarantee the EC2 capacity?'),
  (48, '한 회사의 웹사이트는 상품 카탈로그를 위해 Amazon EC2 인스턴스 스토어를 사용합니다. 회사는 카탈로그가 **고가용성(Highly Available)**을 보장하고, 카탈로그가 **내구성 있는(Durable)** 위치에 저장되도록 하고 싶습니다.

이 요구사항을 충족하려면 솔루션 설계자는 무엇을 해야 합니까?', 'A company''s website uses an Amazon EC2 instance store for its catalog of items. The company wants to make sure that the catalog is highly available and that the catalog is stored in a durable location.
What should a solutions architect do to meet these requirements?'),
  (49, '한 회사는 통화 녹취 파일을 월 단위로 저장합니다.
사용자는 통화 후 1년 동안 파일에 무작위로 액세스하지만, 1년이 지난 후에는 액세스 빈도가 낮습니다.
회사는 1년 미만의 파일에 대해서는 사용자가 가능한 한 **빠르게 조회 및 검색**할 수 있도록 하고 싶습니다. 1년이 지난 파일을 검색할 때는 **지연이 허용**됩니다.

이 요구사항을 가장 비용 효율적으로 충족할 수 있는 솔루션은 무엇입니까?', 'A company stores call transcript files on a monthly basis. Users access the files randomly within 1 year of the call, but users access the files infrequently after 1 year. The company wants to optimize its solution by giving users the ability to query and retrieve files that are less than 1-year-old as quickly as possible. A delay in retrieving older files is acceptable.
Which solution will meet these requirements MOST cost-effectively?'),
  (50, '한 회사는 1,000개의 Amazon EC2 Linux 인스턴스에서 프로덕션 워크로드를 실행합니다.
이 워크로드는 서드파티 소프트웨어로 구동됩니다.
회사는 **모든 EC2 인스턴스에서 서드파티 소프트웨어를 가능한 한 빠르게 패치**하여 중요한 보안 취약점을 해결해야 합니다.

이 요구사항을 충족하려면 솔루션 설계자는 무엇을 해야 합니까?', 'A company has a production workload that runs on 1,000 Amazon EC2 Linux instances. The workload is powered by third-party software. The company needs to patch the third-party software on all EC2 instances as quickly as possible to remediate a critical security vulnerability.
What should a solutions architect do to meet these requirements?'),
  (51, '한 회사는 REST API를 통해 조회할 수 있는 주문 배송 통계를 제공하는 애플리케이션을 개발하고 있습니다.
회사는 배송 통계를 추출하고, 데이터를 읽기 쉬운 HTML 형식으로 정리하며, 매일 아침 같은 시간에 여러 이메일 주소로 보고서를 전송하고 싶습니다.

이 요구사항을 충족하기 위해 솔루션 설계자가 수행해야 하는 조합은 무엇입니까? (2개 선택)', 'A company is developing an application that provides order shipping statistics for retrieval by a REST API. The company wants to extract the shipping statistics, organize the data into an easy-to-read HTML format, and send the report to several email addresses at the same time every morning.
Which combination of steps should a solutions architect take to meet these requirements? (Choose two.)'),
  (52, '한 회사는 온프레미스 애플리케이션을 AWS로 마이그레이션하려고 합니다.
애플리케이션은 수십 기가바이트에서 수백 테라바이트에 이르는 출력 파일을 생성합니다.
애플리케이션 데이터는 표준 파일 시스템 구조로 저장되어야 합니다.
회사는 **자동으로 확장 가능하고, 고가용성이며, 최소 운영 오버헤드**가 필요한 솔루션을 원합니다.

이 요구사항을 충족할 솔루션은 무엇입니까?', 'A company wants to migrate its on-premises application to AWS. The application produces output files that vary in size from tens of gigabytes to hundreds of terabytes. The application data must be stored in a standard file system structure. The company wants a solution that scales automatically. is highly available, and requires minimum operational overhead.
Which solution will meet these requirements?'),
  (53, '한 회사는 회계 기록을 Amazon S3에 저장해야 합니다.
기록은 **처음 1년 동안 즉시 액세스 가능**해야 하며, 이후 추가 **9년 동안 아카이브**되어야 합니다.
회사의 누구도, 관리자 사용자나 루트 사용자도 **전체 10년 동안 기록을 삭제할 수 없어야 합니다.**
기록은 **최대 내구성**으로 저장되어야 합니다.

이 요구사항을 충족할 솔루션은 무엇입니까?', 'A company needs to store its accounting records in Amazon S3. The records must be immediately accessible for 1 year and then must be archived for an additional 9 years. No one at the company, including administrative users and root users, can be able to delete the records during the entire 10-year period. The records must be stored with maximum resiliency.
Which solution will meet these requirements?'),
  (54, '한 회사는 AWS에서 여러 Windows 워크로드를 실행합니다.
회사의 직원들은 두 개의 Amazon EC2 인스턴스에서 호스팅되는 Windows 파일 공유를 사용합니다.
파일 공유는 서로 데이터를 동기화하고 복제본을 유지합니다.
회사는 **현재 사용자가 파일에 접근하는 방식을 그대로 유지하면서, 고가용성과 내구성을 갖춘 스토리지 솔루션**을 원합니다.

이 요구사항을 충족할 솔루션은 무엇입니까?', 'A company runs multiple Windows workloads on AWS. The company''s employees use Windows file shares that are hosted on two Amazon EC2 instances. The file shares synchronize data between themselves and maintain duplicate copies. The company wants a highly available and durable storage solution that preserves how users currently access the files.
What should a solutions architect do to meet these requirements?'),
  (55, '솔루션 아키텍트가 여러 서브넷을 포함하는 VPC 아키텍처를 설계하고 있습니다.
이 아키텍처는 Amazon EC2 인스턴스와 Amazon RDS DB 인스턴스를 사용하는 애플리케이션을 호스팅합니다.
아키텍처에는 두 개의 가용 영역(AZ)에 걸쳐 총 6개의 서브넷이 있습니다.
각 가용 영역에는 퍼블릭 서브넷, 프라이빗 서브넷, 데이터베이스 전용 서브넷이 포함되어 있습니다.
**RDS 데이터베이스에 접근할 수 있는 것은 프라이빗 서브넷에서 실행되는 EC2 인스턴스뿐입니다.**

이 요구사항을 충족하는 솔루션은 무엇입니까?', 'A solutions architect is developing a VPC architecture that includes multiple subnets. The architecture will host applications that use Amazon EC2 instances and Amazon RDS DB instances. The architecture consists of six subnets in two Availability Zones. Each Availability Zone includes a public subnet, a private subnet, and a dedicated subnet for databases. Only EC2 instances that run in the private subnets can have access to the RDS databases.
Which solution will meet these requirements?'),
  (56, '한 회사가 Amazon Route 53에 도메인 이름을 등록했습니다.
회사는 캐나다 중부(ca-central-1) 리전에서 Amazon API Gateway를 백엔드 마이크로서비스 API의 퍼블릭 인터페이스로 사용하고 있습니다.
서드파티 서비스들이 API를 안전하게 사용합니다.
회사는 API Gateway URL을 회사 도메인 이름과 해당 인증서를 사용하도록 설계하여 서드파티 서비스가 HTTPS를 사용할 수 있도록 하고 싶습니다.

이 요구사항을 충족하는 솔루션은 무엇입니까?', 'A company has registered its domain name with Amazon Route 53. The company uses Amazon API Gateway in the ca-central-1 Region as a public interface for its backend microservice APIs. Third-party services consume the APIs securely. The company wants to design its API Gateway URL with the company''s domain name and corresponding certificate so that the third-party services can use HTTPS.
Which solution will meet these requirements?'),
  (57, '한 회사가 인기 있는 소셜 미디어 웹사이트를 운영하고 있습니다.
웹사이트는 사용자가 이미지를 업로드하여 다른 사용자와 공유할 수 있는 기능을 제공합니다.
회사는 업로드된 이미지가 부적절한 콘텐츠를 포함하지 않도록 하고자 합니다.
회사는 개발 노력을 최소화하는 솔루션이 필요합니다.

이 요구사항을 충족하는 솔루션은 무엇입니까?', 'A company is running a popular social media website. The website gives users the ability to upload images to share with other users. The company wants to make sure that the images do not contain inappropriate content. The company needs a solution that minimizes development effort.
What should a solutions architect do to meet these requirements?'),
  (58, '한 회사가 확장성과 가용성 요구사항을 충족하기 위해 중요 애플리케이션을 컨테이너로 실행하고자 합니다.
회사는 중요 애플리케이션의 유지 관리에 집중하기를 원합니다.
회사는 컨테이너화된 워크로드를 실행하는 **기반 인프라를 프로비저닝하거나 관리하는 책임**을 지고 싶지 않습니다.

이 요구사항을 충족하는 솔루션은 무엇입니까?', 'A company wants to run its critical applications in containers to meet requirements for scalability and availability. The company prefers to focus on maintenance of the critical applications. The company does not want to be responsible for provisioning and managing the underlying infrastructure that runs the containerized workload.
What should a solutions architect do to meet these requirements?'),
  (59, '한 회사가 전 세계 300개 이상의 웹사이트와 애플리케이션을 호스팅하고 있습니다.
회사는 하루에 30TB 이상의 클릭스트림 데이터를 분석할 수 있는 플랫폼이 필요합니다.

이 클릭스트림 데이터를 전송하고 처리하기 위해 솔루션 설계자는 무엇을 해야 합니까?', 'A company hosts more than 300 global websites and applications. The company requires a platform to analyze more than 30 TB of clickstream data each day.
What should a solutions architect do to transmit and process the clickstream data?'),
  (60, '한 회사가 AWS에 호스팅된 웹사이트를 운영하고 있습니다.
웹사이트는 HTTP와 HTTPS를 각각 처리하도록 구성된 Application Load Balancer(ALB) 뒤에 있습니다.
회사는 웹사이트에 대한 모든 요청이 HTTPS를 사용하도록 전달되기를 원합니다.

이 요구사항을 충족하기 위해 솔루션 설계자는 무엇을 해야 합니까?', 'A company has a website hosted on AWS. The website is behind an Application Load Balancer (ALB) that is configured to handle HTTP and HTTPS separately. The company wants to forward all requests to the website so that the requests will use HTTPS.
What should a solutions architect do to meet this requirement?'),
  (61, '한 회사가 AWS에서 2계층 웹 애플리케이션을 개발하고 있습니다.
회사의 개발자는 애플리케이션을 Amazon EC2 인스턴스에 배포했으며, 이 인스턴스는 백엔드 Amazon RDS 데이터베이스에 직접 연결됩니다.

회사는 애플리케이션에 데이터베이스 자격 증명을 하드코딩하지 않아야 합니다.
또한 데이터베이스 자격 증명을 정기적으로 자동으로 교체하는 솔루션을 구현해야 합니다.

운영 부담이 가장 적은 솔루션은 무엇입니까?', 'A company is developing a two-tier web application on AWS. The company''s developers have deployed the application on an Amazon EC2 instance that connects directly to a backend Amazon RDS database. The company must not hardcode database credentials in the application. The company must also implement a solution to automatically rotate the database credentials on a regular basis.
Which solution will meet these requirements with the LEAST operational overhead?'),
  (62, '한 회사가 AWS에 새로운 퍼블릭 웹 애플리케이션을 배포하고 있습니다.
애플리케이션은 Application Load Balancer(ALB) 뒤에서 실행됩니다.

애플리케이션은 외부 인증 기관(CA)이 발급한 SSL/TLS 인증서를 사용하여 엣지에서 암호화되어야 합니다.
인증서는 만료되기 전에 매년 교체해야 합니다.

이 요구 사항을 충족하는 솔루션은 무엇입니까?', 'A company is deploying a new public web application to AWS. The application will run behind an Application Load Balancer (ALB). The application needs to be encrypted at the edge with an SSL/TLS certificate that is issued by an external certificate authority (CA). The certificate must be rotated each year before the certificate expires.
What should a solutions architect do to meet these requirements?'),
  (63, '한 회사가 AWS에서 인프라를 운영하고 있으며, 문서 관리 애플리케이션을 위한 70만 명의 등록 사용자를 보유하고 있습니다.
회사는 대용량 .pdf 파일을 .jpg 이미지 파일로 변환하는 제품을 만들고자 합니다.

.pdf 파일 평균 크기는 5MB입니다.
회사는 원본 파일과 변환된 파일을 모두 저장해야 합니다.
솔루션 아키텍트는 시간이 지남에 따라 급격히 증가할 수 있는 수요를 수용할 수 있는 확장 가능한 솔루션을 설계해야 합니다.

이 요구 사항을 가장 비용 효율적으로 충족하는 솔루션은 무엇입니까?', 'A company runs its infrastructure on AWS and has a registered base of 700,000 users for its document management application. The company intends to create a product that converts large .pdf files to .jpg image files. The .pdf files average 5 MB in size. The company needs to store the original files and the converted files. A solutions architect must design a scalable solution to accommodate demand that will grow rapidly over time.
Which solution meets these requirements MOST cost-effectively?'),
  (64, '한 회사는 온프레미스에서 실행되는 Windows 파일 서버에 5TB 이상의 파일 데이터를 보유하고 있습니다.
사용자와 애플리케이션은 매일 이 데이터와 상호작용합니다.

회사는 Windows 워크로드를 AWS로 이전하고 있습니다. 이전 과정에서도 회사는 AWS와 온프레미스 파일 스토리지 모두에 **최소 지연(latency)으로 접근**해야 합니다.
회사는 **운영 오버헤드를 최소화**하고 기존 파일 접근 패턴을 크게 변경하지 않는 솔루션이 필요합니다.
회사는 AWS와의 연결을 위해 **AWS Site-to-Site VPN**을 사용합니다.

이 요구 사항을 충족하는 솔루션은 무엇입니까?', 'A company has more than 5 TB of file data on Windows file servers that run on premises. Users and applications interact with the data each day.
The company is moving its Windows workloads to AWS. As the company continues this process, the company requires access to AWS and on-premises file storage with minimum latency. The company needs a solution that minimizes operational overhead and requires no significant changes to the existing file access patterns. The company uses an AWS Site-to-Site VPN connection for connectivity to AWS.
What should a solutions architect do to meet these requirements?'),
  (65, '한 병원이 최근 Amazon API Gateway와 AWS Lambda를 사용하여 RESTful API를 배포했습니다.
병원은 API Gateway와 Lambda를 사용하여 PDF 형식 및 JPEG 형식의 보고서를 업로드합니다.

병원은 Lambda 코드를 수정하여 보고서에서 **보호 건강 정보(PHI)**를 식별할 수 있어야 합니다.

이 요구 사항을 가장 **운영 오버헤드가 적게** 충족하는 솔루션은 무엇입니까?', 'A hospital recently deployed a RESTful API with Amazon API Gateway and AWS Lambda. The hospital uses API Gateway and Lambda to upload reports that are in PDF format and JPEG format. The hospital needs to modify the Lambda code to identify protected health information (PHI) in the reports.
Which solution will meet these requirements with the LEAST operational overhead?'),
  (66, '한 회사는 애플리케이션에서 많은 파일을 생성하며, 각 파일 크기는 약 5MB입니다.
파일은 Amazon S3에 저장됩니다. 회사 정책상 파일은 삭제되기 전에 4년 동안 저장되어야 합니다.
파일은 중요한 비즈니스 데이터를 포함하고 있으며, 재생산이 쉽지 않으므로 항상 즉시 접근 가능해야 합니다.

파일은 객체 생성 후 처음 30일 동안 자주 접근되지만, 이후에는 거의 접근되지 않습니다.

가장 **비용 효율적인 스토리지 솔루션**은 무엇입니까?', 'A company has an application that generates a large number of files, each approximately 5 MB in size. The files are stored in Amazon S3. Company policy requires the files to be stored for 4 years before they can be deleted. Immediate accessibility is always required as the files contain critical business data that is not easy to reproduce. The files are frequently accessed in the first 30 days of the object creation but are rarely accessed after the first 30 days.
Which storage solution is MOST cost-effective?'),
  (67, '한 회사는 여러 Amazon EC2 인스턴스에서 애플리케이션을 호스팅합니다.
이 애플리케이션은 Amazon SQS 큐에서 메시지를 처리하고, Amazon RDS 테이블에 기록하며, 큐에서 메시지를 삭제합니다.

가끔 RDS 테이블에 **중복 레코드**가 발견됩니다.
SQS 큐에는 중복 메시지가 없습니다.

메시지가 **한 번만 처리되도록** 보장하려면, 솔루션 아키텍트는 무엇을 해야 합니까?', 'A company hosts an application on multiple Amazon EC2 instances. The application processes messages from an Amazon SQS queue, writes to an Amazon RDS table, and deletes the message from the queue. Occasional duplicate records are found in the RDS table. The SQS queue does not contain any duplicate messages.
What should a solutions architect do to ensure messages are being processed once only?'),
  (68, '솔루션 아키텍트가 회사의 온프레미스 인프라를 AWS로 확장하는 새로운 하이브리드 아키텍처를 설계하고 있습니다.
회사는 AWS 리전과 **일관된 낮은 지연 시간**을 가진 **고가용성 연결**이 필요합니다.
회사는 비용을 최소화하고 싶으며, **주 연결이 실패할 경우 트래픽 속도가 느려지는 것을 허용**할 의향이 있습니다.

솔루션 아키텍트는 이러한 요구사항을 충족하기 위해 무엇을 해야 합니까?', 'A solutions architect is designing a new hybrid architecture to extend a company''s on-premises infrastructure to AWS. The company requires a highly available connection with consistent low latency to an AWS Region. The company needs to minimize costs and is willing to accept slower traffic if the primary connection fails.
What should the solutions architect do to meet these requirements?'),
  (69, '회사는 Amazon EC2 인스턴스 뒤에서 Application Load Balancer를 사용하는 비즈니스 핵심 웹 애플리케이션을 실행하고 있습니다.
EC2 인스턴스는 Auto Scaling 그룹에 속해 있습니다.
애플리케이션은 단일 가용 영역에 배포된 Amazon Aurora PostgreSQL 데이터베이스를 사용합니다.

회사는 애플리케이션을 **최소 다운타임과 최소 데이터 손실**로 **고가용성**으로 만들고자 합니다.

이 요구사항을 **가장 적은 운영 노력**으로 충족하려면 어떤 솔루션을 선택해야 합니까?', 'A company is running a business-critical web application on Amazon EC2 instances behind an Application Load Balancer. The EC2 instances are in an Auto Scaling group. The application uses an Amazon Aurora PostgreSQL database that is deployed in a single Availability Zone. The company wants the application to be highly available with minimum downtime and minimum loss of data.
Which solution will meet these requirements with the LEAST operational effort?'),
  (70, '회사의 HTTP 애플리케이션이 Network Load Balancer(NLB) 뒤에서 실행되고 있습니다.
NLB의 대상 그룹은 웹 서비스를 실행하는 여러 EC2 인스턴스로 구성된 Amazon EC2 Auto Scaling 그룹을 사용하도록 설정되어 있습니다.

회사는 NLB가 애플리케이션의 HTTP 오류를 감지하지 못하는 것을 발견했습니다.
이러한 오류가 발생하면 웹 서비스를 실행하는 EC2 인스턴스를 수동으로 재시작해야 합니다.

회사는 **커스텀 스크립트나 코드를 작성하지 않고** 애플리케이션의 가용성을 개선하고자 합니다.
이 요구사항을 충족하려면 어떤 솔루션을 선택해야 합니까?', 'A company''s HTTP application is behind a Network Load Balancer (NLB). The NLB''s target group is configured to use an Amazon EC2 Auto Scaling group with multiple EC2 instances that run the web service.
The company notices that the NLB is not detecting HTTP errors for the application. These errors require a manual restart of the EC2 instances that run the web service. The company needs to improve the application''s availability without writing custom scripts or code.
What should a solutions architect do to meet these requirements?'),
  (71, '한 회사는 고객 정보를 저장하기 위해 Amazon DynamoDB를 사용하는 쇼핑 애플리케이션을 운영합니다.
데이터 손상(corruption) 발생 시, 솔루션 설계자는 다음 목표치를 만족하는 복구 설계를 해야 합니다:
- RPO(복구 시점 목표): 15분
- RTO(복구 시간 목표): 1시간

이 요구사항을 충족하려면 솔루션 설계자는 무엇을 권장해야 합니까?', 'A company runs a shopping application that uses Amazon DynamoDB to store customer information. In case of data corruption, a solutions architect needs to design a solution that meets a recovery point objective (RPO) of 15 minutes and a recovery time objective (RTO) of 1 hour.
What should the solutions architect recommend to meet these requirements?'),
  (72, '한 회사는 동일한 AWS 리전에 위치한 Amazon S3 버킷에 사진을 자주 업로드하고 다운로드해야 하는 사진 처리 애플리케이션을 실행합니다.
솔루션 설계자는 데이터 전송 요금의 증가를 발견했으며 이러한 비용을 절감할 수 있는 솔루션을 구현해야 합니다.
솔루션 설계자는 이 요구사항을 어떻게 충족할 수 있습니까?', 'A company runs a photo processing application that needs to frequently upload and download pictures from Amazon S3 buckets that are located in the same AWS Region. A solutions architect has noticed an increased cost in data transfer fees and needs to implement a solution to reduce these costs.
How can the solutions architect meet this requirement?'),
  (73, '한 회사는 최근 VPC의 퍼블릭 서브넷에 Linux 기반의 배스천(중간) 호스트를 Amazon EC2 인스턴스로 실행하고, 프라이빗 서브넷에 Linux 기반 애플리케이션 인스턴스를 Amazon EC2에 실행했습니다.
솔루션 설계자는 온프레미스 네트워크에서 회사의 인터넷 연결을 통해 배스천 호스트로 접속하고, 배스천 호스트를 통해 애플리케이션 서버에 접속해야 합니다. 솔루션 설계자는 모든 EC2 인스턴스의 보안 그룹이 해당 접근을 허용하도록 보장해야 합니다.
이 요구사항을 충족하려면 어떤 조치 조합을 취해야 합니까? (두 가지 선택)', 'A company recently launched Linux-based application instances on Amazon EC2 in a private subnet and launched a Linux-based bastion host on an Amazon EC2 instance in a public subnet of a VPC. A solutions architect needs to connect from the on-premises network, through the company''s internet connection, to the bastion host, and to the application servers. The solutions architect must make sure that the security groups of all the EC2 instances will allow that access.
Which combination of steps should the solutions architect take to meet these requirements? (Choose two.)'),
  (74, '솔루션 설계자는 2계층 웹 애플리케이션을 설계하고 있습니다. 애플리케이션은 퍼블릭 서브넷의 Amazon EC2에서 호스트되는 퍼블릭용 웹 계층으로 구성됩니다. 데이터베이스 계층은 프라이빗 서브넷에서 Amazon EC2에서 실행되는 Microsoft SQL Server로 구성됩니다. 회사는 보안을 매우 중요하게 생각합니다.
이 상황에서 보안 그룹을 어떻게 구성해야 합니까? (두 가지 선택)', 'A solutions architect is designing a two-tier web application. The application consists of a public-facing web tier hosted on Amazon EC2 in public subnets. The database tier consists of Microsoft SQL Server running on Amazon EC2 in a private subnet. Security is a high priority for the company.
How should security groups be configured in this situation? (Choose two.)'),
  (75, '한 회사는 애플리케이션의 성능을 개선하기 위해 온프레미스에서 AWS 클라우드로 다계층(Multi-tier) 애플리케이션을 이전하려고 합니다.
애플리케이션은 서로 RESTful 서비스로 통신하는 애플리케이션 계층으로 구성됩니다. 한 계층이 과부하되면 트랜잭션이 손실(drop)됩니다. 솔루션 설계자는 이러한 문제를 해결하고 애플리케이션을 모던화해야 합니다.
어떤 솔루션이 이러한 요구사항을 충족하고 가장 운영적으로 효율적입니까?', 'A company wants to move a multi-tiered application from on premises to the AWS Cloud to improve the application''s performance. The application consists of application tiers that communicate with each other by way of RESTful services. Transactions are dropped when one tier becomes overloaded. A solutions architect must design a solution that resolves these issues and modernizes the application.
Which solution meets these requirements and is the MOST operationally efficient?'),
  (76, '한 회사는 공장 한 곳에 위치한 여러 장비로부터 매일 10TB의 계측(instrumentation) 데이터를 수신합니다. 데이터는 공장 내 온프레미스 데이터 센터의 SAN에 JSON 파일로 저장됩니다. 회사는 이 데이터를 Amazon S3로 전송하여 여러 추가 시스템이 실시간에 가깝게 분석할 수 있도록 하려 합니다. 데이터는 민감하므로 전송 보안이 중요합니다.
어떤 솔루션이 가장 신뢰성 높은 데이터 전송을 제공합니까?', 'A company receives 10 TB of instrumentation data each day from several machines located at a single factory. The data consists of JSON files stored on a storage area network (SAN) in an on-premises data center located within the factory. The company wants to send this data to Amazon S3 where it can be accessed by several additional systems that provide critical near-real-time analytics. A secure transfer is important because the data is considered sensitive.
Which solution offers the MOST reliable data transfer?'),
  (77, '한 회사는 애플리케이션을 위해 실시간 데이터 수집(ingestion) 아키텍처를 구성해야 합니다. 회사는 데이터가 스트리밍되는 동안 데이터를 변환하는 프로세스를 위한 API, 그리고 데이터를 저장할 솔루션이 필요합니다.
어떤 솔루션이 최소한의 운영 오버헤드로 이러한 요구사항을 충족할 수 있습니까?', 'A company needs to configure a real-time data ingestion architecture for its application. The company needs an API, a process that transforms data as the data is streamed, and a storage solution for the data.
Which solution will meet these requirements with the LEAST operational overhead?'),
  (78, '한 회사는 사용자 거래 데이터를 Amazon DynamoDB 테이블에 보관해야 합니다. 회사는 데이터를 7년 동안 보존해야 합니다.
이 요구사항을 가장 운영 효율적으로 충족하는 솔루션은 무엇입니까?', 'A company needs to keep user transaction data in an Amazon DynamoDB table. The company must retain the data for 7 years.
What is the MOST operationally efficient solution that meets these requirements?'),
  (79, '한 회사는 데이터 저장을 위해 Amazon DynamoDB 테이블을 사용할 계획입니다. 회사는 비용 최적화에 대해 우려하고 있습니다. 테이블은 대부분의 아침 시간에는 사용되지 않을 예정입니다. 저녁에는 읽기 및 쓰기 트래픽이 종종 예측할 수 없습니다. 트래픽이 급증할 경우 매우 빠르게 발생합니다.
솔루션 설계자는 무엇을 권장해야 합니까?', 'A company is planning to use an Amazon DynamoDB table for data storage. The company is concerned about cost optimization. The table will not be used on most mornings. In the evenings, the read and write traffic will often be unpredictable. When traffic spikes occur, they will happen very quickly.
What should a solutions architect recommend?'),
  (80, '한 회사는 최근 애플리케이션 마이그레이션 이니셔티브를 지원하기 위해 AWS 관리 서비스 제공업체(MSP) 파트너와 계약을 체결했습니다. 솔루션 설계자는 기존 AWS 계정에서 MSP 파트너의 AWS 계정으로 Amazon Machine Image(AMI)를 공유해야 합니다. AMI는 Amazon Elastic Block Store(Amazon EBS)에 의해 백업되며, AWS Key Management Service(AWS KMS) 고객 관리 키를 사용하여 EBS 볼륨 스냅샷을 암호화합니다.
솔루션 설계자가 MSP 파트너의 AWS 계정과 AMI를 공유하기 위한 가장 안전한 방법은 무엇입니까?', 'A company recently signed a contract with an AWS Managed Service Provider (MSP) Partner for help with an application migration initiative. A solutions architect needs ta share an Amazon Machine Image (AMI) from an existing AWS account with the MSP Partner''s AWS account. The AMI is backed by Amazon Elastic Block Store (Amazon EBS) and uses an AWS Key Management Service (AWS KMS) customer managed key to encrypt EBS volume snapshots.
What is the MOST secure way for the solutions architect to share the AMI with the MSP Partner''s AWS account?'),
  (81, '솔루션 설계자가 AWS에 배포되는 새로운 애플리케이션의 클라우드 아키텍처를 설계하고 있습니다.
프로세스는 병렬로 실행되어야 하며, 처리할 작업 수에 따라 애플리케이션 노드를 추가하거나 제거해야 합니다.
프로세서 애플리케이션은 상태가 없으며(stateless) 솔루션 설계자는 애플리케이션이 느슨하게 결합되도록 하고, 작업 항목이 내구성 있게 저장되도록 해야 합니다.', 'A solutions architect is designing the cloud architecture for a new application being deployed on AWS. The process should run in parallel while adding and removing application nodes as needed based on the number of jobs to be processed. The processor application is stateless. The solutions architect must ensure that the application is loosely coupled and the job items are durably stored.
Which design should the solutions architect use?'),
  (82, '회사는 AWS 클라우드에서 웹 애플리케이션을 호스팅합니다.
회사는 Elastic Load Balancer에서 AWS Certificate Manager(ACM)에 가져온 인증서를 사용하도록 구성합니다.
회사의 보안 팀은 각 인증서가 만료되기 30일 전에 알림을 받아야 합니다.', 'A company hosts its web applications in the AWS Cloud. The company configures Elastic Load Balancers to use certificates that are imported into AWS Certificate Manager (ACM). The company''s security team must be notified 30 days before the expiration of each certificate.
What should a solutions architect recommend to meet this requirement?'),
  (83, '회사의 동적 웹사이트는 미국 내 온프레미스 서버에서 호스팅됩니다.
회사는 제품을 유럽에서 출시하고 있으며, 새로운 유럽 사용자를 위해 사이트 로딩 시간을 최적화하고자 합니다.
사이트의 백엔드는 미국에 남아 있어야 합니다.
제품 출시가 며칠 남지 않아 즉시 해결책이 필요합니다.', 'A company''s dynamic website is hosted using on-premises servers in the United States. The company is launching its product in Europe, and it wants to optimize site loading times for new European users. The site''s backend must remain in the United States. The product is being launched in a few days, and an immediate solution is needed.
What should the solutions architect recommend?'),
  (84, '한 회사는 기존 3계층 웹 아키텍처의 비용을 절감하고자 합니다. 웹, 애플리케이션, 데이터베이스 서버는 개발, 테스트, 프로덕션 환경에서 Amazon EC2 인스턴스로 실행되고 있습니다. EC2 인스턴스는 피크 시간 동안 평균 30% CPU 사용률을 보이며, 비피크 시간에는 평균 10% CPU 사용률을 보입니다.
프로덕션 EC2 인스턴스는 하루 24시간 실행됩니다. 개발 및 테스트 EC2 인스턴스는 하루 최소 8시간 동안 실행됩니다. 회사는 개발 및 테스트 EC2 인스턴스가 사용되지 않을 때 자동으로 중지하도록 구현할 계획입니다.
회사의 요구사항을 가장 비용 효율적으로 충족할 수 있는 EC2 인스턴스 구매 솔루션은 무엇입니까?', 'A company wants to reduce the cost of its existing three-tier web architecture. The web, application, and database servers are running on Amazon EC2 instances for the development, test, and production environments. The EC2 instances average 30% CPU utilization during peak hours and 10% CPU utilization during non-peak hours.
The production EC2 instances run 24 hours a day. The development and test EC2 instances run for at least 8 hours each day. The company plans to implement automation to stop the development and test EC2 instances when they are not in use.
Which EC2 instance purchasing solution will meet the company''s requirements MOST cost-effectively?'),
  (85, '한 회사는 사용자가 웹 인터페이스 또는 모바일 앱을 통해 문서를 업로드하는 프로덕션 웹 애플리케이션을 보유하고 있습니다. 새로운 규제 요구사항에 따르면, 새로 업로드된 문서는 저장된 후 수정하거나 삭제할 수 없습니다.
이 요구사항을 충족하기 위해 솔루션스 아키텍트는 무엇을 해야 합니까?', 'A company has a production web application in which users upload documents through a web interface or a mobile app. According to a new regulatory requirement. new documents cannot be modified or deleted after they are stored.
What should a solutions architect do to meet this requirement?'),
  (86, '한 회사에는 공통 Amazon RDS MySQL Multi-AZ DB 인스턴스에 자주 액세스해야 하는 여러 웹 서버가 있습니다. 회사는 웹 서버가 데이터베이스에 연결할 수 있는 안전한 방법을 원하며, 사용자 자격 증명을 자주 회전해야 한다는 보안 요구 사항을 충족해야 합니다.
이 요구 사항을 충족하는 솔루션은 무엇입니까?', 'A company has several web servers that need to frequently access a common Amazon RDS MySQL Multi-AZ DB instance. The company wants a secure method for the web servers to connect to the database while meeting a security requirement to rotate user credentials frequently.
Which solution meets these requirements?'),
  (87, '한 회사는 Amazon API Gateway API에서 호출되는 AWS Lambda 함수에서 애플리케이션을 호스팅합니다. Lambda 함수는 고객 데이터를 Amazon Aurora MySQL 데이터베이스에 저장합니다. 회사가 데이터베이스를 업그레이드할 때마다 Lambda 함수가 데이터베이스 연결을 설정하지 못하여 업그레이드가 완료될 때까지 실패합니다. 그 결과 일부 이벤트에 대한 고객 데이터가 기록되지 않습니다.
솔루션 설계자는 데이터베이스 업그레이드 동안 생성된 고객 데이터를 저장할 수 있는 솔루션을 설계해야 합니다.
이 요구 사항을 충족하는 솔루션은 무엇입니까?', 'A company hosts an application on AWS Lambda functions that are invoked by an Amazon API Gateway API. The Lambda functions save customer data to an Amazon Aurora MySQL database. Whenever the company upgrades the database, the Lambda functions fail to establish database connections until the upgrade is complete. The result is that customer data is not recorded for some of the event.
A solutions architect needs to design a solution that stores customer data that is created during database upgrades.
Which solution will meet these requirements?'),
  (88, '한 설문조사 회사는 미국 내 여러 지역에서 수년간 데이터를 수집했습니다. 회사는 데이터를 Amazon S3 버킷에 호스팅하고 있으며, 버킷의 크기는 3TB이고 계속 증가하고 있습니다. 회사는 이제 이 데이터를 유럽의 마케팅 회사와 공유하기 시작했습니다. 마케팅 회사도 S3 버킷을 보유하고 있습니다. 회사는 데이터 전송 비용을 가능한 한 낮게 유지하고자 합니다.
이 요구 사항을 충족하는 솔루션은 무엇입니까?', 'A survey company has gathered data for several years from areas in the United States. The company hosts the data in an Amazon S3 bucket that is 3 TB in size and growing. The company has started to share the data with a European marketing firm that has S3 buckets. The company wants to ensure that its data transfer costs remain as low as possible.
Which solution will meet these requirements?'),
  (89, '한 회사는 기밀 감사 문서를 저장하기 위해 Amazon S3를 사용합니다. S3 버킷은 최소 권한 원칙에 따라 감사팀 IAM 사용자 자격 증명에 대한 액세스를 제한하는 버킷 정책을 사용합니다. 회사 관리자들은 S3 버킷 내 문서의 실수로 인한 삭제를 우려하며 보다 안전한 솔루션을 원합니다.
감사 문서를 보호하기 위해 솔루션스 아키텍트가 수행해야 하는 작업은 무엇입니까?', 'A company uses Amazon S3 to store its confidential audit documents. The S3 bucket uses bucket policies to restrict access to audit team IAM user credentials according to the principle of least privilege. Company managers are worried about accidental deletion of documents in the S3 bucket and want a more secure solution.
What should a solutions architect do to secure the audit documents?'),
  (90, '한 회사는 공개적으로 접근 가능한 영화 데이터를 저장하기 위해 SQL 데이터베이스를 사용합니다. 데이터베이스는 Amazon RDS Single-AZ DB 인스턴스에서 실행됩니다. 스크립트는 매일 임의의 간격으로 쿼리를 실행하여 데이터베이스에 새로 추가된 영화 수를 기록합니다. 스크립트는 업무 시간 동안 최종 합계를 보고해야 합니다.
회사의 개발팀은 스크립트가 실행될 때 데이터베이스 성능이 개발 작업에 충분하지 않다는 것을 발견했습니다. 솔루션스 아키텍트는 이 문제를 해결할 수 있는 솔루션을 권장해야 합니다.
어떤 솔루션이 가장 적은 운영 오버헤드로 이 요구 사항을 충족합니까?', 'A company is using a SQL database to store movie data that is publicly accessible. The database runs on an Amazon RDS Single-AZ DB instance. A script runs queries at random intervals each day to record the number of new movies that have been added to the database. The script must report a final total during business hours.
The company''s development team notices that the database performance is inadequate for development tasks when the script is running. A solutions architect must recommend a solution to resolve this issue.
Which solution will meet this requirement with the LEAST operational overhead?'),
  (91, '한 회사는 VPC 내 Amazon EC2 인스턴스에서 애플리케이션을 실행합니다. 그 애플리케이션 중 하나는 Amazon S3 API를 호출하여 객체를 저장하고 읽어야 합니다. 회사의 보안 규정에 따르면, 애플리케이션에서 나가는 트래픽은 인터넷을 경유할 수 없습니다.
어떤 솔루션이 이러한 요구 사항을 충족합니까?', 'A company has applications that run on Amazon EC2 instances in a VPC. One of the applications needs to call the Amazon S3 API to store and read objects. According to the company''s security regulations, no traffic from the applications is allowed to travel across the internet.
Which solution will meet these requirements?'),
  (92, '한 회사는 민감한 사용자 정보를 Amazon S3 버킷에 저장하고 있습니다. 회사는 VPC 내부에서 실행되는 Amazon EC2 인스턴스의 애플리케이션 계층에서 이 버킷에 안전하게 접근할 수 있도록 하고 싶습니다.
이 목표를 달성하기 위해 솔루션 아키텍트가 수행해야 할 단계 조합은 무엇입니까? (두 가지 선택)', 'A company is storing sensitive user information in an Amazon S3 bucket. The company wants to provide secure access to this bucket from the application tier running on Amazon EC2 instances inside a VPC.
Which combination of steps should a solutions architect take to accomplish this? (Choose two.)'),
  (93, '한 회사는 MySQL 데이터베이스를 사용하는 온프레미스 애플리케이션을 운영하고 있습니다. 회사는 애플리케이션의 탄력성과 가용성을 높이기 위해 애플리케이션을 AWS로 마이그레이션하고자 합니다.
현재 아키텍처에서는 정상 운영 시 데이터베이스에서 읽기 작업이 많습니다. 개발팀은 4시간마다 프로덕션 데이터베이스의 전체 내보내기(full export)를 수행하여 스테이징 환경의 데이터베이스를 채웁니다. 이 동안 사용자들은 애플리케이션 지연(latency)이 허용 불가 수준으로 증가합니다. 개발팀은 이 절차가 완료될 때까지 스테이징 환경을 사용할 수 없습니다.
솔루션 아키텍트는 애플리케이션 지연 문제를 완화하고, 개발팀이 스테이징 환경을 지연 없이 계속 사용할 수 있는 교체 아키텍처를 추천해야 합니다.
이 요구사항을 충족하는 솔루션은 무엇입니까?', 'A company runs an on-premises application that is powered by a MySQL database. The company is migrating the application to AWS to increase the application''s elasticity and availability.
The current architecture shows heavy read activity on the database during times of normal operation. Every 4 hours, the company''s development team pulls a full export of the production database to populate a database in the staging environment. During this period, users experience unacceptable application latency. The development team is unable to use the staging environment until the procedure completes.
A solutions architect must recommend replacement architecture that alleviates the application latency issue. The replacement architecture also must give the development team the ability to continue using the staging environment without delay.
Which solution meets these requirements?'),
  (94, '한 회사는 사용자가 Amazon S3에 작은 파일을 업로드하는 애플리케이션을 설계하고 있습니다. 사용자가 파일을 업로드한 후, 파일은 데이터를 변환하고 JSON 형식으로 저장하기 위한 **일회성 단순 처리(one-time simple processing)**가 필요합니다.
각 파일은 업로드 직후 **가능한 한 빠르게 처리**되어야 합니다. 수요는 변동적입니다. 어떤 날에는 사용자가 많은 파일을 업로드하고, 어떤 날에는 몇 개 또는 전혀 업로드하지 않을 수 있습니다.
이 요구사항을 **가장 적은 운영 오버헤드로 충족하는 솔루션**은 무엇입니까?', 'A company is designing an application where users upload small files into Amazon S3. After a user uploads a file, the file requires one-time simple processing to transform the data and save the data in JSON format for later analysis.
Each file must be processed as quickly as possible after it is uploaded. Demand will vary. On some days, users will upload a high number of files. On other days, users will upload a few files or no files.
Which solution meets these requirements with the LEAST operational overhead?'),
  (95, '한 애플리케이션은 회사 본사 사용자가 제품 데이터에 접근할 수 있도록 허용합니다. 제품 데이터는 Amazon RDS MySQL DB 인스턴스에 저장됩니다. 운영팀은 애플리케이션 성능 저하를 격리하여 읽기 트래픽과 쓰기 트래픽을 분리하고자 합니다. 솔루션스 아키텍트는 애플리케이션 성능을 **신속하게 최적화**해야 합니다.
솔루션스 아키텍트가 권장해야 하는 방법은 무엇입니까?', 'An application allows users at a company''s headquarters to access product data. The product data is stored in an Amazon RDS MySQL DB instance. The operations team has isolated an application performance slowdown and wants to separate read traffic from write traffic. A solutions architect needs to optimize the application''s performance quickly.
What should the solutions architect recommend?'),
  (96, 'Amazon EC2 관리자가 여러 사용자가 포함된 IAM 그룹에 연결된 다음 정책을 만들었습니다:
```
{
	"Version": "2012-10-17",
	"Statement": [
		{
			"Effect": "Allow",
			"Action": "ec2:TerminateInstances",
			"Resource": "*",
			"Condition": {
				"IpAddress": {
					"aws:SourceIp": "10.100.100.0/24"
				}
			}
		},
		{
			"Effect": "Deny",
			"Action": "ec2:*",
			"Resource": "*",
			"Condition": {
				"StringNotEquals": {
					"ec2:Region": "us-east-1"
				}
			}
		}
	]
}

```
이 정책의 효과는 무엇입니까?', 'An Amazon EC2 administrator created the following policy associated with an IAM group containing several users:
---
{
	"Version": "2012-10-17",
	"Statement": [
		{
			"Effect": "Allow",
			"Action": "ec2:TerminateInstances",
			"Resource": "*",
			"Condition": {
				"IpAddress": {
					"aws:SourceIp": "10.100.100.0/24"
				}
			}
		},
		{
			"Effect": "Deny",
			"Action": "ec2:*",
			"Resource": "*",
			"Condition": {
				"StringNotEquals": {
					"ec2:Region": "us-east-1"
				}
			}
		}
	]
}
---
What is the effect of this policy?'),
  (97, '한 회사는 온프레미스에서 Microsoft SharePoint를 대규모로 배포하고 있으며 Microsoft Windows 공유 파일 스토리지가 필요합니다.
회사는 이 워크로드를 AWS 클라우드로 마이그레이션하고자 하며 다양한 스토리지 옵션을 고려하고 있습니다.
스토리지 솔루션은 고가용성을 제공해야 하며, 접근 제어를 위해 Active Directory와 통합되어야 합니다.
이 요구사항을 충족하는 솔루션은 무엇입니까?', 'A company has a large Microsoft SharePoint deployment running on-premises that requires Microsoft Windows shared file storage. The company wants to migrate this workload to the AWS Cloud and is considering various storage options. The storage solution must be highly available and integrated with Active Directory for access control.
Which solution will satisfy these requirements?'),
  (98, '이미지 처리 회사는 사용자가 이미지를 업로드하는 웹 애플리케이션을 운영하고 있습니다.
애플리케이션은 이미지를 Amazon S3 버킷에 업로드합니다.
회사는 S3 이벤트 알림을 설정하여 객체 생성 이벤트를 Amazon Simple Queue Service (Amazon SQS) 표준 큐로 게시하도록 구성했습니다.
SQS 큐는 이미지를 처리하고 결과를 이메일로 사용자에게 전송하는 AWS Lambda 함수의 이벤트 소스로 사용됩니다.
사용자들은 업로드한 이미지마다 여러 개의 이메일을 받고 있다고 보고했습니다.
솔루션스 아키텍트는 SQS 메시지가 Lambda 함수를 여러 번 호출하여 여러 이메일 메시지가 전송되는 문제를 확인했습니다.
이 문제를 **가장 적은 운영 부담**으로 해결하려면 어떻게 해야 합니까?', 'An image-processing company has a web application that users use to upload images. The application uploads the images into an Amazon S3 bucket. The company has set up S3 event notifications to publish the object creation events to an Amazon Simple Queue Service (Amazon SQS) standard queue. The SQS queue serves as the event source for an AWS Lambda function that processes the images and sends the results to users through email.
Users report that they are receiving multiple email messages for every uploaded image. A solutions architect determines that SQS messages are invoking the Lambda function more than once, resulting in multiple email messages.
What should the solutions architect do to resolve this issue with the LEAST operational overhead?'),
  (99, '한 회사는 온프레미스 데이터 센터에서 호스팅되는 게임 애플리케이션을 위해 **공유 스토리지 솔루션**을 구현하려고 합니다.
회사는 **Lustre 클라이언트**를 사용하여 데이터를 액세스할 수 있어야 합니다.
솔루션은 **완전 관리형**이어야 합니다.
이 요구 사항을 충족하는 솔루션은 무엇입니까?', 'A company is implementing a shared storage solution for a gaming application that is hosted in an on-premises data center. The company needs the ability to use Lustre clients to access data. The solution must be fully managed.
Which solution meets these requirements?'),
  (100, '한 회사의 컨테이너화된 애플리케이션이 Amazon EC2 인스턴스에서 실행됩니다.
애플리케이션은 다른 비즈니스 애플리케이션과 통신하기 전에 **보안 인증서를 다운로드**해야 합니다.
회사는 인증서를 **실시간에 가까운 수준으로 암호화 및 복호화**할 수 있는 매우 안전한 솔루션을 원합니다.
또한, 데이터를 암호화한 후에는 **고가용성 스토리지에 저장**해야 합니다.
이 요구 사항을 가장 **낮은 운영 오버헤드로** 충족하는 솔루션은 무엇입니까?', 'A company''s containerized application runs on an Amazon EC2 instance. The application needs to download security certificates before it can communicate with other business applications. The company wants a highly secure solution to encrypt and decrypt the certificates in near real time. The solution also needs to store data in highly available storage after the data is encrypted.
Which solution will meet these requirements with the LEAST operational overhead?'),
  (101, '솔루션 설계자는 퍼블릭 서브넷과 프라이빗 서브넷으로 구성된 VPC를 설계하고 있습니다. VPC와 서브넷은 IPv4 CIDR 블록을 사용합니다. 고가용성을 위해 세 개의 가용 영역(AZ) 각각에 퍼블릭 서브넷 하나와 프라이빗 서브넷 하나가 있습니다. 퍼블릭 서브넷에는 인터넷 접근을 제공하기 위해 인터넷 게이트웨이가 사용됩니다. 프라이빗 서브넷의 Amazon EC2 인스턴스는 소프트웨어 업데이트를 다운로드할 수 있도록 인터넷 접근이 필요합니다.
프라이빗 서브넷에 인터넷 접근을 가능하게 하려면 솔루션 설계자는 무엇을 해야 합니까?', 'A solutions architect is designing a VPC with public and private subnets. The VPC and subnets use IPv4 CIDR blocks. There is one public subnet and one private subnet in each of three Availability Zones (AZs) for high availability. An internet gateway is used to provide internet access for the public subnets. The private subnets require access to the internet to allow Amazon EC2 instances to download software updates.
What should the solutions architect do to enable Internet access for the private subnets?'),
  (102, '한 회사는 온프레미스 데이터 센터를 AWS로 마이그레이션하려고 합니다. 데이터 센터는 데이터를 NFS 기반 파일 시스템에 저장하는 SFTP 서버를 호스트합니다. 서버에는 전송해야 할 200GB의 데이터가 있습니다. 서버는 Amazon Elastic File System(Amazon EFS) 파일 시스템을 사용하는 Amazon EC2 인스턴스에서 호스트되어야 합니다.
이 작업을 자동화하려면 솔루션 설계자는 어떤 단계 조합을 수행해야 합니까? (두 가지 선택)', 'A company wants to migrate an on-premises data center to AWS. The data center hosts an SFTP server that stores its data on an NFS-based file system. The server holds 200 GB of data that needs to be transferred. The server must be hosted on an Amazon EC2 instance that uses an Amazon Elastic File System (Amazon EFS) file system.
Which combination of steps should a solutions architect take to automate this task? (Choose two.)'),
  (103, '한 회사는 매일 같은 시간에 실행되는 AWS Glue 추출, 변환 및 로드(ETL) 작업을 가지고 있습니다. 이 작업은 Amazon S3 버킷에 있는 XML 데이터를 처리합니다. 매일 새로운 데이터가 S3 버킷에 추가됩니다. 솔루션 설계자는 AWS Glue가 매번 실행될 때 모든 데이터를 처리한다는 것을 발견했습니다.
솔루션 설계자는 AWS Glue가 이전 데이터를 다시 처리하지 않도록 하기 위해 무엇을 해야 합니까?', 'A company has an AWS Glue extract, transform, and load (ETL) job that runs every day at the same time. The job processes XML data that is in an Amazon S3 bucket. New data is added to the S3 bucket every day. A solutions architect notices that AWS Glue is processing all the data during each run.
What should the solutions architect do to prevent AWS Glue from reprocessing old data?'),
  (104, '솔루션 설계자는 웹사이트를 위한 고가용성 인프라를 설계해야 합니다. 웹사이트는 Amazon EC2 인스턴스에서 실행되는 Windows 웹 서버로 구동됩니다. 설계자는 수천 개의 IP 주소에서 발생하는 대규모 DDoS 공격을 완화할 수 있는 솔루션을 구현해야 합니다. 웹사이트의 다운타임은 허용되지 않습니다.
이러한 공격으로부터 웹사이트를 보호하기 위해 어떤 조치를 취해야 합니까? (두 가지 선택)', 'A solutions architect must design a highly available infrastructure for a website. The website is powered by Windows web servers that run on Amazon EC2 instances. The solutions architect must implement a solution that can mitigate a large-scale DDoS attack that originates from thousands of IP addresses. Downtime is not acceptable for the website.
Which actions should the solutions architect take to protect the website from such an attack? (Choose two.)'),
  (105, '한 회사가 새로운 서버리스 워크로드를 배포할 준비를 하고 있습니다. 솔루션 설계자는 AWS Lambda 함수를 실행하는 데 사용될 권한을 최소 권한 원칙(Principle of Least Privilege)에 따라 구성해야 합니다. Amazon EventBridge(Amazon CloudWatch Events) 규칙이 이 함수를 호출합니다.
이 요구 사항을 충족하는 솔루션은 무엇입니까?', 'A company is preparing to deploy a new serverless workload. A solutions architect must use the principle of least privilege to configure permissions that will be used to run an AWS Lambda function. An Amazon EventBridge (Amazon CloudWatch Events) rule will invoke the function.
Which solution meets these requirements?'),
  (106, '한 회사는 기밀 데이터를 Amazon S3에 저장할 준비를 하고 있습니다. 규정 준수를 위해 데이터는 저장 시점에 암호화되어야 합니다. 감사 목적으로 암호화 키 사용 내역을 로깅해야 합니다. 키는 매년 교체(로테이션)되어야 합니다.
어떤 솔루션이 이러한 요구사항을 충족하고 운영 관점에서 가장 효율적입니까?', 'A company is preparing to store confidential data in Amazon S3. For compliance reasons, the data must be encrypted at rest. Encryption key usage must be logged for auditing purposes. Keys must be rotated every year.
Which solution meets these requirements and is the MOST operationally efficient?'),
  (107, '자전거 공유 회사는 피크 운영 시간 동안 자전거의 위치를 추적하기 위한 멀티티어 아키텍처를 개발 중입니다. 회사는 이 데이터 포인트들을 기존 분석 플랫폼에서 사용하려고 합니다. 솔루션 설계자는 이 아키텍처를 지원할 수 있는 가장 적합한 멀티티어 옵션을 결정해야 합니다. 데이터 포인트는 REST API를 통해 접근 가능해야 합니다.
어떤 조치가 위치 데이터 저장 및 검색 요구사항을 충족합니까?', 'A bicycle sharing company is developing a multi-tier architecture to track the location of its bicycles during peak operating hours. The company wants to use these data points in its existing analytics platform. A solutions architect must determine the most viable multi-tier option to support this architecture. The data points must be accessible from the REST API.
Which action meets these requirements for storing and retrieving location data?'),
  (108, '한 회사는 자동차 판매 웹사이트를 운영하며, 자동차 매물 정보를 Amazon RDS 데이터베이스에 저장합니다. 자동차가 판매되면, 웹사이트에서 해당 매물이 제거되어야 하고, 그 데이터는 여러 대상 시스템으로 전송되어야 합니다.
솔루션 설계자가 권장해야 할 설계는 무엇입니까?', 'A company has an automobile sales website that stores its listings in a database on Amazon RDS. When an automobile is sold, the listing needs to be removed from the website and the data must be sent to multiple target systems.
Which design should a solutions architect recommend?'),
  (109, '한 회사는 Amazon S3에 데이터를 저장해야 하며, 데이터가 변경되지 않도록 해야 합니다.
회사는 Amazon S3에 새로 업로드되는 객체가 회사가 객체를 수정하기로 결정할 때까지 일정 기간 동안 변경 불가능하도록 유지되기를 원합니다.
회사의 AWS 계정에서 특정 사용자만 객체를 삭제할 수 있어야 합니다.
이 요구사항을 충족하기 위해 솔루션 설계자가 수행해야 할 작업은 무엇입니까?', 'A company needs to store data in Amazon S3 and must prevent the data from being changed. The company wants new objects that are uploaded to Amazon S3 to remain unchangeable for a nonspecific amount of time until the company decides to modify the objects. Only specific users in the company''s AWS account can have the ability 10 delete the objects.
What should a solutions architect do to meet these requirements?'),
  (110, '한 소셜 미디어 회사는 사용자가 웹사이트에 이미지를 업로드할 수 있도록 합니다. 웹사이트는 Amazon EC2 인스턴스에서 실행됩니다. 업로드 요청 동안 웹사이트는 이미지를 표준 크기로 조정하고 조정된 이미지를 Amazon S3에 저장합니다.
사용자들은 웹사이트로의 업로드 요청이 느리다고 보고하고 있습니다.
회사는 애플리케이션 내 결합도를 줄이고 웹사이트 성능을 향상시킬 필요가 있습니다.
솔루션 설계자는 이미지 업로드를 위한 가장 운영 효율적인 프로세스를 설계해야 합니다.
이 요구사항을 충족하기 위해 솔루션 설계자가 수행해야 할 조합은 무엇입니까? (두 가지 선택)', 'A social media company allows users to upload images to its website. The website runs on Amazon EC2 instances. During upload requests, the website resizes the images to a standard size and stores the resized images in Amazon S3. Users are experiencing slow upload requests to the website.
The company needs to reduce coupling within the application and improve website performance. A solutions architect must design the most operationally efficient process for image uploads.
Which combination of actions should the solutions architect take to meet these requirements? (Choose two.)'),
  (111, '한 회사가 최근 메시지 처리 시스템을 AWS로 마이그레이션했습니다.
시스템은 Amazon EC2 인스턴스에서 실행되는 ActiveMQ 큐로 메시지를 수신합니다.
메시지는 Amazon EC2에서 실행되는 컨슈머 애플리케이션이 처리합니다.
컨슈머 애플리케이션은 메시지를 처리하고 결과를 Amazon EC2에서 실행되는 MySQL 데이터베이스에 기록합니다.
회사는 이 애플리케이션이 **높은 가용성**을 가지면서 **낮은 운영 복잡도**를 갖기를 원합니다.

어떤 아키텍처가 가장 높은 가용성을 제공합니까?', 'A company recently migrated a message processing system to AWS. The system receives messages into an ActiveMQ queue running on an Amazon EC2 instance. Messages are processed by a consumer application running on Amazon EC2. The consumer application processes the messages and writes results to a MySQL database running on Amazon EC2. The company wants this application to be highly available with low operational complexity.
Which architecture offers the HIGHEST availability?'),
  (112, '한 회사가 컨테이너화된 웹 애플리케이션을 온프레미스 서버에서 호스팅하고 있습니다.
애플리케이션은 들어오는 요청을 처리합니다.
요청 수가 빠르게 증가하고 있으며, 온프레미스 서버는 증가하는 요청 수를 처리할 수 없습니다.
회사는 애플리케이션을 최소한의 코드 변경과 최소한의 개발 노력으로 AWS로 이전하고자 합니다.

어떤 솔루션이 **가장 낮은 운영 부담(LEAST operational overhead)**으로 이러한 요구사항을 충족합니까?', 'A company hosts a containerized web application on a fleet of on-premises servers that process incoming requests. The number of requests is growing quickly. The on-premises servers cannot handle the increased number of requests. The company wants to move the application to AWS with minimum code changes and minimum development effort.
Which solution will meet these requirements with the LEAST operational overhead?'),
  (113, '한 회사는 보고용으로 50 TB의 데이터를 사용합니다.
회사는 이 데이터를 온프레미스에서 AWS로 이전하고자 합니다.
회사의 데이터 센터에서 사용자 정의 애플리케이션이 매주 데이터 변환 작업을 수행합니다.
회사는 데이터 이전이 완료될 때까지 애플리케이션을 일시 중지하고자 하며, 데이터 이전 프로세스를 가능한 빨리 시작해야 합니다.
데이터 센터에는 추가 워크로드를 위한 네트워크 대역폭이 없습니다.
솔루션스 아키텍트는 데이터를 이전하고 변환 작업이 AWS Cloud에서 계속 실행되도록 구성해야 합니다.

어떤 솔루션이 **최소 운영 부담(LEAST operational overhead)**으로 이러한 요구사항을 충족합니까?', 'A company uses 50 TB of data for reporting. The company wants to move this data from on premises to AWS. A custom application in the company’s data center runs a weekly data transformation job. The company plans to pause the application until the data transfer is complete and needs to begin the transfer process as soon as possible.
The data center does not have any available network bandwidth for additional workloads. A solutions architect must transfer the data and must configure the transformation job to continue to run in the AWS Cloud.
Which solution will meet these requirements with the LEAST operational overhead?'),
  (114, '한 회사는 사용자가 사진을 업로드하고 이미지에 사진 프레임을 추가할 수 있는 이미지 분석 애플리케이션을 만들었습니다.
사용자는 이미지를 업로드하고, 이미지에 어떤 사진 프레임을 추가할지 나타내는 메타데이터를 업로드합니다.
애플리케이션은 단일 Amazon EC2 인스턴스와 Amazon DynamoDB를 사용하여 메타데이터를 저장합니다.

애플리케이션의 인기가 높아지고 있으며, 사용자 수가 증가하고 있습니다.
회사는 동시 사용자 수가 시간대 및 요일에 따라 크게 변동할 것으로 예상합니다.
회사는 애플리케이션이 증가하는 사용자 수요를 충족하도록 **자동으로 확장**할 수 있도록 보장해야 합니다.

어떤 솔루션이 이러한 요구사항을 충족합니까?', 'A company has created an image analysis application in which users can upload photos and add photo frames to their images. The users upload images and metadata to indicate which photo frames they want to add to their images. The application uses a single Amazon EC2 instance and Amazon DynamoDB to store the metadata.
The application is becoming more popular, and the number of users is increasing. The company expects the number of concurrent users to vary significantly depending on the time of day and day of week. The company must ensure that the application can scale to meet the needs of the growing user base.
Which solution meats these requirements?'),
  (115, '한 의료 기록 회사가 Amazon EC2 인스턴스에서 애플리케이션을 호스팅하고 있습니다.
애플리케이션은 Amazon S3에 저장된 고객 데이터 파일을 처리합니다.
EC2 인스턴스는 퍼블릭 서브넷에 호스팅되어 있습니다.
EC2 인스턴스는 인터넷을 통해 Amazon S3에 접근하지만, 다른 네트워크 접근은 필요하지 않습니다.

새로운 요구사항에서는 파일 전송 네트워크 트래픽이 인터넷을 거치지 않고 **프라이빗 경로**를 통해 이루어져야 합니다.

이 요구사항을 충족하기 위해 솔루션스 아키텍트가 권장해야 하는 네트워크 아키텍처 변경은 무엇입니까?', 'A medical records company is hosting an application on Amazon EC2 instances. The application processes customer data files that are stored on Amazon S3. The EC2 instances are hosted in public subnets. The EC2 instances access Amazon S3 over the internet, but they do not require any other network access.
A new requirement mandates that the network traffic for file transfers take a private route and not be sent over the internet.
Which change to the network architecture should a solutions architect recommend to meet this requirement?'),
  (116, '한 회사가 기업 웹사이트를 위해 인기 있는 콘텐츠 관리 시스템(CMS)을 사용하고 있습니다.
그러나 필요한 패치와 유지 관리가 부담스럽습니다.
회사는 웹사이트를 재설계하고 새 솔루션을 원합니다.
웹사이트는 연간 4회 업데이트되며, 동적 콘텐츠가 반드시 필요하지 않습니다.
솔루션은 높은 확장성과 향상된 보안을 제공해야 합니다.

운영 부담이 가장 적은 방식으로 요구사항을 충족하는 변경 조합은 무엇입니까? (두 가지 선택)', 'A company uses a popular content management system (CMS) for its corporate website. However, the required patching and maintenance are burdensome. The company is redesigning its website and wants anew solution. The website will be updated four times a year and does not need to have any dynamic content available. The solution must provide high scalability and enhanced security.
Which combination of changes will meet these requirements with the LEAST operational overhead? (Choose two.)'),
  (117, '한 회사가 애플리케이션 로그를 Amazon CloudWatch Logs 로그 그룹에 저장합니다.
새 정책에 따라 회사는 모든 애플리케이션 로그를 거의 실시간으로 Amazon OpenSearch Service(Amazon Elasticsearch Service)에 저장해야 합니다.

운영 부담이 가장 적은 방식으로 이 요구사항을 충족하는 솔루션은 무엇입니까?', 'A company stores its application logs in an Amazon CloudWatch Logs log group. A new policy requires the company to store all application logs in Amazon OpenSearch Service (Amazon Elasticsearch Service) in near-real time.
Which solution will meet this requirement with the LEAST operational overhead?'),
  (118, '한 회사가 여러 가용 영역(AZ)에서 Amazon EC2 인스턴스로 실행되는 웹 기반 애플리케이션을 구축하고 있습니다.
웹 애플리케이션은 총 900TB에 달하는 텍스트 문서 저장소에 대한 액세스를 제공합니다.
회사는 웹 애플리케이션이 높은 수요를 경험할 수 있는 시기가 있을 것으로 예상합니다.
솔루션 아키텍트는 웹 애플리케이션의 수요를 항상 충족할 수 있도록 텍스트 문서 저장 구성 요소가 확장 가능하도록 해야 합니다.
회사는 솔루션의 전체 비용에 대해서도 우려하고 있습니다.

이 요구사항을 가장 비용 효율적으로 충족하는 스토리지 솔루션은 무엇입니까?', 'A company is building a web-based application running on Amazon EC2 instances in multiple Availability Zones. The web application will provide access to a repository of text documents totaling about 900 TB in size. The company anticipates that the web application will experience periods of high demand. A solutions architect must ensure that the storage component for the text documents can scale to meet the demand of the application at all times. The company is concerned about the overall cost of the solution.
Which storage solution meets these requirements MOST cost-effectively?'),
  (119, '한 글로벌 회사가 Amazon API Gateway를 사용하여 미국(us-east-1) 및 아시아-태평양(ap-southeast-2) 리전에서 로열티 클럽 사용자를 위한 REST API를 설계하고 있습니다.
솔루션 아키텍트는 SQL 인젝션과 크로스 사이트 스크립팅(XSS) 공격으로부터 여러 계정에 걸쳐 있는 API Gateway 관리 REST API를 보호할 수 있는 솔루션을 설계해야 합니다.

관리 부담을 최소화하면서 이러한 요구사항을 충족하는 솔루션은 무엇입니까?', 'A global company is using Amazon API Gateway to design REST APIs for its loyalty club users in the us-east-1 Region and the ap-southeast-2 Region. A solutions architect must design a solution to protect these API Gateway managed REST APIs across multiple accounts from SQL injection and cross-site scripting attacks.
Which solution will meet these requirements with the LEAST amount of administrative effort?'),
  (120, '한 회사는 us-west-2 리전에서 Network Load Balancer(NLB) 뒤에 있는 세 개의 Amazon EC2 인스턴스에서 자체 관리 DNS 솔루션을 구현했습니다.
대부분의 사용자는 미국과 유럽에 위치합니다. 회사는 솔루션의 성능과 가용성을 향상하고자 합니다.
회사는 eu-west-1 리전에서 세 개의 EC2 인스턴스를 시작하고 구성한 다음, 새로운 NLB의 대상(Target)으로 추가했습니다.

모든 EC2 인스턴스로 트래픽을 라우팅할 수 있는 솔루션은 무엇입니까?', 'A company has implemented a self-managed DNS solution on three Amazon EC2 instances behind a Network Load Balancer (NLB) in the us-west-2 Region. Most of the company''s users are located in the United States and Europe. The company wants to improve the performance and availability of the solution. The company launches and configures three EC2 instances in the eu-west-1 Region and adds the EC2 instances as targets for a new NLB.
Which solution can the company use to route traffic to all the EC2 instances?'),
  (121, '한 회사가 AWS에서 온라인 트랜잭션 처리(OLTP) 워크로드를 실행하고 있습니다.
이 워크로드는 Multi-AZ 배포로 구성된 **암호화되지 않은 Amazon RDS DB 인스턴스**를 사용합니다.
이 인스턴스에서 매일 데이터베이스 스냅샷이 생성됩니다.

앞으로 데이터베이스와 스냅샷이 항상 암호화되도록 하려면 솔루션 설계자는 무엇을 해야 합니까?', 'A company is running an online transaction processing (OLTP) workload on AWS. This workload uses an unencrypted Amazon RDS DB instance in a Multi-AZ deployment. Daily database snapshots are taken from this instance.
What should a solutions architect do to ensure the database and snapshots are always encrypted moving forward?'),
  (122, '한 회사가 개발자들이 애플리케이션에서 데이터를 암호화하는 데 사용할 수 있는 **확장 가능한 키 관리 인프라**를 구축하고자 합니다.
운영 부담을 줄이려면 솔루션 설계자는 무엇을 해야 합니까?', 'A company wants to build a scalable key management infrastructure to support developers who need to encrypt data in their applications.
What should a solutions architect do to reduce the operational burden?'),
  (123, '한 회사가 두 개의 Amazon EC2 인스턴스에서 동적 웹 애플리케이션을 호스팅하고 있습니다.
회사는 자체 SSL 인증서를 가지고 있으며, 각 인스턴스에서 SSL 종료(SSL termination)를 수행합니다.

최근 트래픽이 증가하면서 운영팀은 **SSL 암호화 및 복호화로 인해 웹 서버의 컴퓨팅 용량이 최대 한계에 도달**했다고 판단했습니다.

솔루션 설계자가 애플리케이션 성능을 향상시키기 위해 수행해야 하는 작업은 무엇입니까?', 'A company has a dynamic web application hosted on two Amazon EC2 instances. The company has its own SSL certificate, which is on each instance to perform SSL termination.
There has been an increase in traffic recently, and the operations team determined that SSL encryption and decryption is causing the compute capacity of the web servers to reach their maximum limit.
What should a solutions architect do to increase the application''s performance?'),
  (124, '한 회사가 많은 Amazon EC2 인스턴스를 사용하여 완료하는 **동적인 배치 처리 작업**을 가지고 있습니다.
이 작업은 상태가 없으며, 언제든지 시작 및 중단할 수 있으며 부정적인 영향이 없습니다.
총 완료 시간은 일반적으로 **60분 이상**입니다.

회사는 솔루션 설계자에게 **확장 가능하고 비용 효율적인 솔루션**을 설계하도록 요청했습니다.

솔루션 설계자가 권장해야 하는 방법은 무엇입니까?', 'A company has a highly dynamic batch processing job that uses many Amazon EC2 instances to complete it. The job is stateless in nature, can be started and stopped at any given time with no negative impact, and typically takes upwards of 60 minutes total to complete. The company has asked a solutions architect to design a scalable and cost-effective solution that meets the requirements of the job.
What should the solutions architect recommend?'),
  (125, '한 회사가 AWS에서 2계층 전자상거래 웹사이트를 운영하고 있습니다.

- 웹 계층: 트래픽을 Amazon EC2 인스턴스로 보내는 로드 밸런서
- 데이터베이스 계층: Amazon RDS DB 인스턴스

요구 사항:
- EC2 인스턴스와 RDS DB 인스턴스는 **공용 인터넷에 노출되지 않아야 함**
- EC2 인스턴스는 제3자 웹 서비스를 통한 결제 처리를 위해 **인터넷 액세스 필요**
- 애플리케이션은 **고가용성 필요**

이 요구 사항을 충족하는 구성 옵션 조합은 무엇입니까? (두 개 선택)', 'A company runs its two-tier ecommerce website on AWS. The web tier consists of a load balancer that sends traffic to Amazon EC2 instances. The database tier uses an Amazon RDS DB instance. The EC2 instances and the RDS DB instance should not be exposed to the public internet. The EC2 instances require internet access to complete payment processing of orders through a third-party web service. The application must be highly available.
Which combination of configuration options will meet these requirements? (Choose two.)'),
  (126, '솔루션 아키텍트는 회사의 스토리지 비용을 줄이기 위한 솔루션을 구현해야 합니다.
회사의 모든 데이터는 Amazon S3 Standard 스토리지 클래스에 있습니다.
회사는 모든 데이터를 최소 25년 동안 보관해야 합니다.
최근 2년의 데이터는 고가용성(Highly Available)이며 즉시 검색 가능해야 합니다.

이 요구 사항을 충족하는 솔루션은 무엇입니까?', 'A solutions architect needs to implement a solution to reduce a company''s storage costs. All the company''s data is in the Amazon S3 Standard storage class. The company must keep all data for at least 25 years. Data from the most recent 2 years must be highly available and immediately retrievable.
Which solution will meet these requirements?'),
  (127, '한 미디어 회사가 시스템을 AWS 클라우드로 이전할 가능성을 평가하고 있습니다. 회사는 비디오 처리를 위해 가능한 최대 I/O 성능을 제공하는 최소 10TB의 스토리지, 미디어 콘텐츠를 저장하기 위해 300TB의 매우 내구성이 높은 스토리지, 더 이상 사용하지 않는 아카이브 미디어 요구사항을 충족하기 위해 900TB의 스토리지가 필요합니다.
이 요구사항을 충족하기 위해 솔루션 설계자가 권장해야 하는 서비스 조합은 무엇입니까?', 'A media company is evaluating the possibility of moving its systems to the AWS Cloud. The company needs at least 10 TB of storage with the maximum possible I/O performance for video processing, 300 TB of very durable storage for storing media content, and 900 TB of storage to meet requirements for archival media that is not in use anymore.
Which set of services should a solutions architect recommend to meet these requirements?'),
  (128, '한 회사가 AWS 클라우드에서 컨테이너로 애플리케이션을 실행하려고 합니다. 이 애플리케이션은 상태가 없으며, 기본 인프라에서 발생하는 장애를 견딜 수 있습니다. 회사는 비용과 운영 오버헤드를 최소화하는 솔루션이 필요합니다.
이 요구사항을 충족하기 위해 솔루션 설계자가 수행해야 할 작업은 무엇입니까?', 'A company wants to run applications in containers in the AWS Cloud. These applications are stateless and can tolerate disruptions within the underlying infrastructure. The company needs a solution that minimizes cost and operational overhead.
What should a solutions architect do to meet these requirements?'),
  (129, '한 회사가 온프레미스에서 멀티티어 웹 애플리케이션을 운영하고 있습니다. 이 웹 애플리케이션은 컨테이너화되어 여러 Linux 호스트에서 실행되며, 사용자 레코드를 포함하는 PostgreSQL 데이터베이스에 연결됩니다. 인프라를 유지 관리하고 용량 계획을 수행하는 운영 오버헤드가 회사의 성장을 제한하고 있습니다. 솔루션 설계자는 애플리케이션의 인프라를 개선해야 합니다.
이 목표를 달성하기 위해 솔루션 설계자가 수행해야 할 작업의 조합은 무엇입니까? (두 가지 선택)', 'A company is running a multi-tier web application on premises. The web application is containerized and runs on a number of Linux hosts connected to a PostgreSQL database that contains user records. The operational overhead of maintaining the infrastructure and capacity planning is limiting the company''s growth. A solutions architect must improve the application''s infrastructure.
Which combination of actions should the solutions architect take to accomplish this? (Choose two.)'),
  (130, '애플리케이션이 여러 가용 영역에 걸쳐 Amazon EC2 인스턴스에서 실행됩니다. 인스턴스는 Application Load Balancer 뒤의 Amazon EC2 Auto Scaling 그룹에서 실행됩니다. 애플리케이션은 EC2 인스턴스의 CPU 사용률이 40% 수준이거나 그 근처일 때 가장 성능이 좋습니다.
Auto Scaling 그룹의 모든 인스턴스에서 원하는 성능을 유지하려면 솔루션 설계자가 무엇을 해야 합니까?', 'An application runs on Amazon EC2 instances across multiple Availability Zonas. The instances run in an Amazon EC2 Auto Scaling group behind an Application Load Balancer. The application performs best when the CPU utilization of the EC2 instances is at or near 40%.
What should a solutions architect do to maintain the desired performance across all instances in the group?'),
  (131, '한 회사가 Amazon S3 버킷을 스토리지로 사용할 파일 공유 애플리케이션을 개발하고 있습니다. 회사는 모든 파일을 Amazon CloudFront 배포를 통해 제공하려고 합니다. 또한 회사는 S3 URL로 직접 접근하여 파일에 접근할 수 없도록 하기를 원합니다.
솔루션 설계자가 이러한 요구 사항을 충족하려면 무엇을 해야 합니까?', 'A company is developing a file-sharing application that will use an Amazon S3 bucket for storage. The company wants to serve all the files through an Amazon CloudFront distribution. The company does not want the files to be accessible through direct navigation to the S3 URL.
What should a solutions architect do to meet these requirements?'),
  (132, '한 회사의 웹사이트는 사용자에게 다운로드 가능한 과거 성능 보고서를 제공합니다. 이 웹사이트는 전 세계적인 수요를 충족하도록 확장 가능한 솔루션이 필요합니다. 솔루션은 비용 효율적이어야 하고 인프라 리소스의 프로비저닝을 제한해야 하며 가능한 가장 빠른 응답 시간을 제공해야 합니다.
어떤 조합을 솔루션 설계자가 권장해야 이 요구사항을 충족합니까?', 'A company’s website provides users with downloadable historical performance reports. The website needs a solution that will scale to meet the company’s website demands globally. The solution should be cost-effective, limit the provisioning of infrastructure resources, and provide the fastest possible response time.
Which combination should a solutions architect recommend to meet these requirements?'),
  (133, '한 회사는 온프레미스에서 Oracle 데이터베이스를 실행하고 있습니다. 회사의 AWS로의 마이그레이션의 일부로 회사는 데이터베이스를 사용 가능한 최신 버전으로 업그레이드하기를 원합니다. 회사는 또한 데이터베이스에 대한 재해 복구(DR)를 설정하기를 원합니다. 회사는 정상 운영과 DR 설정에 대한 운영 오버헤드를 최소화해야 합니다. 회사는 또한 데이터베이스의 기본 운영체제에 대한 접근을 유지해야 합니다.

어떤 솔루션이 이러한 요구사항을 충족합니까?', 'A company runs an Oracle database on premises. As part of the company’s migration to AWS, the company wants to upgrade the database to the most recent available version. The company also wants to set up disaster recovery (DR) for the database. The company needs to minimize the operational overhead for normal operations and DR setup. The company also needs to maintain access to the database''s underlying operating system.
Which solution will meet these requirements?'),
  (134, '한 회사는 애플리케이션을 서버리스 솔루션으로 전환하려고 합니다. 서버리스 솔루션은 기존 및 신규 데이터를 SQL로 분석할 수 있어야 합니다. 회사는 데이터를 Amazon S3 버킷에 저장합니다. 데이터는 암호화되어야 하고 다른 AWS 리전으로 복제되어야 합니다.
다음 중 최소한의 운영 오버헤드로 이러한 요구사항을 충족하는 솔루션은 무엇입니까?', 'A company wants to move its application to a serverless solution. The serverless solution needs to analyze existing and new data by using SL. The company stores the data in an Amazon S3 bucket. The data requires encryption and must be replicated to a different AWS Region.
Which solution will meet these requirements with the LEAST operational overhead?'),
  (135, '회사는 AWS에서 워크로드를 실행합니다. 회사는 외부 공급업체의 서비스에 연결해야 합니다. 그 서비스는 공급업체의 VPC에서 호스팅됩니다. 회사 보안팀에 따르면 연결은 비공개여야 하며 대상 서비스로만 제한되어야 합니다. 연결은 오직 회사의 VPC에서만 시작되어야 합니다.
어떤 솔루션이 이러한 요구사항을 충족합니까?', 'A company runs workloads on AWS. The company needs to connect to a service from an external provider. The service is hosted in the provider''s VPC. According to the company’s security team, the connectivity must be private and must be restricted to the target service. The connection must be initiated only from the company’s VPC.
Which solution will mast these requirements?'),
  (136, '한 회사가 온프레미스 PostgreSQL 데이터베이스를 Amazon Aurora PostgreSQL로 마이그레이션하고 있습니다.
온프레미스 데이터베이스는 마이그레이션 동안 온라인 상태를 유지하고 접근 가능해야 합니다.
Aurora 데이터베이스는 온프레미스 데이터베이스와 동기화 상태를 유지해야 합니다.

이 요구사항을 충족하기 위해 솔루션스 아키텍트가 수행해야 할 작업 조합은 무엇입니까? (두 가지를 선택하세요.)', 'A company is migrating its on-premises PostgreSQL database to Amazon Aurora PostgreSQL. The on-premises database must remain online and accessible during the migration. The Aurora database must remain synchronized with the on-premises database.
Which combination of actions must a solutions architect take to meet these requirements? (Choose two.)'),
  (137, '한 회사는 각 비즈니스 유닛에 대해 전용 AWS 계정을 생성하기 위해 AWS Organizations를 사용하고 있습니다.
각 비즈니스 유닛은 요청 시 독립적으로 자신의 계정을 관리할 수 있습니다.
한 계정의 루트 사용자 이메일 주소로 전송된 알림을 루트 이메일 수신자가 놓쳤습니다.
회사는 앞으로 이러한 알림이 놓치지 않도록 하고 싶습니다.
향후 알림은 계정 관리자에게만 제한되어야 합니다.

이 요구사항을 충족하는 솔루션은 무엇입니까?', 'A company uses AWS Organizations to create dedicated AWS accounts for each business unit to manage each business unit''s account independently upon request. The root email recipient missed a notification that was sent to the root user email address of one account. The company wants to ensure that all future notifications are not missed. Future notifications must be limited to account administrators.
Which solution will meet these requirements?'),
  (138, '1. 문제 전체 한글 번역:

한 회사는 AWS에서 전자상거래 애플리케이션을 운영합니다.
새 주문이 들어올 때마다 메시지는 단일 가용 영역의 Amazon EC2 인스턴스에서 실행되는 RabbitMQ 큐에 게시됩니다.
이 메시지는 별도의 EC2 인스턴스에서 실행되는 다른 애플리케이션이 처리합니다.
이 애플리케이션은 PostgreSQL 데이터베이스(또 다른 EC2 인스턴스)에 세부 정보를 저장합니다.
모든 EC2 인스턴스는 동일한 가용 영역에 있습니다.

회사는 **운영 오버헤드를 최소화하면서 가장 높은 가용성**을 제공하도록 아키텍처를 재설계해야 합니다.
이 요구사항을 충족하기 위해 솔루션 설계자가 해야 할 일은 무엇입니까?', 'A company runs its ecommerce application on AWS. Every new order is published as a massage in a RabbitMQ queue that runs on an Amazon EC2 instance in a single Availability Zone. These messages are processed by a different application that runs on a separate EC2 instance. This application stores the details in a PostgreSQL database on another EC2 instance. All the EC2 instances are in the same Availability Zone.
The company needs to redesign its architecture to provide the highest availability with the least operational overhead.
What should a solutions architect do to meet these requirements?'),
  (139, '보고 팀은 매일 Amazon S3 버킷에서 파일을 수신합니다. 보고 팀은 수작업으로 매일 같은 시간에 이 초기 S3 버킷에서 분석 S3 버킷으로 파일을 검토하고 복사하여 Amazon QuickSight와 함께 사용합니다. 추가 팀들이 초기 S3 버킷에 더 크고 많은 파일을 보내기 시작하고 있습니다.
보고 팀은 파일이 초기 S3 버킷에 들어오면 자동으로 분석 S3 버킷으로 파일을 이동시키고 싶습니다. 보고 팀은 또한 복사된 데이터에서 패턴 매칭 코드를 실행하기 위해 AWS Lambda 함수를 사용하기를 원합니다. 추가로 보고 팀은 데이터 파일을 Amazon SageMaker Pipelines의 파이프라인으로 전송하길 원합니다.
운영 오버헤드를 **최소화**하면서 이러한 요구사항을 충족하려면 솔루션 설계자는 무엇을 해야 합니까?', 'A reporting team receives files each day in an Amazon S3 bucket. The reporting team manually reviews and copies the files from this initial S3 bucket to an analysis S3 bucket each day at the same time to use with Amazon QuickSight. Additional teams are starting to send more files in larger sizes to the initial S3 bucket.
The reporting team wants to move the files automatically analysis S3 bucket as the files enter the initial S3 bucket. The reporting team also wants to use AWS Lambda functions to run pattern-matching code on the copied data. In addition, the reporting team wants to send the data files to a pipeline in Amazon SageMaker Pipelines.
What should a solutions architect do to meet these requirements with the LEAST operational overhead?'),
  (140, '솔루션 설계자는 회사가 AWS에서 애플리케이션을 실행하는 비용을 최적화하도록 도와야 합니다. 애플리케이션은 아키텍처 내에서 컴퓨트로 Amazon EC2 인스턴스, AWS Fargate 및 AWS Lambda를 사용합니다.
EC2 인스턴스는 애플리케이션의 데이터 수집 레이어를 실행합니다. EC2 사용은 산발적이고 예측할 수 없습니다. EC2에서 실행되는 워크로드는 언제든지 중단될 수 있습니다. 애플리케이션 프런트 엔드는 Fargate에서 실행되며, Lambda는 API 계층을 제공합니다. 프런트 엔드 활용률과 API 계층 활용률은 향후 1년 동안 예측 가능합니다.
이 애플리케이션을 호스팅하는 데 가장 비용 효율적인 조합의 구매 옵션은 무엇입니까? (두 가지 선택)', 'A solutions architect needs to help a company optimize the cost of running an application on AWS. The application will use Amazon EC2 instances, AWS Fargate, and AWS Lambda for compute within the architecture.
The EC2 instances will run the data ingestion layer of the application. EC2 usage will be sporadic and unpredictable. Workloads that run on EC2 instances can be interrupted at any time. The application front end will run on Fargate, and Lambda will serve the API layer. The front-end utilization and API layer utilization will be predictable over the course of the next year.
Which combination of purchasing options will provide the MOST cost-effective solution for hosting this application? (Choose two.)'),
  (141, '한 회사는 사용자에게 글로벌 긴급 뉴스, 지역 알림 및 날씨 업데이트를 제공하는 웹 기반 포털을 운영합니다. 포털은 정적 및 동적 콘텐츠를 혼합하여 사용자가 개인화된 뷰를 받을 수 있도록 제공합니다. 콘텐츠는 애플리케이션 로드 밸런서(ALB) 뒤에서 실행되는 Amazon EC2 인스턴스에서 실행되는 API 서버를 통해 HTTPS로 제공됩니다. 회사는 전 세계 사용자에게 가능한 한 빠르게 포털 콘텐츠를 제공하고자 합니다.
솔루션 설계자는 모든 사용자에게 최소 지연 시간을 보장하기 위해 애플리케이션을 어떻게 설계해야 합니까?', 'A company runs a web-based portal that provides users with global breaking news, local alerts, and weather updates. The portal delivers each user a personalized view by using mixture of static and dynamic content. Content is served over HTTPS through an API server running on an Amazon EC2 instance behind an Application Load Balancer (ALB). The company wants the portal to provide this content to its users across the world as quickly as possible.
How should a solutions architect design the application to ensure the LEAST amount of latency for all users?'),
  (142, '한 게임 회사가 고가용성 아키텍처를 설계하고 있습니다. 애플리케이션은 수정된 Linux 커널에서 실행되며 UDP 기반 트래픽만 지원합니다. 회사는 프런트엔드 계층이 가능한 최고의 사용자 경험을 제공해야 합니다. 해당 계층은 **낮은 지연 시간**, **가장 가까운 엣지 위치로 트래픽 라우팅**, **애플리케이션 엔드포인트에 대한 정적 IP 주소 제공**을 만족해야 합니다.
솔루션 설계자는 이러한 요구사항을 충족하기 위해 무엇을 해야 합니까?', 'A gaming company is designing a highly available architecture. The application runs on a modified Linux kernel and supports only UDP-based traffic. The company needs the front-end tier to provide the best possible user experience. That tier must have low latency, route traffic to the nearest edge location, and provide static IP addresses for entry into the application endpoints.
What should a solutions architect do to meet these requirements?'),
  (143, '한 회사가 기존의 온프레미스 모놀리식 애플리케이션을 AWS로 마이그레이션하려고 합니다. 회사는 가능한 한 프런트엔드 코드와 백엔드 코드를 최대한 유지하려고 합니다. 그러나 회사는 애플리케이션을 더 작은 애플리케이션으로 분리하고자 합니다. 각 애플리케이션은 다른 팀이 관리할 예정입니다. 회사는 **높은 확장성**과 **운영 부담 최소화**가 가능한 솔루션이 필요합니다.
어떤 솔루션이 이러한 요구사항을 충족합니까?', 'A company wants to migrate its existing on-premises monolithic application to AWS. The company wants to keep as much of the front-end code and the backend code as possible. However, the company wants to break the application into smaller applications. A different team will manage each application. The company needs a highly scalable solution that minimizes operational overhead.
Which solution will meet these requirements?'),
  (144, '한 회사가 최근에 글로벌 전자상거래 애플리케이션의 데이터 저장소로 Amazon Aurora를 사용하기 시작했습니다.
대용량 보고서를 실행할 때 개발자들은 전자상거래 애플리케이션 성능이 저하된다고 보고합니다.
Amazon CloudWatch에서 메트릭을 검토한 결과, 솔루션스 아키텍트는 월간 보고서를 실행할 때 **ReadIOPS**와 **CPUUtilization** 메트릭이 급증하는 것을 확인했습니다.
가장 비용 효율적인 솔루션은 무엇입니까?', 'A company recently started using Amazon Aurora as the data store for its global ecommerce application. When large reports are run, developers report that the ecommerce application is performing poorly. After reviewing metrics in Amazon CloudWatch, a solutions architect finds that the ReadIOPS and CPUUtilizalion metrics are spiking when monthly reports run.
What is the MOST cost-effective solution?'),
  (145, '한 회사가 웹사이트 분석 애플리케이션을 단일 Amazon EC2 온디맨드 인스턴스에서 호스팅하고 있습니다.
분석 소프트웨어는 PHP로 작성되었고 MySQL 데이터베이스를 사용합니다.
분석 소프트웨어, PHP를 제공하는 웹 서버, 데이터베이스 서버는 모두 동일한 EC2 인스턴스에서 호스팅되고 있습니다.
애플리케이션은 바쁜 시간대에 성능 저하를 보이고 있으며 5xx 오류를 발생시키고 있습니다.
회사는 애플리케이션이 원활하게 확장되도록 해야 합니다.
가장 비용 효율적으로 이 요구 사항을 충족하는 솔루션은 무엇입니까?', 'A company hosts a website analytics application on a single Amazon EC2 On-Demand Instance. The analytics software is written in PHP and uses a MySQL database. The analytics software, the web server that provides PHP, and the database server are all hosted on the EC2 instance. The application is showing signs of performance degradation during busy times and is presenting 5xx errors. The company needs to make the application scale seamlessly.
Which solution will meet these requirements MOST cost-effectively?'),
  (146, '한 회사가 프로덕션 환경에서 Application Load Balancer 뒤의 Amazon EC2 On-Demand 인스턴스 그룹에서 상태 비저장(stateless) 웹 애플리케이션을 실행하고 있습니다. 애플리케이션은 매 영업일 8시간 동안 많은 사용량을 경험합니다. 야간에는 애플리케이션 사용량이 보통 수준으로 안정적이며, 주말에는 사용량이 낮습니다.
회사는 애플리케이션의 가용성에 영향을 주지 않으면서 EC2 비용을 최소화하고자 합니다.
어떤 솔루션이 이러한 요구 사항을 충족합니까?', 'A company runs a stateless web application in production on a group of Amazon EC2 On-Demand Instances behind an Application Load Balancer. The application experiences heavy usage during an 8-hour period each business day. Application usage is moderate and steady overnight. Application usage is low during weekends.
The company wants to minimize its EC2 costs without affecting the availability of the application.
Which solution will meet these requirements?'),
  (147, '한 회사는 중요 애플리케이션의 애플리케이션 로그 파일을 10년 동안 보관해야 합니다. 애플리케이션 팀은 문제 해결을 위해 지난 한 달(마지막 1개월) 로그를 정기적으로 접근하지만, 1개월보다 오래된 로그는 거의 접근하지 않습니다. 애플리케이션은 월 10TB 이상의 로그를 생성합니다.
이 요구사항을 가장 비용 효율적으로 만족하는 스토리지 옵션은 무엇입니까?', 'A company needs to retain application log files for a critical application for 10 years. The application team regularly accesses logs from the past month for troubleshooting, but logs older than 1 month are rarely accessed. The application generates more than 10 TB of logs per month.
Which storage option meets these requirements MOST cost-effectively?'),
  (148, '한 회사는 다음과 같은 구성 요소를 포함하는 데이터 수집 워크플로를 가지고 있습니다:
- 새 데이터 전달에 대한 알림을 수신하는 Amazon Simple Notification Service (Amazon SNS) 주제
- 데이터를 처리하고 저장하는 AWS Lambda 함수

수집 워크플로는 네트워크 연결 문제로 인해 때때로 실패합니다. 실패가 발생하면 해당 데이터는 수동으로 작업을 다시 실행하지 않는 한 수집되지 않습니다.
모든 알림이 결국 처리되도록 하기 위해 솔루션스 아키텍트는 무엇을 해야 합니까?', 'A company has a data ingestion workflow that includes the following components:
An Amazon Simple Notification Service (Amazon SNS) topic that receives notifications about new data deliveries
An AWS Lambda function that processes and stores the data
The ingestion workflow occasionally fails because of network connectivity issues. When failure occurs, the corresponding data is not ingested unless the company manually reruns the job.
What should a solutions architect do to ensure that all notifications are eventually processed?'),
  (149, '한 회사는 이벤트 데이터를 생성하는 서비스를 가지고 있습니다. 회사는 이벤트 데이터가 수신되는 즉시 AWS를 사용하여 처리하고자 합니다. 데이터는 특정 순서로 기록되며, 이 순서는 처리 과정 전체에서 유지되어야 합니다. 회사는 운영 오버헤드를 최소화하는 솔루션을 구현하고자 합니다.
솔루션 아키텍트는 이를 어떻게 구현해야 합니까?', 'A company has a service that produces event data. The company wants to use AWS to process the event data as it is received. The data is written in a specific order that must be maintained throughout processing. The company wants to implement a solution that minimizes operational overhead.
How should a solutions architect accomplish this?'),
  (150, '한 회사는 온프레미스 서버에서 Amazon EC2 인스턴스로 애플리케이션을 마이그레이션하고 있습니다. 마이그레이션 설계 요구사항의 일환으로 솔루션스 아키텍트는 인프라 메트릭 알람을 구현해야 합니다. 회사는 CPU 사용률이 짧게 급등해서 50%를 넘는 경우에는 조치를 취할 필요가 없습니다. 그러나 CPU 사용률이 50%를 초과하고 동시에 디스크의 읽기 IOPS가 높은 경우에는 가능한 한 빨리 조치해야 합니다. 솔루션스 아키텍트는 또한 거짓 알람(false alarm)을 줄여야 합니다.
이 요구사항을 충족하려면 무엇을 해야 합니까?', 'A company is migrating an application from on-premises servers to Amazon EC2 instances. As part of the migration design requirements, a solutions architect must implement infrastructure metric alarms. The company does not need to take action if CPU utilization increases to more than 50% for a short burst of time. However, if the CPU utilization increases to more than 50% and read IOPS on the disk are high at the same time, the company needs to act as soon as possible. The solutions architect also must reduce false alarms.
What should the solutions architect do to meet these requirements?'),
  (151, '한 회사는 온프레미스 데이터 센터를 AWS로 마이그레이션하려고 합니다. 회사의 규정 준수 요건에 따르면 회사는 ap-northeast-3 리전만 사용할 수 있습니다. 회사 관리자는 VPC를 인터넷에 연결할 수 없습니다.
어떤 솔루션이 이러한 요구사항을 충족합니까? (두 가지를 선택하세요.)', 'A company wants to migrate its on-premises data center to AWS. According to the company''s compliance requirements, the company can use only the ap-northeast-3 Region. Company administrators are not permitted to connect VPCs to the internet.
Which solutions will meet these requirements? (Choose two.)'),
  (152, '한 회사는 신입 사원 교육을 위해 3계층 웹 애플리케이션을 사용합니다. 이 애플리케이션은 하루에 단지 12시간만 액세스됩니다. 회사는 정보를 저장하기 위해 Amazon RDS for MySQL DB 인스턴스를 사용하고 있으며 비용을 최소화하려고 합니다.
이 요구사항을 충족하기 위해 솔루션스 아키텍트는 무엇을 해야 합니까?', 'A company uses a three-tier web application to provide training to new employees. The application is accessed for only 12 hours every day. The company is using an Amazon RDS for MySQL DB instance to store information and wants to minimize costs.
What should a solutions architect do to meet these requirements?'),
  (153, '한 회사는 인기곡의 클립으로 만든 벨소리를 판매합니다. 벨소리 파일은 Amazon S3 Standard에 저장되며 파일 크기는 최소 128KB입니다. 회사에는 수백만 개의 파일이 있지만, 90일이 지난 벨소리는 다운로드가 거의 발생하지 않습니다. 회사는 가장 자주 액세스되는 파일은 사용자가 바로 이용할 수 있게 유지하면서 저장 비용을 절감해야 합니다.
이 요구사항을 가장 비용 효율적으로 충족하려면 어떤 조치를 취해야 합니까?', 'A company sells ringtones created from clips of popular songs. The files containing the ringtones are stored in Amazon S3 Standard and are at least 128 KB in size. The company has millions of files, but downloads are infrequent for ringtones older than 90 days. The company needs to save money on storage while keeping the most accessed files readily available for its users.
Which action should the company take to meet these requirements MOST cost-effectively?'),
  (154, '한 회사는 의료 실험 결과를 Amazon S3 저장소에 저장해야 합니다. 저장소는 몇 명의 과학자가 새 파일을 추가할 수 있도록 허용해야 하며, 다른 모든 사용자는 읽기 전용 액세스로 제한해야 합니다. 어떤 사용자도 저장소의 파일을 수정하거나 삭제할 수 있는 권한을 가져서는 안 됩니다. 회사는 모든 파일을 생성일로부터 최소 1년 동안 보관해야 합니다.
이 요구사항을 충족할 수 있는 솔루션은 무엇입니까?', 'A company needs to save the results from a medical trial to an Amazon S3 repository. The repository must allow a few scientists to add new files and must restrict all other users to read-only access. No users can have the ability to modify or delete any files in the repository. The company must keep every file in the repository for a minimum of 1 year after its creation date.
Which solution will meet these requirements?'),
  (155, '대형 미디어 회사가 AWS에서 웹 애플리케이션을 호스팅합니다. 회사는 사용자가 전 세계 어디에서든 파일에 안정적으로 액세스할 수 있도록 기밀 미디어 파일을 캐싱하려고 합니다. 콘텐츠는 Amazon S3 버킷에 저장되어 있습니다. 회사는 요청이 지리적으로 어디에서 발생하든 콘텐츠를 빠르게 제공해야 합니다.
이 요구사항을 충족할 수 있는 솔루션은 무엇입니까?', 'A large media company hosts a web application on AWS. The company wants to start caching confidential media files so that users around the world will have reliable access to the files. The content is stored in Amazon S3 buckets. The company must deliver the content quickly, regardless of where the requests originate geographically.
Which solution will meet these requirements?'),
  (156, '한 회사는 서로 다른 데이터베이스에서 배치 데이터를 생성합니다. 회사는 또한 네트워크 센서와 애플리케이션 API에서 실시간 스트림 데이터를 생성합니다. 회사는 모든 데이터를 비즈니스 분석을 위해 한 곳에 통합해야 합니다. 회사는 들어오는 데이터를 처리한 후, 데이터를 서로 다른 Amazon S3 버킷에 스테이징해야 합니다. 팀은 이후 일회성 쿼리를 실행하고, 데이터를 비즈니스 인텔리전스 도구로 가져와 핵심 성과 지표(KPI)를 표시합니다.
이 요구사항을 **가장 적은 운영 오버헤드**로 충족할 수 있는 단계의 조합은 무엇입니까? (2개 선택)', 'A company produces batch data that comes from different databases. The company also produces live stream data from network sensors and application APIs. The company needs to consolidate all the data into one place for business analytics. The company needs to process the incoming data and then stage the data in different Amazon S3 buckets. Teams will later run one-time queries and import the data into a business intelligence tool to show key performance indicators (KPIs).
Which combination of steps will meet these requirements with the LEAST operational overhead? (Choose two.)'),
  (157, '1. 문제 전체 한글 번역:

한 회사는 Amazon Aurora PostgreSQL DB 클러스터에 데이터를 저장합니다. 회사는 모든 데이터를 5년 동안 보관해야 하며, 5년 후에는 모든 데이터를 삭제해야 합니다. 또한, 데이터베이스 내에서 수행된 모든 작업의 감사 로그(audit logs)는 무기한 보관해야 합니다. 현재 회사는 Aurora에 대해 자동 백업이 구성되어 있습니다.

이 요구사항을 충족하기 위해 솔루션스 아키텍트가 수행해야 하는 단계의 조합은 무엇입니까? (2개 선택)', 'A company stores data in an Amazon Aurora PostgreSQL DB cluster. The company must store all the data for 5 years and must delete all the data after 5 years. The company also must indefinitely keep audit logs of actions that are performed within the database. Currently, the company has automated backups configured for Aurora.

Which combination of steps should a solutions architect take to meet these requirements? (Choose two.)'),
  (158, '솔루션스 아키텍트가 다가오는 음악 이벤트를 위해 웹사이트 성능을 최적화하려고 합니다. 공연 비디오는 실시간 스트리밍으로 제공된 후 주문형(on-demand)으로도 제공됩니다. 이벤트는 전 세계 온라인 관객을 유치할 것으로 예상됩니다.

실시간 스트리밍과 주문형 스트리밍 모두의 성능을 향상시키는 서비스는 무엇입니까?', 'A solutions architect is optimizing a website for an upcoming musical event. Videos of the performances will be streamed in real time and then will be available on demand. The event is expected to attract a global online audience.

Which service will improve the performance of both the real-time and on-demand streaming?'),
  (159, '한 회사가 Amazon API Gateway와 AWS Lambda를 사용하는 공개 서버리스 애플리케이션을 운영하고 있습니다. 최근 애플리케이션 트래픽이 봇넷에서 발생한 사기성 요청으로 급증했습니다.

승인되지 않은 사용자의 요청을 차단하기 위해 솔루션스 아키텍트가 수행해야 할 단계는 무엇입니까? (두 가지 선택)', 'A company is running a publicly accessible serverless application that uses Amazon API Gateway and AWS Lambda. The application’s traffic recently spiked due to fraudulent requests from botnets.

Which steps should a solutions architect take to block requests from unauthorized users? (Choose two.)'),
  (160, '한 전자상거래 회사가 AWS 클라우드에서 분석 애플리케이션을 호스팅하고 있습니다. 애플리케이션은 매월 약 300MB의 데이터를 생성합니다. 데이터는 JSON 형식으로 저장됩니다. 회사는 데이터를 백업하기 위한 재해 복구 솔루션을 평가하고 있습니다. 데이터는 필요할 경우 **밀리초 단위로 접근 가능해야 하며**, 데이터는 **30일 동안 보관**되어야 합니다.

이 요구 사항을 가장 비용 효율적으로 충족하는 솔루션은 무엇입니까?', 'An ecommerce company hosts its analytics application in the AWS Cloud. The application generates about 300 MB of data each month. The data is stored in JSON format. The company is evaluating a disaster recovery solution to back up the data. The data must be accessible in milliseconds if it is needed, and the data must be kept for 30 days.

Which solution meets these requirements MOST cost-effectively?'),
  (161, '한 회사가 JSON 문서를 처리하고 결과를 온프레미스 SQL 데이터베이스에 출력하는 작은 Python 애플리케이션을 보유하고 있습니다. 애플리케이션은 하루에 수천 번 실행됩니다. 회사는 애플리케이션을 AWS 클라우드로 이전하려고 합니다. 회사는 **높은 가용성**, **최대 확장성**, 그리고 **운영 오버헤드를 최소화**할 수 있는 솔루션이 필요합니다.

이 요구 사항을 충족하는 솔루션은 무엇입니까?', 'A company has a small Python application that processes JSON documents and outputs the results to an on-premises SQL database. The application runs thousands of times each day. The company wants to move the application to the AWS Cloud. The company needs a highly available solution that maximizes scalability and minimizes operational overhead.

Which solution will meet these requirements?'),
  (162, '한 회사가 금융 리스크 모델링을 위해 AWS에서 고성능 컴퓨팅(HPC) 인프라를 사용하려고 합니다. 회사의 HPC 워크로드는 Linux에서 실행됩니다. 각 HPC 워크플로는 수백 개의 Amazon EC2 Spot 인스턴스에서 실행되며, 단기 실행되고 수천 개의 출력 파일을 생성하여 궁극적으로 분석 및 장기 저장을 위해 영구 스토리지에 저장됩니다.

회사는 온프레미스 데이터를 장기 영구 스토리지로 복사하여 모든 EC2 인스턴스가 데이터를 처리할 수 있도록 하기를 원합니다. 또한 데이터 세트와 출력 파일을 읽고 쓰기 위해 **영구 스토리지와 통합된 고성능 파일 시스템** 솔루션이 필요합니다.

이 요구 사항을 충족하는 AWS 서비스 조합은 무엇입니까?', 'A company wants to use high performance computing (HPC) infrastructure on AWS for financial risk modeling. The company’s HPC workloads run on Linux. Each HPC workflow runs on hundreds of Amazon EC2 Spot Instances, is short-lived, and generates thousands of output files that are ultimately stored in persistent storage for analytics and long-term future use.

The company seeks a cloud storage solution that permits the copying of on-premises data to long-term persistent storage to make data available for processing by all EC2 instances. The solution should also be a high performance file system that is integrated with persistent storage to read and write datasets and output files.

Which combination of AWS services meets these requirements?'),
  (163, '한 회사가 온프레미스에서 컨테이너화된 애플리케이션을 구축하고 있으며, 애플리케이션을 AWS로 이전하려고 합니다. 애플리케이션은 배포 직후 수천 명의 사용자가 사용할 예정입니다. 회사는 컨테이너를 대규모로 배포하는 방법을 잘 모릅니다. 회사는 **운영 부담을 최소화하면서 고가용성 아키텍처**에서 컨테이너화된 애플리케이션을 배포할 필요가 있습니다.

이 요구 사항을 충족하는 솔루션은 무엇입니까?', 'A company is building a containerized application on premises and decides to move the application to AWS. The application will have thousands of users soon after it is deployed. The company is unsure how to manage the deployment of containers at scale. The company needs to deploy the containerized application in a highly available architecture that minimizes operational overhead.

Which solution will meet these requirements?'),
  (164, '한 회사에는 두 개의 애플리케이션이 있습니다:
- **송신자 애플리케이션**: 처리할 페이로드를 포함한 메시지를 전송
- **처리 애플리케이션**: 페이로드 메시지를 수신하여 처리

회사는 두 애플리케이션 간 메시지를 처리할 AWS 서비스를 구현하고자 합니다. 송신자 애플리케이션은 시간당 약 1,000개의 메시지를 보낼 수 있습니다. 메시지는 최대 2일 동안 처리될 수 있습니다. 메시지가 처리에 실패하면 나머지 메시지 처리에 영향을 주지 않도록 메시지를 유지해야 합니다.

어떤 솔루션이 이러한 요구 사항을 충족하면서 가장 운영 효율적인 방법입니까?', 'A company has two applications: a sender application that sends messages with payloads to be processed and a processing application intended to receive the messages with payloads. The company wants to implement an AWS service to handle messages between the two applications. The sender application can send about 1,000 messages each hour. The messages may take up to 2 days to be processed: If the messages fail to process, they must be retained so that they do not impact the processing of any remaining messages.

Which solution meets these requirements and is the MOST operationally efficient?'),
  (165, '솔루션 아키텍트는 Amazon S3를 오리진으로 사용하여 정적 웹사이트를 호스팅하는 Amazon CloudFront 솔루션을 설계해야 합니다. 회사의 보안 정책에 따르면 모든 웹사이트 트래픽은 AWS WAF를 통해 검사되어야 합니다.

이 요구 사항을 준수하려면 솔루션 아키텍트는 어떻게 해야 합니까?', 'A solutions architect must design a solution that uses Amazon CloudFront with an Amazon S3 origin to store a static website. The company’s security policy requires that all website traffic be inspected by AWS WAF.

How should the solutions architect comply with these requirements?'),
  (166, '글로벌 이벤트 주최측은 매일 보고서를 정적 HTML 페이지로 온라인에 게시하려고 합니다. 이 페이지는 전 세계 사용자로부터 수백만 건의 조회가 예상됩니다. 파일은 Amazon S3 버킷에 저장되어 있습니다. 솔루션 아키텍트는 효율적이고 효과적인 솔루션을 설계하도록 요청받았습니다.

이 요구 사항을 달성하기 위해 솔루션 아키텍트는 어떤 조치를 취해야 합니까?', 'Organizers for a global event want to put daily reports online as static HTML pages. The pages are expected to generate millions of views from users around the world. The files are stored in an Amazon S3 bucket. A solutions architect has been asked to design an efficient and effective solution.

Which action should the solutions architect take to accomplish this?'),
  (167, '한 회사는 Amazon EC2 인스턴스 그룹에서 프로덕션 애플리케이션을 실행합니다. 이 애플리케이션은 Amazon SQS 큐에서 데이터를 읽고 메시지를 병렬로 처리합니다. 메시지 볼륨은 예측할 수 없으며 간헐적으로 트래픽이 발생합니다. 이 애플리케이션은 다운타임 없이 지속적으로 메시지를 처리해야 합니다.

이 요구 사항을 가장 비용 효율적으로 충족하는 솔루션은 무엇입니까?', 'A company runs a production application on a fleet of Amazon EC2 instances. The application reads the data from an Amazon SQS queue and processes the messages in parallel. The message volume is unpredictable and often has intermittent traffic. This application should continually process messages without any downtime.

Which solution meets these requirements MOST cost-effectively?'),
  (168, '보안 팀은 팀의 모든 AWS 계정에서 특정 서비스 또는 작업에 대한 액세스를 제한하려고 합니다. 모든 계정은 AWS Organizations의 대규모 조직에 속해 있습니다. 솔루션은 확장 가능해야 하며, 권한을 관리할 수 있는 단일 지점이 필요합니다.

이 요구 사항을 달성하기 위해 솔루션 아키텍트는 무엇을 해야 합니까?', 'A security team wants to limit access to specific services or actions in all of the team’s AWS accounts. All accounts belong to a large organization in AWS Organizations. The solution must be scalable and there must be a single point where permissions can be maintained.

What should a solutions architect do to accomplish this?'),
  (169, '회사는 최근 웹 공격으로 인해 공용 웹 애플리케이션의 보안에 대해 우려하고 있습니다. 해당 애플리케이션은 애플리케이션 로드 밸런서(ALB)를 사용합니다. 솔루션 아키텍트는 애플리케이션에 대한 DDoS 공격 위험을 줄여야 합니다.

이 요구 사항을 충족하기 위해 솔루션 아키텍트는 무엇을 해야 합니까?', 'A company is concerned about the security of its public web application due to recent web attacks. The application uses an Application Load Balancer (ALB). A solutions architect must reduce the risk of DDoS attacks against the application.

What should the solutions architect do to meet this requirement?'),
  (170, '회사의 웹 애플리케이션은 애플리케이션 로드 밸런서(ALB) 뒤에서 Amazon EC2 인스턴스에서 실행되고 있습니다. 회사는 최근 정책을 변경하여 애플리케이션에 접근할 수 있는 국가를 하나로 제한해야 합니다.

이 요구 사항을 충족하는 구성은 무엇입니까?', 'A company’s web application is running on Amazon EC2 instances behind an Application Load Balancer. The company recently changed its policy, which now requires the application to be accessed from one specific country only.

Which configuration will meet this requirement?'),
  (171, '회사는 항목 가격을 기반으로 세금 계산을 자동화하는 API를 사용자에게 제공합니다. 회사는 연휴 시즌에만 조회 수가 많아져 응답 시간이 느려지는 문제가 발생합니다. 솔루션 아키텍트는 확장 가능하고 탄력적인 솔루션을 설계해야 합니다.

솔루션 아키텍트가 이를 달성하기 위해 수행해야 하는 작업은 무엇입니까?', 'A company provides an API to its users that automates inquiries for tax computations based on item prices. The company experiences a larger number of inquiries during the holiday season only that cause slower response times. A solutions architect needs to design a solution that is scalable and elastic.

What should the solutions architect do to accomplish this?'),
  (172, '솔루션 아키텍트는 애플리케이션용 새로운 Amazon CloudFront 배포를 생성하고 있습니다. 사용자가 제출하는 일부 정보는 민감합니다. 애플리케이션은 HTTPS를 사용하지만, 추가적인 보안 계층이 필요합니다. 민감한 정보는 애플리케이션 스택 전체에서 보호되어야 하며, 정보에 대한 접근은 특정 애플리케이션으로 제한되어야 합니다.

솔루션 아키텍트가 수행해야 하는 작업은 무엇입니까?', 'A solutions architect is creating a new Amazon CloudFront distribution for an application. Some of the information submitted by users is sensitive. The application uses HTTPS but needs another layer of security. The sensitive information should.be protected throughout the entire application stack, and access to the information should be restricted to certain applications.

Which action should the solutions architect take?'),
  (173, '게임 회사는 브라우저 기반 애플리케이션을 AWS에서 호스팅합니다. 애플리케이션 사용자는 Amazon S3에 저장된 많은 비디오와 이미지를 소비합니다. 이 콘텐츠는 모든 사용자에게 동일합니다.

애플리케이션의 인기가 증가하면서 전 세계 수백만 명의 사용자가 이러한 미디어 파일에 접근하고 있습니다. 회사는 오리진에 대한 부하를 줄이면서 사용자에게 파일을 제공하고자 합니다.

요구 사항을 가장 비용 효율적으로 충족하는 솔루션은 무엇입니까?', 'A gaming company hosts a browser-based application on AWS. The users of the application consume a large number of videos and images that are stored in Amazon S3. This content is the same for all users.

The application has increased in popularity, and millions of users worldwide accessing these media files. The company wants to provide the files to the users while reducing the load on the origin.

Which solution meets these requirements MOST cost-effectively?'),
  (174, '한 회사는 단일 가용 영역(AZ)에서 실행되는 6개의 프런트엔드 웹 서버를 가진 다중 계층 애플리케이션을 운영하고 있으며, 이들은 Application Load Balancer(ALB) 뒤에 있는 Amazon EC2 Auto Scaling 그룹에서 실행됩니다. 솔루션스 아키텍트는 애플리케이션을 수정하지 않고도 인프라를 고가용성으로 변경해야 합니다.

애플리케이션을 수정하지 않고 고가용성을 제공하는 아키텍처는 무엇입니까?', 'A company has a multi-tier application that runs six front-end web servers in an Amazon EC2 Auto Scaling group in a single Availability Zone behind an Application Load Balancer (ALB). A solutions architect needs to modify the infrastructure to be highly available without modifying the application.

Which architecture should the solutions architect choose that provides high availability?'),
  (175, '한 전자상거래 회사는 Amazon API Gateway와 AWS Lambda 함수를 사용하는 주문 처리 애플리케이션을 운영하고 있습니다. 애플리케이션은 Amazon Aurora PostgreSQL 데이터베이스에 데이터를 저장합니다. 최근 판매 이벤트 동안 고객 주문이 갑자기 급증했습니다. 일부 고객은 시간 초과(timeout)를 경험했고, 애플리케이션은 해당 고객들의 주문을 처리하지 못했습니다.

솔루션스 아키텍트는 데이터베이스의 CPU 사용률과 메모리 사용률이 높은 이유가 많은 수의 열린 연결 때문임을 확인했습니다. 솔루션스 아키텍트는 애플리케이션에 대한 변경을 최소화하면서 시간 초과 오류를 방지해야 합니다.

어떤 솔루션이 이러한 요구 사항을 충족합니까?', 'An ecommerce company has an order-processing application that uses Amazon API Gateway and an AWS Lambda function. The application stores data in an Amazon Aurora PostgreSQL database. During a recent sales event, a sudden surge in customer orders occurred. Some customers experienced timeouts, and the application did not process the orders of those customers.

A solutions architect determined that the CPU utilization and memory utilization were high on the database because of a large number of open connections. The solutions architect needs to prevent the timeout errors while making the least possible changes to the application.

Which solution will meet these requirements?'),
  (176, '애플리케이션이 프라이빗 서브넷의 Amazon EC2 인스턴스에서 실행됩니다. 애플리케이션은 Amazon DynamoDB 테이블에 접근해야 합니다.

트래픽이 AWS 네트워크를 벗어나지 않도록 하면서 테이블에 접근하는 가장 안전한 방법은 무엇입니까?', 'An application runs on Amazon EC2 instances in private subnets. The application needs to access an Amazon DynamoDB table.

What is the MOST secure way to access the table while ensuring that the traffic does not leave the AWS network?'),
  (177, '엔터테인먼트 회사가 Amazon DynamoDB를 사용하여 미디어 메타데이터를 저장하고 있습니다. 애플리케이션은 읽기 중심이며 지연이 발생하고 있습니다. 회사에는 추가적인 운영 부담을 처리할 인력이 없으며, 애플리케이션을 재구성하지 않고 DynamoDB의 성능 효율성을 개선해야 합니다.

이 요구사항을 충족하기 위해 솔루션 아키텍트가 권장해야 하는 방법은 무엇입니까?', 'An entertainment company is using Amazon DynamoDB to store media metadata. The application is read intensive and experiencing delays. The company does not have staff to handle additional operational overhead and needs to improve the performance efficiency of DynamoDB without reconfiguring the application.

What should a solutions architect recommend to meet this requirement?'),
  (178, '회사의 인프라는 단일 AWS 리전에서 Amazon EC2 인스턴스와 Amazon RDS DB 인스턴스로 구성되어 있습니다. 회사는 데이터를 별도의 리전에서 백업하고자 합니다.

운영 오버헤드가 가장 적은 방식으로 이러한 요구사항을 충족하는 솔루션은 무엇입니까?', 'A company’s infrastructure consists of Amazon EC2 instances and an Amazon RDS DB instance in a single AWS Region. The company wants to back up its data in a separate Region.

Which solution will meet these requirements with the LEAST operational overhead?'),
  (179, '1. 문제 전체 한글 번역:

솔루션 아키텍트는 애플리케이션이 Amazon RDS DB 인스턴스에 액세스할 때 사용하는 데이터베이스 사용자 이름과 암호를 안전하게 저장해야 합니다. 데이터베이스에 접근하는 애플리케이션은 Amazon EC2 인스턴스에서 실행됩니다. 솔루션 아키텍트는 AWS Systems Manager Parameter Store에 안전한 파라미터를 생성하려고 합니다.

이 요구사항을 충족하려면 솔루션 아키텍트는 무엇을 해야 합니까?', 'A solutions architect needs to securely store a database user name and password that an application uses to access an Amazon RDS DB instance. The application that accesses the database runs on an Amazon EC2 instance. The solutions architect wants to create a secure parameter in AWS Systems Manager Parameter Store.

What should the solutions architect do to meet this requirement?'),
  (180, '한 회사가 API 기반으로 동작하는 클라우드 커뮤니케이션 플랫폼을 설계하고 있습니다.
애플리케이션은 Network Load Balancer(NLB) 뒤에 있는 Amazon EC2 인스턴스에서 호스팅됩니다.
회사는 Amazon API Gateway를 사용하여 외부 사용자가 API를 통해 애플리케이션에 액세스하도록 제공합니다.
회사는 SQL 인젝션 같은 웹 공격으로부터 플랫폼을 보호하고,
대규모 정교한 DDoS 공격을 감지하고 완화하기를 원합니다.

가장 강력한 보호를 제공하는 솔루션 조합은 무엇입니까? (두 가지 선택)', 'A company is designing a cloud communications platform that is driven by APIs. The application is hosted on Amazon EC2 instances behind a Network Load Balancer (NLB). The company uses Amazon API Gateway to provide external users with access to the application through APIs. The company wants to protect the platform against web exploits like SQL injection and also wants to detect and mitigate large, sophisticated DDoS attacks.

Which combination of solutions provides the MOST protection? (Choose two.)'),
  (181, '한 회사는 Amazon EC2 인스턴스에서 실행되는 레거시 데이터 처리 애플리케이션을 보유하고 있습니다. 데이터는 순차적으로 처리되지만 결과의 순서는 중요하지 않습니다. 애플리케이션은 모놀리식 아키텍처를 사용합니다. 회사가 증가하는 수요를 충족하기 위해 애플리케이션을 확장하는 유일한 방법은 인스턴스의 크기를 늘리는 것입니다.

회사의 개발팀은 애플리케이션을 Amazon Elastic Container Service(Amazon ECS)에서 마이크로서비스 아키텍처로 재작성하기로 결정했습니다.

마이크로서비스 간 통신을 위해 솔루션스 아키텍트가 무엇을 권장해야 합니까?', 'A company has a legacy data processing application that runs on Amazon EC2 instances. Data is processed sequentially, but the order of results does not matter. The application uses a monolithic architecture. The only way that the company can scale the application to meet increased demand is to increase the size of the instances.

The company’s developers have decided to rewrite the application to use a microservices architecture on Amazon Elastic Container Service (Amazon ECS).

What should a solutions architect recommend for communication between the microservices?'),
  (182, '한 회사는 온프레미스의 MySQL 데이터베이스를 AWS로 마이그레이션하려고 합니다. 회사는 최근에 비즈니스에 심각한 영향을 미친 데이터베이스 장애를 겪었습니다. 다시는 이런 일이 발생하지 않도록 회사는 데이터 손실을 최소화하고 모든 트랜잭션이 최소 두 노드에 저장되도록 하는 신뢰할 수 있는 데이터베이스 솔루션을 AWS에서 원합니다.

어떤 솔루션이 이러한 요구사항을 충족합니까?', 'A company wants to migrate its MySQL database from on premises to AWS. The company recently experienced a database outage that significantly impacted the business. To ensure this does not happen again, the company wants a reliable database solution on AWS that minimizes data loss and stores every transaction on at least two nodes.

Which solution meets these requirements?'),
  (183, '한 회사가 신규 동적 주문 웹사이트를 구축하고 있습니다. 회사는 서버 유지관리 및 패치를 최소화하기를 원합니다. 웹사이트는 고가용성이어야 하며 사용자 수요 변화에 맞춰 읽기 및 쓰기 용량을 가능한 한 신속하게 확장할 수 있어야 합니다.

어떤 솔루션이 이러한 요구사항을 충족합니까?', 'A company is building a new dynamic ordering website. The company wants to minimize server maintenance and patching. The website must be highly available and must scale read and write capacity as quickly as possible to meet changes in user demand.

Which solution will meet these requirements?'),
  (184, '한 회사는 소프트웨어 엔지니어링을 위해 사용되는 AWS 계정을 보유하고 있습니다. 해당 AWS 계정은 AWS Direct Connect 연결 쌍을 통해 회사의 온프레미스 데이터 센터에 액세스할 수 있습니다. 모든 비-VPC 트래픽은 가상 프라이빗 게이트웨이(virtual private gateway)로 라우팅됩니다.

개발 팀이 최근 콘솔을 통해 AWS Lambda 함수를 생성했습니다. 개발 팀은 해당 함수가 회사 데이터 센터의 프라이빗 서브넷에서 실행 중인 데이터베이스에 접근할 수 있도록 해야 합니다.

어떤 솔루션이 이러한 요구 사항을 충족합니까?', 'A company has an AWS account used for software engineering. The AWS account has access to the company’s on-premises data center through a pair of AWS Direct Connect connections. All non-VPC traffic routes to the virtual private gateway.

A development team recently created an AWS Lambda function through the console. The development team needs to allow the function to access a database that runs in a private subnet in the company’s data center.

Which solution will meet these requirements?'),
  (185, '한 회사는 Amazon ECS를 사용하여 애플리케이션을 실행하고 있습니다.
이 애플리케이션은 원본 이미지의 크기를 조정한 버전을 생성한 다음, Amazon S3 API 호출을 통해 조정된 이미지를 Amazon S3에 저장합니다.

솔루션스 아키텍트는 애플리케이션이 Amazon S3에 접근할 권한을 갖도록 어떻게 보장할 수 있습니까?', 'A company runs an application using Amazon ECS. The application creates resized versions of an original image and then makes Amazon S3 API calls to store the resized images in Amazon S3.

How can a solutions architect ensure that the application has permission to access Amazon S3?'),
  (186, '한 회사는 Windows 기반 애플리케이션을 AWS로 마이그레이션해야 합니다. 이 애플리케이션은 여러 가용 영역(AZ)에 배포된 여러 Amazon EC2 Windows 인스턴스에 연결되는 공유 Windows 파일 시스템을 사용해야 합니다.

이 요구사항을 충족하기 위해 솔루션스 아키텍트는 무엇을 해야 합니까?', 'A company has a Windows-based application that must be migrated to AWS. The application requires the use of a shared Windows file system attached to multiple Amazon EC2 Windows instances that are deployed across multiple Availability Zone:

What should a solutions architect do to meet this requirement?'),
  (187, '한 회사는 로드 밸런싱된 프런트 엔드, 컨테이너 기반 애플리케이션, 관계형 데이터베이스로 구성될 전자상거래 애플리케이션을 개발하고 있습니다. 솔루션스 아키텍트는 가능한 한 적은 수동 개입으로 작동하는 고가용성 솔루션을 만들어야 합니다.

어떤 솔루션이 이러한 요구사항을 충족합니까? (두 가지 선택)', 'A company is developing an ecommerce application that will consist of a load-balanced front end, a container-based application, and a relational database. A solutions architect needs to create a highly available solution that operates with as little manual intervention as possible.

Which solutions meet these requirements? (Choose two.)'),
  (188, '한 회사는 Amazon S3를 데이터 레이크로 사용하고 있습니다. 새 파트너가 SFTP를 사용하여 데이터 파일을 업로드해야 합니다. 솔루션스 아키텍트는 운영 오버헤드를 최소화하면서 고가용성 SFTP 솔루션을 구현해야 합니다.

어떤 솔루션이 이러한 요구사항을 충족합니까?', 'A company uses Amazon S3 as its data lake. The company has a new partner that must use SFTP to upload data files. A solutions architect needs to implement a highly available SFTP solution that minimizes operational overhead.

Which solution will meet these requirements?'),
  (189, '한 회사는 계약 문서를 저장해야 합니다. 계약은 5년 동안 유효합니다. 5년 기간 동안 회사는 문서를 덮어쓰거나 삭제하지 못하도록 보장해야 합니다. 회사는 문서를 저장 시 암호화해야 하며 암호화 키를 매년 자동으로 교체(로테이션)해야 합니다.

이 요구사항을 가장 적은 운영 오버헤드로 충족하기 위해 솔루션스 아키텍트가 취해야 할 단계의 조합은 무엇입니까? (두 개 선택)', 'A company needs to store contract documents. A contract lasts for 5 years. During the 5-year period, the company must ensure that the documents cannot be overwritten or deleted. The company needs to encrypt the documents at rest and rotate the encryption keys automatically every year.

Which combination of steps should a solutions architect take to meet these requirements with the LEAST operational overhead? (Choose two.)'),
  (190, '한 회사는 Java와 PHP 기반의 웹 애플리케이션을 보유하고 있습니다. 회사는 이 애플리케이션을 온프레미스에서 AWS로 이전하려고 합니다.
회사는 새로운 사이트 기능을 자주 테스트할 수 있는 능력이 필요합니다. 또한 고가용성이 보장되며 관리형이고 운영 오버헤드가 최소인 솔루션이 필요합니다.

어떤 솔루션이 이러한 요구사항을 충족합니까?', 'A company has a web application that is based on Java and PHP. The company plans to move the application from on premises to AWS. The company needs the ability to test new site features frequently. The company also needs a highly available and managed solution that requires minimum operational overhead.

Which solution will meet these requirements?'),
  (191, '한 회사는 고객 정보를 Amazon RDS for MySQL에 저장하는 주문 애플리케이션을 운영하고 있습니다.
영업시간 동안 직원들은 보고 목적의 일회성 쿼리를 실행합니다.
보고 쿼리가 오래 실행되어 주문 처리 중에 **타임아웃**이 발생하고 있습니다.
회사는 직원이 쿼리를 수행하지 못하게 하지 않으면서 **타임아웃을 제거**하고자 합니다.

이 요구사항을 충족하기 위해 솔루션 아키텍트가 취해야 할 조치는 무엇입니까?', 'A company has an ordering application that stores customer information in Amazon RDS for MySQL. During regular business hours, employees run one-time queries for reporting purposes. Timeouts are occurring during order processing because the reporting queries are taking a long time to run. The company needs to eliminate the timeouts without preventing employees from performing queries.

What should a solutions architect do to meet these requirements?'),
  (192, '한 병원이 방대한 역사적 기록 문서의 디지털 사본을 만들고자 합니다.
병원은 매일 수백 건의 새로운 문서를 계속 추가할 예정입니다.
병원의 데이터 팀은 문서를 스캔하고 AWS 클라우드에 업로드합니다.

솔루션 아키텍트는 다음 요구사항을 충족하는 솔루션을 구현해야 합니다:

- 문서를 분석하고, 의료 정보를 추출하며,
- 애플리케이션이 데이터에 대해 SQL 쿼리를 실행할 수 있도록 문서를 저장

이 솔루션은 **확장성과 운영 효율성을 극대화**해야 합니다.

이 요구사항을 충족하기 위해 솔루션 아키텍트가 수행해야 할 조치의 조합은 무엇입니까? (두 가지 선택)', 'A hospital wants to create digital copies for its large collection of historical written records. The hospital will continue to add hundreds of new documents each day. The hospital’s data team will scan the documents and will upload the documents to the AWS Cloud.

A solutions architect must implement a solution to analyze the documents, extract the medical information, and store the documents so that an application can run SQL queries on the data. The solution must maximize scalability and operational efficiency.

Which combination of steps should the solutions architect take to meet these requirements? (Choose two.)'),
  (193, '한 회사가 Amazon EC2 인스턴스에서 배치 애플리케이션을 실행하고 있습니다.
애플리케이션은 여러 Amazon RDS 데이터베이스가 있는 백엔드로 구성됩니다.
애플리케이션으로 인해 데이터베이스에서 읽기 요청이 많이 발생하고 있습니다.
솔루션 아키텍트는 데이터베이스 읽기 요청 수를 줄이면서 **높은 가용성**을 보장해야 합니다.

이 요구사항을 충족하려면 솔루션 아키텍트는 무엇을 해야 합니까?', 'A company is running a batch application on Amazon EC2 instances. The application consists of a backend with multiple Amazon RDS databases. The application is causing a high number of reads on the databases. A solutions architect must reduce the number of database reads while ensuring high availability.

What should the solutions architect do to meet this requirement?'),
  (194, '한 회사가 AWS에서 중요한 애플리케이션을 실행해야 합니다.
회사는 애플리케이션의 데이터베이스로 Amazon EC2를 사용해야 합니다.
데이터베이스는 **고가용성**이어야 하며, 장애나 방해 이벤트가 발생하면 **자동으로 장애 조치(failover)**가 되어야 합니다.

이 요구사항을 충족하려면 어떤 솔루션을 선택해야 합니까?', 'A company needs to run a critical application on AWS. The company needs to use Amazon EC2 for the application’s database. The database must be highly available and must fail over automatically if a disruptive event occurs.

Which solution will meet these requirements?'),
  (195, '한 회사의 주문 시스템은 클라이언트로부터 요청을 Amazon EC2 인스턴스로 보냅니다.
EC2 인스턴스는 주문을 처리한 후 Amazon RDS의 데이터베이스에 주문을 저장합니다.
사용자들은 시스템 장애가 발생하면 주문을 다시 처리해야 한다고 보고합니다.
회사는 시스템 장애 발생 시 **주문을 자동으로 처리할 수 있는 내결함(resilient) 솔루션**을 원합니다.

이 요구사항을 충족하려면 어떤 솔루션을 선택해야 합니까?', 'A company’s order system sends requests from clients to Amazon EC2 instances. The EC2 instances process the orders and then store the orders in a database on Amazon RDS. Users report that they must reprocess orders when the system fails. The company wants a resilient solution that can process orders automatically if a system outage occurs.

What should a solutions architect do to meet these requirements?'),
  (196, '한 회사가 대규모 Amazon EC2 인스턴스 군에서 애플리케이션을 실행하고 있습니다.
애플리케이션은 Amazon DynamoDB 테이블에 항목을 읽고 쓰기를 수행합니다.
DynamoDB 테이블의 크기는 지속적으로 증가하지만, 애플리케이션은 **최근 30일 데이터만 필요**합니다.
회사는 비용과 개발 노력을 최소화하는 솔루션이 필요합니다.

이 요구사항을 충족하는 솔루션은 무엇입니까?', 'A company runs an application on a large fleet of Amazon EC2 instances. The application reads and writes entries into an Amazon DynamoDB table. The size of the DynamoDB table continuously grows, but the application needs only data from the last 30 days. The company needs a solution that minimizes cost and development effort.

Which solution meets these requirements?'),
  (197, '한 회사가 Microsoft .NET 애플리케이션을 온프레미스 Windows Server에서 실행하고 있습니다.
애플리케이션은 Oracle Database Standard Edition 서버를 사용하여 데이터를 저장합니다.
회사는 AWS로 마이그레이션을 계획하고 있으며, 개발 변경을 최소화하면서 애플리케이션을 이동하기를 원합니다.
AWS 애플리케이션 환경은 **고가용성(Highly Available)**이어야 합니다.

이 요구사항을 충족하는 조합은 무엇입니까? (두 가지 선택)', 'A company has a Microsoft .NET application that runs on an on-premises Windows Server. The application stores data by using an Oracle Database Standard Edition server. The company is planning a migration to AWS and wants to minimize development changes while moving the application. The AWS application environment should be highly available.

Which combination of actions should the company take to meet these requirements? (Choose two.)'),
  (198, '한 회사가 컨테이너화된 애플리케이션을 온프레미스 데이터센터의 Kubernetes 클러스터에서 실행하고 있습니다.
회사는 데이터 저장소로 MongoDB를 사용하고 있습니다.
회사는 일부 환경을 AWS로 마이그레이션하려고 하지만, 현재 시점에서는 코드 변경이나 배포 방식 변경이 불가능합니다.
회사는 운영 부담을 최소화하는 솔루션이 필요합니다.

이 요구사항을 충족하는 솔루션은 무엇입니까?', 'A company runs a containerized application on a Kubernetes cluster in an on-premises data center. The company is using a MongoDB database for data storage. The company wants to migrate some of these environments to AWS, but no code changes or deployment method changes are possible at this time. The company needs a solution that minimizes operational overhead.

Which solution meets these requirements?'),
  (199, '한 텔레마케팅 회사가 AWS에서 고객 콜센터 기능을 설계하고 있습니다.
회사는 여러 화자를 인식하고, 전사(transcript) 파일을 생성할 수 있는 솔루션이 필요합니다.
또한 비즈니스 패턴을 분석하기 위해 전사 파일을 쿼리할 수 있어야 합니다.
전사 파일은 감사 목적으로 7년간 저장되어야 합니다.

이 요구사항을 충족하는 솔루션은 무엇입니까?', 'A telemarketing company is designing its customer call center functionality on AWS. The company needs a solution that provides multiple speaker recognition and generates transcript files. The company wants to query the transcript files to analyze the business patterns. The transcript files must be stored for 7 years for auditing purposes.

Which solution will meet these requirements?'),
  (200, '한 회사가 AWS에서 애플리케이션을 호스팅하고 있습니다.
회사는 Amazon Cognito를 사용하여 사용자를 관리합니다.
사용자가 애플리케이션에 로그인하면 애플리케이션은 Amazon API Gateway에서 호스팅되는 REST API를 사용하여 Amazon DynamoDB에서 필요한 데이터를 가져옵니다.
회사는 **개발 노력 감소**를 위해 REST API에 대한 접근을 제어할 수 있는 AWS 관리형 솔루션을 원합니다.

운영 부담이 가장 적은 솔루션은 무엇입니까?', 'A company hosts its application on AWS. The company uses Amazon Cognito to manage users. When users log in to the application, the application fetches required data from Amazon DynamoDB by using a REST API that is hosted in Amazon API Gateway. The company wants an AWS managed solution that will control access to the REST API to reduce development efforts.

Which solution will meet these requirements with the LEAST operational overhead?'),
  (201, '한 회사가 모바일 앱 사용자를 대상으로 하는 마케팅 커뮤니케이션 서비스를 개발하고 있습니다. 회사는 사용자에게 단문 메시지 서비스(SMS)를 사용하여 확인 메시지를 보내야 합니다. 사용자는 SMS 메시지에 회신할 수 있어야 합니다. 회사는 분석을 위해 응답을 1년 동안 저장해야 합니다.

이 요구사항을 충족하기 위해 솔루션스 아키텍트는 무엇을 해야 합니까?', 'A company is developing a marketing communications service that targets mobile app users. The company needs to send confirmation messages with Short Message Service (SMS) to its users. The users must be able to reply to the SMS messages. The company must store the responses for a year for analysis.

What should a solutions architect do to meet these requirements?'),
  (202, '한 회사가 데이터를 Amazon S3 버킷으로 이동하려고 합니다. 데이터는 S3 버킷에 저장될 때 암호화되어야 합니다. 추가로, 암호화 키는 매년 자동으로 교체(로테이션)되어야 합니다.

이 요구사항을 가장 적은 운영 오버헤드로 충족하는 솔루션은 무엇입니까?', 'A company is planning to move its data to an Amazon S3 bucket. The data must be encrypted when it is stored in the S3 bucket. Additionally, the encryption key must be automatically rotated every year.

Which solution will meet these requirements with the LEAST operational overhead?'),
  (203, '한 금융 회사의 고객들은 문자 메시지를 보내 재무 상담사와의 약속을 요청합니다. Amazon EC2 인스턴스에서 실행되는 웹 애플리케이션이 약속 요청을 수락합니다. 문자 메시지는 웹 애플리케이션을 통해 Amazon Simple Queue Service(Amazon SQS) 큐에 게시됩니다. 그런 다음 EC2 인스턴스에서 실행되는 또 다른 애플리케이션이 고객에게 미팅 초대장과 미팅 확인 이메일 메시지를 보냅니다. 일정이 성공적으로 예약된 후, 이 애플리케이션은 미팅 정보를 Amazon DynamoDB 데이터베이스에 저장합니다.

회사가 확장함에 따라, 고객들은 미팅 초대장이 도착하는 데 더 오래 걸린다고 보고합니다.

이 문제를 해결하기 위해 솔루션스 아키텍트는 무엇을 권장해야 합니까?', 'The customers of a finance company request appointments with financial advisors by sending text messages. A web application that runs on Amazon EC2 instances accepts the appointment requests. The text messages are published to an Amazon Simple Queue Service (Amazon SQS) queue through the web application. Another application that runs on EC2 instances then sends meeting invitations and meeting confirmation email messages to the customers. After successful scheduling, this application stores the meeting information in an Amazon DynamoDB database.

As the company expands, customers report that their meeting invitations are taking longer to arrive.

What should a solutions architect recommend to resolve this issue?'),
  (204, '한 온라인 소매 회사는 5천만 명이 넘는 활성 고객을 보유하고 있으며 하루에 25,000개 이상의 주문을 받습니다. 회사는 고객의 구매 데이터를 수집하여 Amazon S3에 저장합니다. 추가 고객 데이터는 Amazon RDS에 저장됩니다.

회사는 다양한 팀이 분석을 수행할 수 있도록 모든 데이터에 접근할 수 있게 하기를 원합니다. 솔루션은 데이터에 대한 세분화된 권한 관리를 제공해야 하며, 운영 오버헤드를 최소화해야 합니다.

이 요구사항을 충족하는 솔루션은 무엇입니까?', 'An online retail company has more than 50 million active customers and receives more than 25,000 orders each day. The company collects purchase data for customers and stores this data in Amazon S3. Additional customer data is stored in Amazon RDS.

The company wants to make all the data available to various teams so that the teams can perform analytics. The solution must provide the ability to manage fine-grained permissions for the data and must minimize operational overhead.

Which solution will meet these requirements?'),
  (205, '한 회사가 온프레미스 데이터 센터에서 마케팅 웹사이트를 호스팅합니다. 웹사이트는 정적 문서로 구성되어 있으며 단일 서버에서 실행됩니다. 관리자는 웹사이트 콘텐츠를 드물게 업데이트하며 SFTP 클라이언트를 사용해 새 문서를 업로드합니다.

회사는 웹사이트를 AWS에서 호스팅하고 Amazon CloudFront를 사용하기로 결정했습니다. 회사의 솔루션스 아키텍트는 CloudFront 배포를 생성했습니다. 솔루션스 아키텍트는 CloudFront 오리진으로 사용할 웹사이트 호스팅을 위해 가장 비용 효율적이고 탄력적인 아키텍처를 설계해야 합니다.

이 요구사항을 충족할 수 있는 솔루션은 무엇입니까?', 'A company hosts a marketing website in an on-premises data center. The website consists of static documents and runs on a single server. An administrator updates the website content infrequently and uses an SFTP client to upload new documents.

The company decides to host its website on AWS and to use Amazon CloudFront. The company’s solutions architect creates a CloudFront distribution. The solutions architect must design the most cost-effective and resilient architecture for website hosting to serve as the CloudFront origin.

Which solution will meet these requirements?'),
  (206, '한 회사가 Amazon Machine Image(AMI)를 관리하려고 합니다. 회사는 현재 AMI가 생성된 동일한 AWS 리전에 AMI를 복사합니다. 회사는 AWS API 호출을 캡처하고 회사 계정 내에서 Amazon EC2 CreateImage API 작업이 호출될 때마다 알림을 보내는 애플리케이션을 설계해야 합니다.

이 요구사항을 가장 적은 운영 오버헤드로 충족하는 솔루션은 무엇입니까?', 'A company wants to manage Amazon Machine Images (AMIs). The company currently copies AMIs to the same AWS Region where the AMIs were created. The company needs to design an application that captures AWS API calls and sends alerts whenever the Amazon EC2 CreateImage API operation is called within the company’s account.

Which solution will meet these requirements with the LEAST operational overhead?'),
  (207, '한 회사가 비동기 API를 소유하고 있으며, 이 API는 사용자 요청을 수집하고 요청 유형에 따라 적절한 마이크로서비스로 요청을 디스패치합니다. 회사는 Amazon API Gateway를 사용해 API 프런트엔드를 배포하고 있으며, AWS Lambda 함수가 Amazon DynamoDB를 호출해 사용자 요청을 저장한 다음 처리 마이크로서비스로 디스패치합니다.

회사는 예산이 허용하는 만큼의 DynamoDB 처리량을 프로비저닝했지만, 여전히 가용성 문제를 겪고 있으며 사용자 요청을 유실하고 있습니다.

기존 사용자에게 영향을 주지 않고 이 문제를 해결하기 위해 솔루션스 아키텍트는 무엇을 해야 합니까?', 'A company owns an asynchronous API that is used to ingest user requests and, based on the request type, dispatch requests to the appropriate microservice for processing. The company is using Amazon API Gateway to deploy the API front end, and an AWS Lambda function that invokes Amazon DynamoDB to store user requests before dispatching them to the processing microservices.

The company provisioned as much DynamoDB throughput as its budget allows, but the company is still experiencing availability issues and is losing user requests.

What should a solutions architect do to address this issue without impacting existing users?'),
  (208, '한 회사는 Amazon EC2 인스턴스에서 Amazon S3 버킷으로 데이터를 이동해야 합니다. 회사는 어떠한 API 호출과 데이터도 공용 인터넷 경로를 통해 라우팅되지 않도록 해야 합니다. 오직 EC2 인스턴스만 S3 버킷에 데이터를 업로드할 수 있어야 합니다.

이 요구사항을 충족하는 솔루션은 무엇입니까?', 'A company needs to move data from an Amazon EC2 instance to an Amazon S3 bucket. The company must ensure that no API calls and no data are routed through public internet routes. Only the EC2 instance can have access to upload data to the S3 bucket.

Which solution will meet these requirements?'),
  (209, '한 솔루션스 아키텍트가 AWS 클라우드에 배포될 새로운 애플리케이션의 아키텍처를 설계하고 있습니다. 이 애플리케이션은 Amazon EC2 온디맨드 인스턴스에서 실행되며, 여러 가용 영역에 걸쳐 자동으로 확장됩니다. EC2 인스턴스는 하루 종일 빈번하게 증가하고 감소할 것입니다. Application Load Balancer(ALB)가 부하 분산을 처리합니다. 아키텍처는 분산 세션 데이터 관리(distributed session data management)를 지원해야 합니다. 회사는 필요하다면 코드 변경도 수용할 수 있습니다.

아키텍처가 분산 세션 데이터 관리를 지원하도록 하려면 솔루션스 아키텍트는 무엇을 해야 합니까?', 'A solutions architect is designing the architecture of a new application being deployed to the AWS Cloud. The application will run on Amazon EC2 On-Demand Instances and will automatically scale across multiple Availability Zones. The EC2 instances will scale up and down frequently throughout the day. An Application Load Balancer (ALB) will handle the load distribution. The architecture needs to support distributed session data management. The company is willing to make changes to code if needed.

What should the solutions architect do to ensure that the architecture supports distributed session data management?'),
  (210, '한 회사는 빠르게 성장 중인 음식 배달 서비스를 제공합니다. 성장 때문에 회사의 주문 처리 시스템은 피크 트래픽 시간 동안 확장 문제를 겪고 있습니다. 현재 아키텍처는 다음을 포함합니다:

• 애플리케이션에서 주문을 수집하기 위해 Amazon EC2 Auto Scaling 그룹에서 실행되는 Amazon EC2 인스턴스 그룹
• 주문을 처리(이행)하기 위해 Amazon EC2 Auto Scaling 그룹에서 실행되는 또 다른 EC2 인스턴스 그룹

주문 수집 프로세스는 빠르게 진행되지만, 주문 이행 프로세스는 더 오래 걸릴 수 있습니다. 스케일링 이벤트로 인해 데이터가 손실되어서는 안 됩니다.

솔루션스 아키텍트는 피크 트래픽 시간 동안 주문 수집 프로세스와 주문 이행 프로세스가 모두 적절히 확장되도록 해야 합니다. 솔루션은 회사의 AWS 리소스 활용을 최적화해야 합니다.

이 요구사항을 충족하는 솔루션은 무엇입니까?', 'A company offers a food delivery service that is growing rapidly. Because of the growth, the company’s order processing system is experiencing scaling problems during peak traffic hours. The current architecture includes the following:

• A group of Amazon EC2 instances that run in an Amazon EC2 Auto Scaling group to collect orders from the application
• Another group of EC2 instances that run in an Amazon EC2 Auto Scaling group to fulfill orders

The order collection process occurs quickly, but the order fulfillment process can take longer. Data must not be lost because of a scaling event.

A solutions architect must ensure that the order collection process and the order fulfillment process can both scale properly during peak traffic hours. The solution must optimize utilization of the company’s AWS resources.

Which solution meets these requirements?'),
  (211, '한 회사가 여러 프로덕션 애플리케이션을 호스팅하고 있습니다. 그 중 하나의 애플리케이션은 여러 AWS 리전에 걸쳐 Amazon EC2, AWS Lambda, Amazon RDS, Amazon Simple Notification Service(Amazon SNS), Amazon Simple Queue Service(Amazon SQS) 리소스로 구성되어 있습니다. 모든 회사 리소스는 "application"이라는 태그 이름과 각 애플리케이션에 해당하는 값을 사용하여 태깅되어 있습니다. 솔루션스 아키텍트는 태그된 모든 컴포넌트를 식별하기 위한 가장 빠른 솔루션을 제공해야 합니다.

이 요구사항을 충족하는 솔루션은 무엇입니까?', 'A company hosts multiple production applications. One of the applications consists of resources from Amazon EC2, AWS Lambda, Amazon RDS, Amazon Simple Notification Service (Amazon SNS), and Amazon Simple Queue Service (Amazon SQS) across multiple AWS Regions. All company resources are tagged with a tag name of “application” and a value that corresponds to each application. A solutions architect must provide the quickest solution for identifying all of the tagged components.

Which solution meets these requirements?'),
  (212, '한 회사는 매일 한 번씩 데이터베이스를 Amazon S3로 내보내어 다른 팀이 액세스할 수 있도록 해야 합니다. 내보낸 객체 크기는 2GB에서 5GB 사이입니다. 데이터에 대한 S3 액세스 패턴은 가변적이며 빠르게 변합니다. 데이터는 즉시 사용 가능해야 하며 최대 3개월 동안 액세스 가능해야 합니다. 회사는 검색 시간을 늘리지 않으면서 가장 비용 효율적인 솔루션이 필요합니다.

이 요구사항을 충족하기 위해 회사는 어떤 S3 스토리지 클래스를 사용해야 합니까?', 'A company needs to export its database once a day to Amazon S3 for other teams to access. The exported object size varies between 2 GB and 5 GB. The S3 access pattern for the data is variable and changes rapidly. The data must be immediately available and must remain accessible for up to 3 months. The company needs the most cost-effective solution that will not increase retrieval time.

Which S3 storage class should the company use to meet these requirements?'),
  (213, '한 회사가 새로운 모바일 앱을 개발하고 있습니다. 회사는 교차 사이트 스크립팅(XSS)이나 SQL 인젝션과 같은 일반적인 애플리케이션 수준 공격으로부터 Application Load Balancer(ALB)를 보호하기 위해 적절한 트래픽 필터링을 구현해야 합니다. 회사에는 인프라와 운영 인력이 최소 수준입니다. 회사는 AWS 환경에서 서버를 관리, 업데이트, 보안 처리하는 책임을 줄여야 합니다.

이 요구사항을 충족하기 위해 솔루션스 아키텍트는 무엇을 권장해야 합니까?', 'A company is developing a new mobile app. The company must implement proper traffic filtering to protect its Application Load Balancer (ALB) against common application-level attacks, such as cross-site scripting or SQL injection. The company has minimal infrastructure and operational staff. The company needs to reduce its share of the responsibility in managing, updating, and securing servers for its AWS environment.

What should a solutions architect recommend to meet these requirements?'),
  (214, '한 회사의 리포팅 시스템은 매일 수백 개의 .csv 파일을 Amazon S3 버킷에 전달합니다. 회사는 이 파일들을 Apache Parquet 형식으로 변환해야 하며, 변환된 데이터 버킷에 파일을 저장해야 합니다.

가장 적은 개발 노력으로 이러한 요구사항을 충족할 수 있는 솔루션은 무엇입니까?', 'A company’s reporting system delivers hundreds of .csv files to an Amazon S3 bucket each day. The company must convert these files to Apache Parquet format and must store the files in a transformed data bucket.

Which solution will meet these requirements with the LEAST development effort?'),
  (215, '한 회사는 데이터 센터의 네트워크 연결 스토리지(NAS)에 700TB의 백업 데이터를 보관하고 있습니다. 이 백업 데이터는 드물게 발생하는 규제 요청을 위해 액세스 가능해야 하며 7년 동안 보존되어야 합니다. 회사는 이 백업 데이터를 데이터 센터에서 AWS로 마이그레이션하기로 결정했습니다. 마이그레이션은 1개월 이내에 완료되어야 합니다. 회사는 데이터 전송을 위해 공용 인터넷 연결에서 500Mbps의 전용 대역폭을 사용할 수 있습니다.

가장 낮은 비용으로 데이터를 마이그레이션하고 저장하려면 솔루션스 아키텍트는 무엇을 해야 합니까?', 'A company has 700 TB of backup data stored in network attached storage (NAS) in its data center. This backup data need to be accessible for infrequent regulatory requests and must be retained 7 years. The company has decided to migrate this backup data from its data center to AWS. The migration must be complete within 1 month. The company has 500 Mbps of dedicated bandwidth on its public internet connection available for data transfer.

What should a solutions architect do to migrate and store the data at the LOWEST cost?'),
  (216, '한 회사는 Amazon S3 버킷에 수백만 개의 객체가 있는 서버리스 웹사이트를 운영하고 있습니다. 회사는 Amazon CloudFront 배포의 오리진으로 S3 버킷을 사용합니다. 회사는 객체가 업로드되기 전에 S3 버킷에서 암호화를 설정하지 않았습니다. 솔루션스 아키텍트는 모든 기존 객체와 앞으로 S3 버킷에 추가되는 모든 객체에 대해 암호화를 활성화해야 합니다.

이 요구사항을 가장 적은 노력으로 충족하는 솔루션은 무엇입니까?', 'A company has a serverless website with millions of objects in an Amazon S3 bucket. The company uses the S3 bucket as the origin for an Amazon CloudFront distribution. The company did not set encryption on the S3 bucket before the objects were loaded. A solutions architect needs to enable encryption for all existing objects and for all objects that are added to the S3 bucket in the future.

Which solution will meet these requirements with the LEAST amount of effort?'),
  (217, '한 회사가 Application Load Balancer 뒤에서 Amazon EC2 인스턴스들로 글로벌 웹 애플리케이션을 운영하고 있습니다. 애플리케이션은 Amazon Aurora에 데이터를 저장합니다. 회사는 재해 복구 솔루션을 만들어야 하며, 최대 30분의 다운타임과 잠재적인 데이터 손실을 허용할 수 있습니다. 프라이머리 인프라가 정상일 때는 해당 부하를 처리할 필요가 없습니다.

이 요구사항을 충족하기 위해 솔루션스 아키텍트는 무엇을 해야 합니까?', 'A company runs a global web application on Amazon EC2 instances behind an Application Load Balancer. The application stores data in Amazon Aurora. The company needs to create a disaster recovery solution and can tolerate up to 30 minutes of downtime and potential data loss. The solution does not need to handle the load when the primary infrastructure is healthy.

What should a solutions architect do to meet these requirements?'),
  (218, '한 회사가 퍼블릭 서브넷의 Amazon EC2 인스턴스에서 웹 서버를 실행하고 있으며, Elastic IP 주소가 할당되어 있습니다. EC2 인스턴스에는 기본 보안 그룹이 할당되어 있습니다. 기본 네트워크 ACL은 모든 트래픽을 차단하도록 수정되었습니다. 솔루션스 아키텍트는 웹 서버를 포트 443에서 전 세계 어디서든 접근할 수 있도록 만들어야 합니다.

다음 단계 중 어떤 조합이 이 작업을 달성할 수 있습니까? (2개를 선택하십시오.)', 'A company has a web server running on an Amazon EC2 instance in a public subnet with an Elastic IP address. The default security group is assigned to the EC2 instance. The default network ACL has been modified to block all traffic. A solutions architect needs to make the web server accessible from everywhere on port 443.

Which combination of steps will accomplish this task? (Choose two.)'),
  (219, '한 회사의 애플리케이션에 성능 문제가 발생하고 있습니다. 이 애플리케이션은 상태를 유지(stateful)하며 Amazon EC2 인스턴스에서 메모리 내(in-memory) 작업을 완료해야 합니다. 회사는 AWS CloudFormation을 사용하여 인프라를 배포했고 M5 EC2 인스턴스 패밀리를 사용했습니다. 트래픽이 증가함에 따라 애플리케이션 성능이 저하되었습니다. 사용자는 애플리케이션에 액세스하려고 할 때 지연이 발생한다고 보고하고 있습니다.

이 문제를 가장 운영 효율적인 방식으로 해결할 수 있는 솔루션은 무엇입니까?', 'A company’s application is having performance issues. The application is stateful and needs to complete in-memory tasks on Amazon EC2 instances. The company used AWS CloudFormation to deploy infrastructure and used the M5 EC2 instance family. As traffic increased, the application performance degraded. Users are reporting delays when the users attempt to access the application.

Which solution will resolve these issues in the MOST operationally efficient way?'),
  (220, '한 솔루션스 아키텍트가 Amazon API Gateway를 사용하여 사용자의 요청을 수신하는 새로운 API를 설계하고 있습니다. 요청량은 매우 가변적이며, 몇 시간 동안 단 한 건의 요청도 오지 않을 수 있습니다. 데이터 처리는 비동기적으로 수행되지만, 요청이 발생한 후 몇 초 이내에 완료되어야 합니다.

이 요구사항을 가장 낮은 비용으로 충족하기 위해 API가 호출해야 하는 컴퓨팅 서비스는 무엇입니까?', 'A solutions architect is designing a new API using Amazon API Gateway that will receive requests from users. The volume of requests is highly variable; several hours can pass without receiving a single request. The data processing will take place asynchronously, but should be completed within a few seconds after a request is made.

Which compute service should the solutions architect have the API invoke to deliver the requirements at the lowest cost?'),
  (221, '한 회사가 Amazon Linux EC2 인스턴스 그룹에서 애플리케이션을 실행합니다. 컴플라이언스 이유로, 회사는 모든 애플리케이션 로그 파일을 7년 동안 보존해야 합니다. 로그 파일은 모든 파일에 동시에 접근할 수 있어야 하는 리포팅 도구에 의해 분석됩니다.

어떤 스토리지 솔루션이 이러한 요구사항을 가장 비용 효율적으로 충족합니까?', 'A company runs an application on a group of Amazon Linux EC2 instances. For compliance reasons, the company must retain all application log files for 7 years. The log files will be analyzed by a reporting tool that must be able to access all the files concurrently.

Which storage solution meets these requirements MOST cost-effectively?'),
  (222, '한 회사가 외부 벤더를 고용하여 회사의 AWS 계정에서 작업을 수행하도록 했습니다. 벤더는 벤더가 소유한 AWS 계정에서 호스팅되는 자동화 도구를 사용합니다. 벤더는 회사의 AWS 계정에 대한 IAM 접근 권한을 가지고 있지 않습니다.

솔루션스 아키텍트는 벤더에게 어떻게 이 접근 권한을 부여해야 합니까?', 'A company has hired an external vendor to perform work in the company’s AWS account. The vendor uses an automated tool that is hosted in an AWS account that the vendor owns. The vendor does not have IAM access to the company’s AWS account.

How should a solutions architect grant this access to the vendor?'),
  (223, '한 회사가 Java Spring Boot 애플리케이션을 Amazon Elastic Kubernetes Service(Amazon EKS)의 프라이빗 서브넷에서 실행되는 파드(pod)로 배포했습니다. 애플리케이션은 Amazon DynamoDB 테이블에 데이터를 써야 합니다. 솔루션스 아키텍트는 인터넷에 트래픽을 노출하지 않고 애플리케이션이 DynamoDB 테이블과 상호작용할 수 있도록 보장해야 합니다.

이 목표를 달성하기 위해 솔루션스 아키텍트가 수행해야 할 단계의 조합은 무엇입니까? (두 개 선택)', 'A company has deployed a Java Spring Boot application as a pod that runs on Amazon Elastic Kubernetes Service (Amazon EKS) in private subnets. The application needs to write data to an Amazon DynamoDB table. A solutions architect must ensure that the application can interact with the DynamoDB table without exposing traffic to the internet.

Which combination of steps should the solutions architect take to accomplish this goal? (Choose two.)'),
  (224, '한 회사가 최근 웹 애플리케이션을 단일 AWS 리전의 Amazon EC2 인스턴스에 리호스팅하여 AWS로 마이그레이션했습니다. 회사는 애플리케이션 아키텍처를 고가용성(HA)과 장애 허용(FT)이 되도록 재설계하고자 합니다. 트래픽은 실행 중인 모든 EC2 인스턴스로 무작위로 도달해야 합니다.

이 요구사항을 충족하기 위해 회사는 어떤 단계의 조합을 수행해야 합니까? (두 개 선택)', 'A company recently migrated its web application to AWS by rehosting the application on Amazon EC2 instances in a single AWS Region. The company wants to redesign its application architecture to be highly available and fault tolerant. Traffic must reach all running EC2 instances randomly.

Which combination of steps should the company take to meet these requirements? (Choose two.)'),
  (225, '한 미디어 회사는 온프레미스에서 사용자 활동 데이터를 수집·분석하고 있습니다. 회사는 이 기능을 AWS로 마이그레이션하고자 합니다. 사용자 활동 데이터 저장소는 계속 증가하여 페타바이트 규모가 될 것입니다. 회사는 기존 데이터와 신규 데이터를 SQL로 온디맨드 분석할 수 있도록, 고가용성의 데이터 수집(ingestion) 솔루션을 구축해야 합니다.

다음 중 최소한의 운영 오버헤드로 이러한 요구사항을 충족하는 솔루션은 무엇입니까?', 'A media company collects and analyzes user activity data on premises. The company wants to migrate this capability to AWS. The user activity data store will continue to grow and will be petabytes in size. The company needs to build a highly available data ingestion solution that facilitates on-demand analytics of existing data and new data with SQL.

Which solution will meet these requirements with the LEAST operational overhead?'),
  (226, '한 회사는 Amazon EC2 인스턴스에서 실행되는 RESTful 웹 서비스 애플리케이션을 사용하여 수천 개의 원격 장치로부터 데이터를 수집합니다. EC2 인스턴스는 원시 데이터를 수신하고, 원시 데이터를 변환하며, 모든 데이터를 Amazon S3 버킷에 저장합니다. 원격 장치 수는 곧 수백만 대로 증가할 것입니다. 회사는 운영 오버헤드를 최소화하면서 고도로 확장 가능한 솔루션이 필요합니다.

이 요구사항을 충족하기 위해 솔루션스 아키텍트가 수행해야 할 단계의 조합은 무엇입니까? (두 개 선택)', 'A company collects data from thousands of remote devices by using a RESTful web services application that runs on an Amazon EC2 instance. The EC2 instance receives the raw data, transforms the raw data, and stores all the data in an Amazon S3 bucket. The number of remote devices will increase into the millions soon. The company needs a highly scalable solution that minimizes operational overhead.

Which combination of steps should a solutions architect take to meet these requirements? (Choose two.)'),
  (227, '한 회사는 AWS CloudTrail 로그를 3년 동안 보존해야 합니다. 회사는 상위(Parent) 계정에서 AWS Organizations를 사용하여 일련의 AWS 계정 전체에 CloudTrail을 강제 적용하고 있습니다. CloudTrail 대상 S3 버킷은 S3 버전 관리(Versioning)가 활성화되어 구성되어 있습니다. S3 수명 주기(Lifecycle) 정책은 3년 후 현재(Current) 객체를 삭제하도록 설정되어 있습니다.

S3 버킷을 4년째 사용한 후, S3 버킷 지표는 객체 수가 계속 증가하고 있음을 보여줍니다. 그러나 S3 버킷으로 전달되는 새로운 CloudTrail 로그의 수는 일정하게 유지되고 있습니다.

가장 비용 효율적인 방식으로 3년이 지난 객체를 삭제하려면 어떤 솔루션을 사용해야 합니까?', 'A company needs to retain its AWS CloudTrail logs for 3 years. The company is enforcing CloudTrail across a set of AWS accounts by using AWS Organizations from the parent account. The CloudTrail target S3 bucket is configured with S3 Versioning enabled. An S3 Lifecycle policy is in place to delete current objects after 3 years.

After the fourth year of use of the S3 bucket, the S3 bucket metrics show that the number of objects has continued to rise. However, the number of new CloudTrail logs that are delivered to the S3 bucket has remained consistent.

Which solution will delete objects that are older than 3 years in the MOST cost-effective manner?'),
  (228, '한 회사에는 모니터링 장치 플릿으로부터 실시간 데이터를 수신하는 API가 있습니다. 이 API는 이후 분석을 위해 이 데이터를 Amazon RDS DB 인스턴스에 저장합니다. 모니터링 장치가 API로 보내는 데이터의 양은 변동합니다. 트래픽이 많은 기간 동안 API는 종종 타임아웃 오류를 반환합니다.

로그를 점검한 결과, 회사는 데이터베이스가 API에서 오는 쓰기 트래픽의 볼륨을 처리할 수 없다는 것을 확인했습니다. 솔루션스 아키텍트는 데이터베이스로의 연결 수를 최소화하고, 트래픽이 많은 기간 동안 데이터가 손실되지 않도록 해야 합니다.

이 요구사항을 충족하는 솔루션은 무엇입니까?', 'A company has an API that receives real-time data from a fleet of monitoring devices. The API stores this data in an Amazon RDS DB instance for later analysis. The amount of data that the monitoring devices send to the API fluctuates. During periods of heavy traffic, the API often returns timeout errors.

After an inspection of the logs, the company determines that the database is not capable of processing the volume of write traffic that comes from the API. A solutions architect must minimize the number of connections to the database and must ensure that data is not lost during periods of heavy traffic.

Which solution will meet these requirements?'),
  (229, '한 회사가 MySQL 데이터베이스를 실행하는 Amazon EC2 인스턴스를 자체적으로 관리하고 있습니다. 회사는 수요가 증가하거나 감소함에 따라 복제와 스케일링을 수동으로 관리하고 있습니다. 회사는 필요에 따라 데이터베이스 계층에 컴퓨팅 용량을 추가하거나 제거하는 과정을 단순화하는 새로운 솔루션이 필요합니다. 또한 이 솔루션은 운영의 최소한의 노력으로 향상된 성능, 스케일링 및 내구성을 제공해야 합니다.

이 요구사항을 충족하는 솔루션은 무엇입니까?', 'A company manages its own Amazon EC2 instances that run MySQL databases. The company is manually managing replication and scaling as demand increases or decreases. The company needs a new solution that simplifies the process of adding or removing compute capacity to or from its database tier as needed. The solution also must offer improved performance, scaling, and durability with minimal effort from operations.

Which solution meets these requirements?'),
  (230, '한 회사는 사용 중인 두 개의 NAT 인스턴스가 회사 애플리케이션에 필요한 트래픽을 더 이상 지원할 수 없을 것을 우려하고 있습니다. 솔루션스 아키텍트는 고가용성, 장애 허용, 자동 확장이 가능한 솔루션을 구현하고자 합니다.

솔루션스 아키텍트는 무엇을 권장해야 합니까?', 'A company is concerned that two NAT instances in use will no longer be able to support the traffic needed for the company’s application. A solutions architect wants to implement a solution that is highly available, fault tolerant, and automatically scalable.

What should the solutions architect recommend?'),
  (231, '애플리케이션이 VPC A의 Amazon EC2 인스턴스(Elastic IP 주소 보유)에서 실행되고 있습니다. 애플리케이션은 VPC B의 데이터베이스에 접근해야 합니다. 두 VPC는 동일한 AWS 계정에 있습니다.

가장 보안성이 높은 방식으로 필요한 접근을 제공하는 솔루션은 무엇입니까?', 'An application runs on an Amazon EC2 instance that has an Elastic IP address in VPC A. The application requires access to a database in VPC B. Both VPCs are in the same AWS account.

Which solution will provide the required access MOST securely?'),
  (232, '한 회사가 고객을 위한 데모 환경을 Amazon EC2 인스턴스에서 운영합니다. 각 환경은 자체 VPC에서 격리되어 있습니다. 회사의 운영 팀은 어느 환경이든 RDP 또는 SSH 액세스가 설정되었을 때 알림을 받아야 합니다.', 'A company runs demonstration environments for its customers on Amazon EC2 instances. Each environment is isolated in its own VPC. The company’s operations team needs to be notified when RDP or SSH access to an environment has been established.'),
  (233, '한 솔루션스 아키텍트가 새로운 AWS 계정을 생성했으며, AWS 계정의 루트 사용자 접근을 보호해야 합니다.

다음 중 어떤 조치의 조합이 이를 달성할 수 있습니까? (두 개 선택)', 'A solutions architect has created a new AWS account and must secure AWS account root user access.

Which combination of actions will accomplish this? (Choose two.)'),
  (234, '한 회사가 새로운 웹 기반 고객 관계 관리(CRM) 애플리케이션을 구축하고 있습니다. 애플리케이션은 Application Load Balancer(ALB) 뒤에서 Amazon Elastic Block Store(Amazon EBS) 볼륨을 사용하는 여러 Amazon EC2 인스턴스를 사용할 것입니다. 애플리케이션은 또한 Amazon Aurora 데이터베이스를 사용할 것입니다. 애플리케이션의 모든 데이터는 저장 시(at rest)와 전송 중(in transit) 모두 암호화되어야 합니다.

이 요구사항을 충족할 수 있는 솔루션은 무엇입니까?', 'A company is building a new web-based customer relationship management application. The application will use several Amazon EC2 instances that are backed by Amazon Elastic Block Store (Amazon EBS) volumes behind an Application Load Balancer (ALB). The application will also use an Amazon Aurora database. All data for the application must be encrypted at rest and in transit.

Which solution will meet these requirements?'),
  (235, '한 회사가 온프레미스 Oracle 데이터베이스를 Amazon Aurora PostgreSQL로 이전하려고 합니다. 해당 데이터베이스에는 동일한 테이블에 쓰기를 수행하는 여러 애플리케이션이 있습니다. 애플리케이션들은 각 마이그레이션 사이에 한 달 간격을 두고 하나씩 순차적으로 마이그레이션되어야 합니다. 경영진은 데이터베이스의 읽기 및 쓰기 횟수가 매우 많다는 점을 우려하고 있습니다. 마이그레이션 전 과정에서 두 데이터베이스 간 데이터는 동기화 상태로 유지되어야 합니다.

솔루션스 아키텍트는 무엇을 권장해야 합니까?', 'A company is moving its on-premises Oracle database to Amazon Aurora PostgreSQL. The database has several applications that write to the same tables. The applications need to be migrated one by one with a month in between each migration. Management has expressed concerns that the database has a high number of reads and writes. The data must be kept in sync across both databases throughout the migration.

What should a solutions architect recommend?'),
  (236, '한 회사는 이미지 공유를 위한 3계층 애플리케이션을 보유하고 있습니다. 애플리케이션은 프런트엔드 계층에 Amazon EC2 인스턴스를, 애플리케이션 계층에 또 다른 EC2 인스턴스를, MySQL 데이터베이스에 세 번째 EC2 인스턴스를 사용합니다. 솔루션스 아키텍트는 애플리케이션에 대한 변경을 최소화하면서 확장 가능하고 고가용성인 솔루션을 설계해야 합니다.

이 요구사항을 충족하는 솔루션은 무엇입니까?', 'A company has a three-tier application for image sharing. The application uses an Amazon EC2 instance for the front-end layer, another EC2 instance for the application layer, and a third EC2 instance for a MySQL database. A solutions architect must design a scalable and highly available solution that requires the least amount of change to the application.

Which solution meets these requirements?'),
  (237, 'VPC-A의 Amazon EC2 인스턴스에서 실행 중인 애플리케이션이 VPC-B의 다른 EC2 인스턴스의 파일에 접근해야 합니다. 두 VPC는 서로 다른 AWS 계정에 있습니다. 네트워크 관리자는 VPC-A에서 VPC-B의 EC2 인스턴스로 안전하게 접근하도록 구성할 수 있는 솔루션을 설계해야 합니다. 연결은 단일 실패 지점(SPOF)이 없어야 하며, 대역폭 우려도 없어야 합니다.

이 요구사항을 충족하는 솔루션은 무엇입니까?', 'An application running on an Amazon EC2 instance in VPC-A needs to access files in another EC2 instance in VPC-B. Both VPCs are in separate AWS accounts. The network administrator needs to design a solution to configure secure access to EC2 instance in VPC-B from VPC-A. The connectivity should not have a single point of failure or bandwidth concerns.

Which solution will meet these requirements?'),
  (238, '한 회사가 엔지니어 팀을 위해 개별 AWS 계정을 사용해 실험하려고 합니다. 회사는 각 계정별로 해당 월의 Amazon EC2 인스턴스 사용 비용이 특정 임계값을 초과하자마자 즉시 알림을 받고자 합니다.

이 요구사항을 가장 비용 효율적으로 충족하려면 솔루션스 아키텍트는 무엇을 해야 합니까?', 'A company wants to experiment with individual AWS accounts for its engineer team. The company wants to be notified as soon as the Amazon EC2 instance usage for a given month exceeds a specific threshold for each account.

What should a solutions architect do to meet this requirement MOST cost-effectively?'),
  (239, '솔루션스 아키텍트는 회사 애플리케이션을 위한 새로운 마이크로서비스를 설계해야 합니다. 클라이언트는 HTTPS 엔드포인트를 호출해 마이크로서비스에 도달할 수 있어야 합니다. 또한 마이크로서비스는 호출을 인증하기 위해 AWS Identity and Access Management(IAM)를 사용해야 합니다. 솔루션스 아키텍트는 Go 1.x로 작성된 단일 AWS Lambda 함수를 사용해 이 마이크로서비스의 로직을 작성할 것입니다.

다음 중 가장 운영 효율적으로 함수를 배포할 수 있는 솔루션은 무엇입니까?', 'A solutions architect needs to design a new microservice for a company’s application. Clients must be able to call an HTTPS endpoint to reach the microservice. The microservice also must use AWS Identity and Access Management (IAM) to authenticate calls. The solutions architect will write the logic for this microservice by using a single AWS Lambda function that is written in Go 1.x.

Which solution will deploy the function in the MOST operationally efficient way?'),
  (240, '한 회사는 이전에 데이터 웨어하우스 솔루션을 AWS로 마이그레이션했습니다. 이 회사는 AWS Direct Connect 연결도 보유하고 있습니다. 본사 사용자는 시각화 도구를 사용하여 데이터 웨어하우스를 쿼리합니다. 데이터 웨어하우스가 반환하는 쿼리의 평균 크기는 50MB이며, 시각화 도구가 전송하는 각 웹페이지는 대략 500KB입니다. 데이터 웨어하우스에서 반환되는 결과 집합은 캐시되지 않습니다.

다음 중 어떤 솔루션이 회사에 가장 낮은 데이터 전송 이그레스 비용을 제공합니다?', 'A company previously migrated its data warehouse solution to AWS. The company also has an AWS Direct Connect connection. Corporate office users query the data warehouse using a visualization tool. The average size of a query returned by the data warehouse is 50 MB and each webpage sent by the visualization tool is approximately 500 KB. Result sets returned by the data warehouse are not cached.

Which solution provides the LOWEST data transfer egress cost for the company?');

INSERT INTO choice (id, question_id, text_kr, text_en) VALUES
  (162, 41, 'Auto Scaling 그룹을 생성하여 EC2 인스턴스가 스케일 아웃할 수 있게 합니다. S3 이벤트 알림을 구성하여 S3 버킷으로의 업로드가 완료되면 Amazon Simple Notification Service(Amazon SNS) 주제로 이벤트를 전송합니다.', 'Create an Auto Scaling group so that EC2 instances can scale out. Configure an S3 event notification to send events to an Amazon Simple Notification Service (Amazon SNS) topic when the upload to the S3 bucket is complete.'),
  (163, 41, '각 SaaS 소스와 S3 버킷 간에 데이터를 전송하도록 Amazon AppFlow 플로우를 생성합니다. S3 버킷으로의 업로드가 완료되면 S3 이벤트 알림을 구성하여 Amazon Simple Notification Service(Amazon SNS) 주제로 이벤트를 전송합니다.', 'Create an Amazon AppFlow flow to transfer data between each SaaS source and the S3 bucket. Configure an S3 event notification to send events to an Amazon Simple Notification Service (Amazon SNS) topic when the upload to the S3 bucket is complete.'),
  (164, 41, '각 SaaS 소스에 대해 Amazon EventBridge(Amazon CloudWatch Events) 규칙을 생성하여 출력 데이터를 전송합니다. S3 버킷을 규칙의 대상으로 구성합니다. S3 버킷으로의 업로드가 완료되면 이벤트를 전송하도록 두 번째 EventBridge(CloudWatch Events) 규칙을 생성합니다. 두 번째 규칙의 대상으로 Amazon Simple Notification Service(Amazon SNS) 주제를 구성합니다.', 'Create an Amazon EventBridge (Amazon CloudWatch Events) rule for each SaaS source to send output data. Configure the S3 bucket as the rule''s target. Create a second EventBridge (Cloud Watch Events) rule to send events when the upload to the S3 bucket is complete. Configure an Amazon Simple Notification Service (Amazon SNS) topic as the second rule''s target.'),
  (165, 41, 'EC2 인스턴스 대신 사용할 Docker 컨테이너를 생성합니다. 컨테이너화된 애플리케이션을 Amazon Elastic Container Service(Amazon ECS)에 호스팅합니다. Amazon CloudWatch Container Insights를 구성하여 S3 버킷으로의 업로드가 완료되면 Amazon Simple Notification Service(Amazon SNS) 주제로 이벤트를 전송합니다.', 'Create a Docker container to use instead of an EC2 instance. Host the containerized application on Amazon Elastic Container Service (Amazon ECS). Configure Amazon CloudWatch Container Insights to send events to an Amazon Simple Notification Service (Amazon SNS) topic when the upload to the S3 bucket is complete.'),
  (166, 42, '각 가용 영역에 NAT 게이트웨이를 시작합니다.', 'Launch the NAT gateway in each Availability Zone.'),
  (167, 42, 'NAT 게이트웨이를 NAT 인스턴스로 교체합니다.', 'Replace the NAT gateway with a NAT instance.'),
  (168, 42, 'Amazon S3용 게이트웨이 VPC 엔드포인트를 배포합니다.', 'Deploy a gateway VPC endpoint for Amazon S3.'),
  (169, 42, 'EC2 인스턴스를 실행하기 위해 EC2 전용 호스트(Dedicated Host)를 프로비저닝합니다.', 'Provision an EC2 Dedicated Host to run the EC2 instances.'),
  (170, 43, 'AWS VPN 연결을 설정하고 모든 트래픽을 VPC 게이트웨이 엔드포인트를 통해 프록시합니다.', 'Establish AWS VPN connections and proxy all traffic through a VPC gateway endpoint.'),
  (171, 43, '새로운 AWS Direct Connect 연결을 설정하고 백업 트래픽을 이 새로운 연결을 통해 전송합니다.', 'Establish a new AWS Direct Connect connection and direct backup traffic through this new connection.'),
  (172, 43, '매일 AWS Snowball 장치를 주문합니다. 데이터를 Snowball 장치에 적재한 후 매일 장치를 AWS에 반납합니다.', 'Order daily AWS Snowball devices. Load the data onto the Snowball devices and return the devices to AWS each day.'),
  (173, 43, 'AWS 관리 콘솔을 통해 지원 티켓을 제출합니다. 계정에서 S3 서비스 한도를 제거해 달라고 요청합니다.', 'Submit a support ticket through the AWS Management Console. Request the removal of S3 service limits from the account.'),
  (174, 44, 'S3 버킷에서 버저닝(Versioning)을 활성화합니다.', 'Enable versioning on the S3 bucket.'),
  (175, 44, 'S3 버킷에서 MFA Delete를 활성화합니다.', 'Enable MFA Delete on the S3 bucket.'),
  (176, 44, 'S3 버킷에 버킷 정책을 생성합니다.', 'Create a bucket policy on the S3 bucket.'),
  (177, 44, 'S3 버킷에서 기본 암호화를 활성화합니다.', 'Enable default encryption on the S3 bucket.'),
  (178, 44, 'S3 버킷의 객체에 대해 수명 주기(Lifecycle) 정책을 생성합니다.', 'Create a lifecycle policy for the objects in the S3 bucket.'),
  (179, 45, '여러 가용 영역(Availability Zones)에 Lambda 함수를 배포합니다.', 'Deploy the Lambda function in multiple Availability Zones.'),
  (180, 45, 'Amazon Simple Queue Service (Amazon SQS) 대기열을 생성하고, 해당 대기열을 SNS 주제에 구독시킵니다.', 'Create an Amazon Simple Queue Service (Amazon SQS) queue, and subscribe it to the SNS topic.'),
  (181, 45, 'Lambda 함수에 할당된 CPU와 메모리를 늘립니다.', 'Increase the CPU and memory that are allocated to the Lambda function.'),
  (182, 45, 'Lambda 함수의 프로비저닝 처리량을 늘립니다.', 'Increase provisioned throughput for the Lambda function.'),
  (183, 45, 'Lambda 함수가 Amazon Simple Queue Service (Amazon SQS) 대기열에서 읽도록 수정합니다.', 'Modify the Lambda function to read from an Amazon Simple Queue Service (Amazon SQS) queue.'),
  (184, 46, 'Amazon S3 버킷을 보안 전송 지점으로 사용합니다. 버킷의 객체를 스캔하기 위해 Amazon Inspector를 사용합니다. 객체에 PII가 포함되어 있으면 해당 PII를 포함한 객체를 제거하도록 S3 수명주기 정책을 트리거합니다.', 'Use an Amazon S3 bucket as a secure transfer point. Use Amazon Inspector to scan the objects in the bucket. If objects contain PII, trigger an S3 Lifecycle policy to remove the objects that contain PII.'),
  (185, 46, 'Amazon S3 버킷을 보안 전송 지점으로 사용합니다. 버킷의 객체를 스캔하기 위해 Amazon Macie를 사용합니다. 객체에 PII가 포함되어 있으면 Amazon Simple Notification Service(Amazon SNS)를 사용하여 관리자가 해당 PII를 포함한 객체를 제거하도록 알립니다.', 'Use an Amazon S3 bucket as a secure transfer point. Use Amazon Macie to scan the objects in the bucket. If objects contain PII, use Amazon Simple Notification Service (Amazon SNS) to trigger a notification to the administrators to remove the objects that contain PII.'),
  (186, 46, '사용자 지정 스캔 알고리즘을 AWS Lambda 함수로 구현합니다. 객체가 버킷에 로드될 때 함수를 트리거합니다. 객체에 PII가 포함되어 있으면 Amazon Simple Notification Service(Amazon SNS)를 사용하여 관리자가 해당 PII를 포함한 객체를 제거하도록 알립니다.', 'Implement custom scanning algorithms in an AWS Lambda function. Trigger the function when objects are loaded into the bucket. If objects contain PII, use Amazon Simple Notification Service (Amazon SNS) to trigger a notification to the administrators to remove the objects that contain PII.'),
  (187, 46, '사용자 지정 스캔 알고리즘을 AWS Lambda 함수로 구현합니다. 객체가 버킷에 로드될 때 함수를 트리거합니다. 객체에 PII가 포함되어 있으면 Amazon Simple Email Service(Amazon SES)를 사용하여 관리자를 알리고 PII를 포함한 객체를 제거하도록 S3 수명주기 정책을 트리거합니다.', 'Implement custom scanning algorithms in an AWS Lambda function. Trigger the function when objects are loaded into the bucket. If objects contain PII, use Amazon Simple Email Service (Amazon SES) to trigger a notification to the administrators and trigger an S3 Lifecycle policy to remove the meats that contain PII.'),
  (188, 47, '필요한 리전을 지정하는 예약 인스턴스(Reserved Instances)를 구매합니다.', 'Purchase Reserved Instances that specify the Region needed.'),
  (189, 47, '필요한 리전을 지정하는 온디맨드 용량 예약(On-Demand Capacity Reservation)을 생성합니다.', 'Create an On-Demand Capacity Reservation that specifies the Region needed.'),
  (190, 47, '필요한 리전과 세 개의 가용 영역을 지정하는 예약 인스턴스(Reserved Instances)를 구매합니다.', 'Purchase Reserved Instances that specify the Region and three Availability Zones needed.'),
  (191, 47, '필요한 리전과 세 개의 가용 영역을 지정하는 온디맨드 용량 예약(On-Demand Capacity Reservation)을 생성합니다.', 'Create an On-Demand Capacity Reservation that specifies the Region and three Availability Zones needed.'),
  (192, 48, '카탈로그를 Amazon ElastiCache for Redis로 이동합니다.', 'Move the catalog to Amazon ElastiCache for Redis.'),
  (193, 48, '더 큰 인스턴스 스토어를 가진 EC2 인스턴스를 배포합니다.', 'Deploy a larger EC2 instance with a larger instance store.'),
  (194, 48, '카탈로그를 인스턴스 스토어에서 Amazon S3 Glacier Deep Archive로 이동합니다.', 'Move the catalog from the instance store to Amazon S3 Glacier Deep Archive.'),
  (195, 48, '카탈로그를 Amazon Elastic File System(Amazon EFS) 파일 시스템으로 이동합니다.', 'Move the catalog to an Amazon Elastic File System (Amazon EFS) file system.'),
  (196, 49, '개별 파일을 Amazon S3 Glacier Instant Retrieval에 태그와 함께 저장합니다. 태그를 조회하여 S3 Glacier Instant Retrieval에서 파일을 검색합니다.', 'Store individual files with tags in Amazon S3 Glacier Instant Retrieval. Query the tags to retrieve the files from S3 Glacier Instant Retrieval.'),
  (197, 49, '개별 파일을 Amazon S3 Intelligent-Tiering에 저장합니다. S3 수명 주기 정책을 사용하여 1년 후 파일을 S3 Glacier Flexible Retrieval로 이동합니다. S3에 있는 파일은 Amazon Athena를 사용하여 조회하고 검색합니다. S3 Glacier에 있는 파일은 S3 Glacier Select를 사용하여 조회하고 검색합니다.', 'Store individual files in Amazon S3 Intelligent-Tiering. Use S3 Lifecycle policies to move the files to S3 Glacier Flexible Retrieval after 1 year. Query and retrieve the files that are in Amazon S3 by using Amazon Athena. Query and retrieve the files that are in S3 Glacier by using S3 Glacier Select.'),
  (198, 49, '개별 파일을 Amazon S3 Standard 스토리지에 태그와 함께 저장합니다. 각 아카이브에 대한 검색 메타데이터도 S3 Standard에 저장합니다. S3 수명 주기 정책을 사용하여 1년 후 파일을 S3 Glacier Instant Retrieval로 이동합니다. Amazon S3에서 메타데이터를 검색하여 파일을 조회합니다.', 'Store individual files with tags in Amazon S3 Standard storage. Store search metadata for each archive in Amazon S3 Standard storage. Use S3 Lifecycle policies to move the files to S3 Glacier Instant Retrieval after 1 year. Query and retrieve the files by searching for metadata from Amazon S3.'),
  (199, 49, '개별 파일을 Amazon S3 Standard 스토리지에 저장합니다. S3 수명 주기 정책을 사용하여 1년 후 파일을 S3 Glacier Deep Archive로 이동합니다. 검색 메타데이터는 Amazon RDS에 저장합니다. RDS에서 파일을 조회하고, S3 Glacier Deep Archive에서 파일을 검색합니다.', 'Store individual files in Amazon S3 Standard storage. Use S3 Lifecycle policies to move the files to S3 Glacier Deep Archive after 1 year. Store search metadata in Amazon RDS. Query the files from Amazon RDS. Retrieve the files from S3 Glacier Deep Archive.'),
  (200, 50, '모든 EC2 인스턴스에 패치를 적용하는 AWS Lambda 함수를 생성합니다.', 'Create an AWS Lambda function to apply the patch to all EC2 instances.'),
  (201, 50, 'AWS Systems Manager Patch Manager를 구성하여 모든 EC2 인스턴스에 패치를 적용합니다.', 'Configure AWS Systems Manager Patch Manager to apply the patch to all EC2 instances.'),
  (202, 50, 'AWS Systems Manager 유지 관리 창(Maintenance Window)을 예약하여 모든 EC2 인스턴스에 패치를 적용합니다.', 'Schedule an AWS Systems Manager maintenance window to apply the patch to all EC2 instances.'),
  (203, 50, 'AWS Systems Manager Run Command를 사용하여 모든 EC2 인스턴스에 패치를 적용하는 사용자 지정 명령을 실행합니다.', 'Use AWS Systems Manager Run Command to run a custom command that applies the patch to all EC2 instances.'),
  (204, 51, '애플리케이션이 데이터를 Amazon Kinesis Data Firehose로 전송하도록 구성합니다.', 'Configure the application to send the data to Amazon Kinesis Data Firehose.'),
  (205, 51, 'Amazon Simple Email Service(Amazon SES)를 사용하여 데이터를 형식화하고 이메일로 보고서를 전송합니다.', 'Use Amazon Simple Email Service (Amazon SES) to format the data and to send the report by email.'),
  (206, 51, 'Amazon EventBridge(CloudWatch Events) 예약 이벤트를 생성하여 AWS Glue 작업을 호출하고 애플리케이션의 API에서 데이터를 쿼리하도록 합니다.', 'Create an Amazon EventBridge (Amazon CloudWatch Events) scheduled event that invokes an AWS Glue job to query the application''s API for the data.'),
  (207, 51, 'Amazon EventBridge(CloudWatch Events) 예약 이벤트를 생성하여 AWS Lambda 함수를 호출하고 애플리케이션의 API에서 데이터를 쿼리하도록 합니다.', 'Create an Amazon EventBridge (Amazon CloudWatch Events) scheduled event that invokes an AWS Lambda function to query the application''s API for the data.'),
  (208, 51, '애플리케이션 데이터를 Amazon S3에 저장합니다. S3 이벤트 대상으로 Amazon Simple Notification Service(Amazon SNS) 주제를 생성하여 이메일로 보고서를 전송합니다.', 'Store the application data in Amazon S3. Create an Amazon Simple Notification Service (Amazon SNS) topic as an S3 event destination to send the report by email.'),
  (209, 52, '애플리케이션을 Amazon Elastic Container Service(Amazon ECS)에서 컨테이너로 실행하도록 마이그레이션합니다. 저장소로 Amazon S3를 사용합니다.', 'Migrate the application to run as containers on Amazon Elastic Container Service (Amazon ECS). Use Amazon S3 for storage.'),
  (210, 52, '애플리케이션을 Amazon Elastic Kubernetes Service(Amazon EKS)에서 컨테이너로 실행하도록 마이그레이션합니다. 저장소로 Amazon Elastic Block Store(Amazon EBS)를 사용합니다.', 'Migrate the application to run as containers on Amazon Elastic Kubernetes Service (Amazon EKS). Use Amazon Elastic Block Store (Amazon EBS) for storage.'),
  (211, 52, '애플리케이션을 Multi-AZ Auto Scaling 그룹에 있는 Amazon EC2 인스턴스로 마이그레이션합니다. 저장소로 Amazon Elastic File System(Amazon EFS)을 사용합니다.', 'Migrate the application to Amazon EC2 instances in a Multi-AZ Auto Scaling group. Use Amazon Elastic File System (Amazon EFS) for storage.'),
  (212, 52, '애플리케이션을 Multi-AZ Auto Scaling 그룹에 있는 Amazon EC2 인스턴스로 마이그레이션합니다. 저장소로 Amazon Elastic Block Store(Amazon EBS)를 사용합니다.', 'Migrate the application to Amazon EC2 instances in a Multi-AZ Auto Scaling group. Use Amazon Elastic Block Store (Amazon EBS) for storage.'),
  (213, 53, '기록을 10년 동안 S3 Glacier에 저장합니다. 접근 제어 정책을 사용하여 10년 동안 기록 삭제를 거부합니다.', 'Store the records in S3 Glacier for the entire 10-year period. Use an access control policy to deny deletion of the records for a period of 10 years.'),
  (214, 53, '기록을 S3 Intelligent-Tiering을 사용하여 저장합니다. IAM 정책을 사용하여 기록 삭제를 거부합니다. 10년 후 IAM 정책을 변경하여 삭제를 허용합니다.', 'Store the records by using S3 Intelligent-Tiering. Use an IAM policy to deny deletion of the records. After 10 years, change the IAM policy to allow deletion.'),
  (215, 53, 'S3 Lifecycle 정책을 사용하여 기록을 처음 1년은 S3 Standard에 저장하고, 이후 S3 Glacier Deep Archive로 전환합니다. S3 Object Lock을 준수 모드(compliance mode)로 10년 동안 적용합니다.', 'Use an S3 Lifecycle policy to transition the records from S3 Standard to S3 Glacier Deep Archive after 1 year. Use S3 Object Lock in compliance mode for a period of 10 years.'),
  (216, 53, 'S3 Lifecycle 정책을 사용하여 기록을 처음 1년은 S3 Standard에 저장하고, 이후 S3 One Zone-Infrequent Access(S3 One Zone-IA)로 전환합니다. S3 Object Lock을 거버넌스 모드(governance mode)로 10년 동안 적용합니다.', 'Use an S3 Lifecycle policy to transition the records from S3 Standard to S3 One Zone-Infrequent Access (S3 One Zone-IA) after 1 year. Use S3 Object Lock in governance mode for a period of 10 years.'),
  (217, 54, '모든 데이터를 Amazon S3로 마이그레이션합니다. 사용자가 파일에 접근할 수 있도록 IAM 인증을 설정합니다.', 'Migrate all the data to Amazon S3. Set up IAM authentication for users to access files.'),
  (218, 54, 'Amazon S3 File Gateway를 설정합니다. 기존 EC2 인스턴스에서 S3 File Gateway를 마운트합니다.', 'Set up an Amazon S3 File Gateway. Mount the S3 File Gateway on the existing EC2 instances.'),
  (219, 54, 'Multi-AZ 구성을 갖춘 Amazon FSx for Windows File Server로 파일 공유 환경을 확장합니다. 모든 데이터를 FSx for Windows File Server로 마이그레이션합니다.', 'Extend the file share environment to Amazon FSx for Windows File Server with a Multi-AZ configuration. Migrate all the data to FSx for Windows File Server.'),
  (220, 54, 'Multi-AZ 구성을 갖춘 Amazon Elastic File System(Amazon EFS)로 파일 공유 환경을 확장합니다. 모든 데이터를 Amazon EFS로 마이그레이션합니다.', 'Extend the file share environment to Amazon Elastic File System (Amazon EFS) with a Multi-AZ configuration. Migrate all the data to Amazon EFS.'),
  (221, 55, '퍼블릭 서브넷의 CIDR 블록에 대한 경로를 제외한 새로운 라우트 테이블을 생성합니다. DB 서브넷과 라우트 테이블을 연결합니다.', 'Create a new route table that excludes the route to the public subnets'' CIDR blocks. Associate the route table with the database subnets.'),
  (222, 55, '퍼블릭 서브넷에 할당된 보안 그룹에서 오는 인바운드 트래픽을 거부하는 보안 그룹을 생성합니다. DB 인스턴스에 이 보안 그룹을 연결합니다.', 'Create a security group that denies inbound traffic from the security group that is assigned to instances in the public subnets. Attach the security group to the DB instances.'),
  (223, 55, '프라이빗 서브넷에 할당된 보안 그룹에서 오는 인바운드 트래픽을 허용하는 보안 그룹을 생성합니다. DB 인스턴스에 이 보안 그룹을 연결합니다.', 'Create a security group that allows inbound traffic from the security group that is assigned to instances in the private subnets. Attach the security group to the DB instances.'),
  (224, 55, '퍼블릭 서브넷과 프라이빗 서브넷 간에 새로운 피어링 연결을 생성합니다. 프라이빗 서브넷과 데이터베이스 서브넷 간에 다른 피어링 연결을 생성합니다.', 'Create a new peering connection between the public subnets and the private subnets. Create a different peering connection between the private subnets and the database subnets.'),
  (225, 56, 'API Gateway에서 stage 변수를 Name="Endpoint-URL" 및 Value="Company Domain Name"으로 생성하여 기본 URL을 덮어씁니다. 회사 도메인 이름과 연결된 공개 인증서를 AWS Certificate Manager(ACM)에 가져옵니다.', 'Create stage variables in API Gateway with Name="Endpoint-URL" and Value="Company Domain Name" to overwrite the default URL. Import the public certificate associated with the company''s domain name into AWS Certificate Manager (ACM).'),
  (226, 56, 'Route 53 DNS 레코드를 회사 도메인 이름으로 생성합니다. 별칭(Alias) 레코드를 Regional API Gateway stage 엔드포인트로 지정합니다. 회사 도메인 이름과 연결된 공개 인증서를 AWS Certificate Manager(ACM)에 us-east-1 리전에서 가져옵니다.', 'Create Route 53 DNS records with the company''s domain name. Point the alias record to the Regional API Gateway stage endpoint. Import the public certificate associated with the company''s domain name into AWS Certificate Manager (ACM) in the us-east-1 Region.'),
  (227, 56, 'Regional API Gateway 엔드포인트를 생성합니다. API Gateway 엔드포인트를 회사 도메인 이름과 연결합니다. 회사 도메인 이름과 연결된 공개 인증서를 AWS Certificate Manager(ACM)에 같은 리전에서 가져옵니다. 인증서를 API Gateway 엔드포인트에 연결합니다. Route 53을 구성하여 트래픽을 API Gateway 엔드포인트로 라우팅합니다.', 'Create a Regional API Gateway endpoint. Associate the API Gateway endpoint with the company''s domain name. Import the public certificate associated with the company''s domain name into AWS Certificate Manager (ACM) in the same Region. Attach the certificate to the API Gateway endpoint. Configure Route 53 to route traffic to the API Gateway endpoint.'),
  (228, 56, 'Regional API Gateway 엔드포인트를 생성합니다. API Gateway 엔드포인트를 회사 도메인 이름과 연결합니다. 회사 도메인 이름과 연결된 공개 인증서를 AWS Certificate Manager(ACM)에 us-east-1 리전에서 가져옵니다. 인증서를 API Gateway API에 연결합니다. Route 53 DNS 레코드를 회사 도메인 이름으로 생성합니다. A 레코드를 회사 도메인 이름으로 지정합니다.', 'Create a Regional API Gateway endpoint. Associate the API Gateway endpoint with the company''s domain name. Import the public certificate associated with the company''s domain name into AWS Certificate Manager (ACM) in the us-east-1 Region. Attach the certificate to the API Gateway APIs. Create Route 53 DNS records with the company''s domain name. Point an A record to the company''s domain name.'),
  (229, 57, 'Amazon Comprehend를 사용하여 부적절한 콘텐츠를 감지합니다. 낮은 신뢰도의 예측은 사람(Human Review)에게 검토하도록 합니다.', 'Use Amazon Comprehend to detect inappropriate content. Use human review for low-confidence predictions.'),
  (230, 57, 'Amazon Rekognition을 사용하여 부적절한 콘텐츠를 감지합니다. 낮은 신뢰도의 예측은 사람(Human Review)에게 검토하도록 합니다.', 'Use Amazon Rekognition to detect inappropriate content. Use human review for low-confidence predictions.'),
  (231, 57, 'Amazon SageMaker를 사용하여 부적절한 콘텐츠를 감지합니다. 낮은 신뢰도의 예측은 Ground Truth를 사용하여 라벨링합니다.', 'Use Amazon SageMaker to detect inappropriate content. Use ground truth to label low-confidence predictions.'),
  (232, 57, 'AWS Fargate를 사용하여 부적절한 콘텐츠를 감지하는 커스텀 머신러닝 모델을 배포합니다. 낮은 신뢰도의 예측은 Ground Truth를 사용하여 라벨링합니다.', 'Use AWS Fargate to deploy a custom machine learning model to detect inappropriate content. Use ground truth to label low-confidence predictions.'),
  (233, 58, 'Amazon EC2 인스턴스를 사용하고, 인스턴스에 Docker를 설치합니다.', 'Use Amazon EC2 instances, and install Docker on the instances.'),
  (234, 58, 'Amazon Elastic Container Service(Amazon ECS)를 Amazon EC2 워커 노드에서 실행합니다.', 'Use Amazon Elastic Container Service (Amazon ECS) on Amazon EC2 worker nodes.'),
  (235, 58, 'Amazon Elastic Container Service(Amazon ECS)를 AWS Fargate에서 실행합니다.', 'Use Amazon Elastic Container Service (Amazon ECS) on AWS Fargate.'),
  (236, 58, 'Amazon EC2 인스턴스를 Amazon ECS 최적화 AMI로 실행합니다.', 'Use Amazon EC2 instances from an Amazon Elastic Container Service (Amazon ECS)-optimized Amazon Machine Image (AMI).'),
  (237, 59, 'AWS Data Pipeline을 설계하여 데이터를 Amazon S3 버킷에 아카이브하고, Amazon EMR 클러스터를 실행하여 데이터를 분석합니다.', 'Design an AWS Data Pipeline to archive the data to an Amazon S3 bucket and run an Amazon EMR cluster with the data to generate analytics.'),
  (238, 59, 'Auto Scaling 그룹으로 Amazon EC2 인스턴스를 생성하여 데이터를 처리하고 Amazon Redshift에서 분석할 수 있도록 Amazon S3 데이터 레이크에 전송합니다.', 'Create an Auto Scaling group of Amazon EC2 instances to process the data and send it to an Amazon S3 data lake for Amazon Redshift to use for analysis.'),
  (239, 59, '데이터를 Amazon CloudFront에 캐시합니다. 데이터를 Amazon S3 버킷에 저장합니다. 객체가 S3 버킷에 추가될 때마다 AWS Lambda 함수를 실행하여 데이터를 분석합니다.', 'Cache the data to Amazon CloudFront. Store the data in an Amazon S3 bucket. When an object is added to the S3 bucket. run an AWS Lambda function to process the data for analysis.'),
  (240, 59, 'Amazon Kinesis Data Streams에서 데이터를 수집합니다. Amazon Kinesis Data Firehose를 사용하여 데이터를 Amazon S3 데이터 레이크로 전송합니다. 분석을 위해 Amazon Redshift에 데이터를 로드합니다.', 'Collect the data from Amazon Kinesis Data Streams. Use Amazon Kinesis Data Firehose to transmit the data to an Amazon S3 data lake. Load the data in Amazon Redshift for analysis.'),
  (241, 60, 'ALB의 네트워크 ACL을 업데이트하여 HTTPS 트래픽만 허용합니다.', 'Update the ALB''s network ACL to accept only HTTPS traffic.'),
  (242, 60, 'URL에서 HTTP를 HTTPS로 바꾸는 규칙을 생성합니다.', 'Create a rule that replaces the HTTP in the URL with HTTPS.'),
  (243, 60, 'ALB에서 리스너 규칙을 생성하여 HTTP 트래픽을 HTTPS로 리디렉션합니다.', 'Create a listener rule on the ALB to redirect HTTP traffic to HTTPS.'),
  (244, 60, 'SNI(Server Name Indication)를 사용하도록 구성된 Network Load Balancer로 ALB를 교체합니다.', 'Replace the ALB with a Network Load Balancer configured to use Server Name Indication (SNI).'),
  (245, 61, '인스턴스 메타데이터에 데이터베이스 자격 증명을 저장합니다. Amazon EventBridge(CloudWatch Events) 규칙을 사용하여 예약된 AWS Lambda 함수를 실행하여 RDS 자격 증명과 인스턴스 메타데이터를 동시에 업데이트합니다.', 'Store the database credentials in the instance metadata. Use Amazon EventBridge (Amazon CloudWatch Events) rules to run a scheduled AWS Lambda function that updates the RDS credentials and instance metadata at the same time.'),
  (246, 61, '암호화된 Amazon S3 버킷에 구성 파일로 데이터베이스 자격 증명을 저장합니다. Amazon EventBridge(CloudWatch Events) 규칙을 사용하여 예약된 AWS Lambda 함수를 실행하여 RDS 자격 증명과 구성 파일의 자격 증명을 동시에 업데이트합니다. S3 버전 관리를 사용하여 이전 값으로 롤백할 수 있도록 합니다.', 'Store the database credentials in a configuration file in an encrypted Amazon S3 bucket. Use Amazon EventBridge (Amazon CloudWatch Events) rules to run a scheduled AWS Lambda function that updates the RDS credentials and the credentials in the configuration file at the same time. Use S3 Versioning to ensure the ability to fall back to previous values.'),
  (247, 61, 'AWS Secrets Manager에 데이터베이스 자격 증명을 비밀로 저장합니다. 비밀의 자동 교체를 활성화합니다. EC2 역할에 비밀에 접근할 수 있는 권한을 부여합니다.', 'Store the database credentials as a secret in AWS Secrets Manager. Turn on automatic rotation for the secret. Attach the required permission to the EC2 role to grant access to the secret.'),
  (248, 61, 'AWS Systems Manager Parameter Store에 암호화된 매개변수로 데이터베이스 자격 증명을 저장합니다. 암호화된 매개변수의 자동 교체를 활성화합니다. EC2 역할에 암호화된 매개변수에 접근할 수 있는 권한을 부여합니다.', 'Store the database credentials as encrypted parameters in AWS Systems Manager Parameter Store. Turn on automatic rotation for the encrypted parameters. Attach the required permission to the EC2 role to grant access to the encrypted parameters.'),
  (249, 62, 'AWS Certificate Manager(ACM)를 사용하여 SSL/TLS 인증서를 발급합니다. 인증서를 ALB에 적용합니다. 관리형 갱신 기능을 사용하여 인증서를 자동으로 교체합니다.', 'Use AWS Certificate Manager (ACM) to issue an SSL/TLS certificate. Apply the certificate to the ALB. Use the managed renewal feature to automatically rotate the certificate.'),
  (250, 62, 'AWS Certificate Manager(ACM)를 사용하여 SSL/TLS 인증서를 발급합니다. 인증서에서 키 자료를 가져옵니다. 인증서를 ALB에 적용합니다. 관리형 갱신 기능을 사용하여 인증서를 자동으로 교체합니다.', 'Use AWS Certificate Manager (ACM) to issue an SSL/TLS certificate. Import the key material from the certificate. Apply the certificate to the ALUse the managed renewal feature to automatically rotate the certificate.'),
  (251, 62, 'AWS Certificate Manager(ACM) Private Certificate Authority를 사용하여 루트 CA에서 SSL/TLS 인증서를 발급합니다. 인증서를 ALB에 적용합니다. 관리형 갱신 기능을 사용하여 인증서를 자동으로 교체합니다.', 'Use AWS Certificate Manager (ACM) Private Certificate Authority to issue an SSL/TLS certificate from the root CA. Apply the certificate to the ALB. Use the managed renewal feature to automatically rotate the certificate.'),
  (252, 62, 'AWS Certificate Manager(ACM)를 사용하여 SSL/TLS 인증서를 가져옵니다. 인증서를 ALB에 적용합니다. Amazon EventBridge(CloudWatch Events)를 사용하여 인증서 만료 시 알림을 전송합니다. 인증서를 수동으로 교체합니다.', 'Use AWS Certificate Manager (ACM) to import an SSL/TLS certificate. Apply the certificate to the ALB. Use Amazon EventBridge (Amazon CloudWatch Events) to send a notification when the certificate is nearing expiration. Rotate the certificate manually.'),
  (253, 63, '.pdf 파일을 Amazon S3에 저장합니다. S3 PUT 이벤트를 구성하여 AWS Lambda 함수를 호출하고, 파일을 .jpg 형식으로 변환한 후 Amazon S3에 다시 저장합니다.', 'Save the .pdf files to Amazon S3. Configure an S3 PUT event to invoke an AWS Lambda function to convert the files to .jpg format and store them back in Amazon S3.'),
  (254, 63, '.pdf 파일을 Amazon DynamoDB에 저장합니다. DynamoDB Streams 기능을 사용하여 AWS Lambda 함수를 호출하고, 파일을 .jpg 형식으로 변환한 후 DynamoDB에 다시 저장합니다.', 'Save the .pdf files to Amazon DynamoDUse the DynamoDB Streams feature to invoke an AWS Lambda function to convert the files to .jpg format and store them back in DynamoDB.'),
  (255, 63, '.pdf 파일을 Amazon EC2 인스턴스, Amazon Elastic Block Store(EBS) 스토리지 및 Auto Scaling 그룹을 포함하는 AWS Elastic Beanstalk 애플리케이션에 업로드합니다. EC2 인스턴스에서 프로그램을 사용하여 파일을 .jpg 형식으로 변환합니다. .pdf 파일과 .jpg 파일을 EBS 스토리지에 저장합니다.', 'Upload the .pdf files to an AWS Elastic Beanstalk application that includes Amazon EC2 instances, Amazon Elastic Block Store (Amazon EBS) storage, and an Auto Scaling group. Use a program in the EC2 instances to convert the files to .jpg format. Save the .pdf files and the .jpg files in the EBS store.'),
  (256, 63, '.pdf 파일을 Amazon EC2 인스턴스, Amazon Elastic File System(EFS) 스토리지 및 Auto Scaling 그룹을 포함하는 AWS Elastic Beanstalk 애플리케이션에 업로드합니다. EC2 인스턴스에서 프로그램을 사용하여 파일을 .jpg 형식으로 변환합니다. .pdf 파일과 .jpg 파일을 EBS 스토리지에 저장합니다.', 'Upload the .pdf files to an AWS Elastic Beanstalk application that includes Amazon EC2 instances, Amazon Elastic File System (Amazon EFS) storage, and an Auto Scaling group. Use a program in the EC2 instances to convert the file to .jpg format. Save the .pdf files and the .jpg files in the EBS store.'),
  (257, 64, 'AWS에서 Amazon FSx for Windows File Server를 배포하고 구성합니다. 온프레미스 파일 데이터를 FSx for Windows File Server로 이동합니다. 워크로드를 AWS FSx for Windows File Server를 사용하도록 재구성합니다.', 'Deploy and configure Amazon FSx for Windows File Server on AWS. Move the on-premises file data to FSx for Windows File Server. Reconfigure the workloads to use FSx for Windows File Server on AWS.'),
  (258, 64, '온프레미스에 Amazon S3 File Gateway를 배포하고 구성합니다. 온프레미스 파일 데이터를 S3 File Gateway로 이동합니다. 온프레미스 워크로드와 클라우드 워크로드를 S3 File Gateway를 사용하도록 재구성합니다.', 'Deploy and configure an Amazon S3 File Gateway on premises. Move the on-premises file data to the S3 File Gateway. Reconfigure the on-premises workloads and the cloud workloads to use the S3 File Gateway.'),
  (259, 64, '온프레미스에 Amazon S3 File Gateway를 배포하고 구성합니다. 온프레미스 파일 데이터를 Amazon S3로 이동합니다. 각 워크로드 위치에 따라 워크로드가 Amazon S3 또는 S3 File Gateway를 사용하도록 재구성합니다.', 'Deploy and configure an Amazon S3 File Gateway on premises. Move the on-premises file data to Amazon S3. Reconfigure the workloads to use either Amazon S3 directly or the S3 File Gateway. depending on each workload''s location.'),
  (260, 64, 'AWS에서 Amazon FSx for Windows File Server를 배포하고 구성합니다. 온프레미스에 Amazon FSx File Gateway를 배포하고 구성합니다. 온프레미스 파일 데이터를 FSx File Gateway로 이동합니다. 클라우드 워크로드는 AWS FSx for Windows File Server를 사용하도록, 온프레미스 워크로드는 FSx File Gateway를 사용하도록 구성합니다.', 'Deploy and configure Amazon FSx for Windows File Server on AWS. Deploy and configure an Amazon FSx File Gateway on premises. Move the on-premises file data to the FSx File Gateway. Configure the cloud workloads to use FSx for Windows File Server on AWS. Configure the on-premises workloads to use the FSx File Gateway.'),
  (261, 65, '기존 Python 라이브러리를 사용하여 보고서에서 텍스트를 추출하고, 추출한 텍스트에서 PHI를 식별합니다.', 'Use existing Python libraries to extract the text from the reports and to identify the PHI from the extracted text.'),
  (262, 65, 'Amazon Textract를 사용하여 보고서에서 텍스트를 추출합니다. Amazon SageMaker를 사용하여 추출된 텍스트에서 PHI를 식별합니다.', 'Use Amazon Textract to extract the text from the reports. Use Amazon SageMaker to identify the PHI from the extracted text.'),
  (263, 65, 'Amazon Textract를 사용하여 보고서에서 텍스트를 추출합니다. Amazon Comprehend Medical을 사용하여 추출된 텍스트에서 PHI를 식별합니다.', 'Use Amazon Textract to extract the text from the reports. Use Amazon Comprehend Medical to identify the PHI from the extracted text.'),
  (264, 65, 'Amazon Rekognition을 사용하여 보고서에서 텍스트를 추출합니다. Amazon Comprehend Medical을 사용하여 추출된 텍스트에서 PHI를 식별합니다.', 'Use Amazon Rekognition to extract the text from the reports. Use Amazon Comprehend Medical to identify the PHI from the extracted text.'),
  (265, 66, 'S3 버킷 수명 주기 정책을 생성하여 객체 생성 후 30일이 지나면 파일을 S3 Standard에서 S3 Glacier로 이동합니다. 객체 생성 후 4년 후 파일을 삭제합니다.', 'Create an S3 bucket lifecycle policy to move files from S3 Standard to S3 Glacier 30 days from object creation. Delete the files 4 years after object creation.'),
  (266, 66, 'S3 버킷 수명 주기 정책을 생성하여 객체 생성 후 30일이 지나면 파일을 S3 Standard에서 S3 One Zone-Infrequent Access(S3 One Zone-IA)로 이동합니다. 객체 생성 후 4년 후 파일을 삭제합니다.', 'Create an S3 bucket lifecycle policy to move files from S3 Standard to S3 One Zone-Infrequent Access (S3 One Zone-IA) 30 days from object creation. Delete the files 4 years after object creation.'),
  (267, 66, 'S3 버킷 수명 주기 정책을 생성하여 객체 생성 후 30일이 지나면 파일을 S3 Standard에서 S3 Standard-Infrequent Access(S3 Standard-IA)로 이동합니다. 객체 생성 후 4년 후 파일을 삭제합니다.', 'Create an S3 bucket lifecycle policy to move files from S3 Standard to S3 Standard-Infrequent Access (S3 Standard-IA) 30 days from object creation. Delete the files 4 years after object creation.'),
  (268, 66, 'S3 버킷 수명 주기 정책을 생성하여 객체 생성 후 30일이 지나면 파일을 S3 Standard에서 S3 Standard-Infrequent Access(S3 Standard-IA)로 이동합니다. 객체 생성 후 4년 후 파일을 S3 Glacier로 이동합니다.', 'Create an S3 bucket lifecycle policy to move files from S3 Standard to S3 Standard-Infrequent Access (S3 Standard-IA) 30 days from object creation. Move the files to S3 Glacier 4 years after object creation.'),
  (269, 67, 'CreateQueue API 호출을 사용하여 새 큐를 생성합니다.', 'Use the CreateQueue API call to create a new queue.'),
  (270, 67, 'AddPermission API 호출을 사용하여 적절한 권한을 추가합니다.', 'Use the AddPermission API call to add appropriate permissions.'),
  (271, 67, 'ReceiveMessage API 호출을 사용하여 적절한 대기 시간을 설정합니다.', 'Use the ReceiveMessage API call to set an appropriate wait time.'),
  (272, 67, 'ChangeMessageVisibility API 호출을 사용하여 가시성 타임아웃(visibility timeout)을 늘립니다.', 'Use the ChangeMessageVisibility API call to increase the visibility timeout.'),
  (273, 68, 'AWS Direct Connect 연결을 리전에 프로비저닝합니다. 주 Direct Connect 연결이 실패할 경우 백업으로 VPN 연결을 프로비저닝합니다.', 'Provision an AWS Direct Connect connection to a Region. Provision a VPN connection as a backup if the primary Direct Connect connection fails.'),
  (274, 68, '프라이빗 연결을 위해 리전에 VPN 터널 연결을 프로비저닝합니다. 주 VPN 연결이 실패할 경우 백업으로 두 번째 VPN 터널을 프로비저닝합니다.', 'Provision a VPN tunnel connection to a Region for private connectivity. Provision a second VPN tunnel for private connectivity and as a backup if the primary VPN connection fails.'),
  (275, 68, 'AWS Direct Connect 연결을 리전에 프로비저닝합니다. 주 Direct Connect 연결이 실패할 경우 백업으로 동일 리전에 두 번째 Direct Connect 연결을 프로비저닝합니다.', 'Provision an AWS Direct Connect connection to a Region. Provision a second Direct Connect connection to the same Region as a backup if the primary Direct Connect connection fails.'),
  (276, 68, 'AWS Direct Connect 연결을 리전에 프로비저닝합니다. AWS CLI의 Direct Connect failover 속성을 사용하여 주 Direct Connect 연결이 실패하면 자동으로 백업 연결을 생성합니다.', 'Provision an AWS Direct Connect connection to a Region. Use the Direct Connect failover attribute from the AWS CLI to automatically create a backup connection if the primary Direct Connect connection fails.'),
  (277, 69, 'EC2 인스턴스를 서로 다른 AWS 리전에 배치합니다. Amazon Route 53 헬스 체크를 사용하여 트래픽을 리디렉션합니다. Aurora PostgreSQL 교차 리전 복제를 사용합니다.', 'Place the EC2 instances in different AWS Regions. Use Amazon Route 53 health checks to redirect traffic. Use Aurora PostgreSQL Cross-Region Replication.'),
  (278, 69, 'Auto Scaling 그룹이 여러 가용 영역을 사용하도록 구성합니다. 데이터베이스를 Multi-AZ로 구성합니다. 데이터베이스에 Amazon RDS Proxy 인스턴스를 구성합니다.', 'Configure the Auto Scaling group to use multiple Availability Zones. Configure the database as Multi-AZ. Configure an Amazon RDS Proxy instance for the database.'),
  (279, 69, 'Auto Scaling 그룹이 한 가용 영역만 사용하도록 구성합니다. 데이터베이스의 스냅샷을 매시간 생성합니다. 장애 발생 시 스냅샷에서 데이터베이스를 복구합니다.', 'Configure the Auto Scaling group to use one Availability Zone. Generate hourly snapshots of the database. Recover the database from the snapshots in the event of a failure.'),
  (280, 69, 'Auto Scaling 그룹이 여러 AWS 리전을 사용하도록 구성합니다. 애플리케이션에서 Amazon S3로 데이터를 기록합니다. S3 이벤트 알림을 사용하여 데이터를 데이터베이스에 기록하는 AWS Lambda 함수를 실행합니다.', 'Configure the Auto Scaling group to use multiple AWS Regions. Write the data from the application to Amazon S3. Use S3 Event Notifications to launch an AWS Lambda function to write the data to the database.'),
  (281, 70, 'NLB에서 HTTP 헬스 체크를 활성화하고 회사 애플리케이션의 URL을 제공합니다.', 'Enable HTTP health checks on the NLB, supplying the URL of the company''s application.'),
  (282, 70, 'EC2 인스턴스에 크론 작업을 추가하여 로컬 애플리케이션 로그를 매분 확인합니다. HTTP 오류가 감지되면 애플리케이션을 재시작합니다.', 'Add a cron job to the EC2 instances to check the local application''s logs once each minute. If HTTP errors are detected. the application will restart.'),
  (283, 70, 'NLB를 Application Load Balancer(ALB)로 교체합니다. 회사 애플리케이션의 URL을 제공하여 HTTP 헬스 체크를 활성화합니다. Auto Scaling 동작을 구성하여 비정상 인스턴스를 교체합니다.', 'Replace the NLB with an Application Load Balancer. Enable HTTP health checks by supplying the URL of the company''s application. Configure an Auto Scaling action to replace unhealthy instances.'),
  (284, 70, 'NLB의 UnhealthyHostCount 지표를 모니터링하는 Amazon CloudWatch 알람을 생성합니다. 알람 상태가 ALARM일 때 비정상 인스턴스를 교체하도록 Auto Scaling 동작을 구성합니다.', 'Create an Amazon Cloud Watch alarm that monitors the UnhealthyHostCount metric for the NLB. Configure an Auto Scaling action to replace unhealthy instances when the alarm is in the ALARM state.'),
  (285, 71, 'DynamoDB 글로벌 테이블을 구성합니다. RPO 복구 시 애플리케이션을 다른 AWS 리전으로 포인팅합니다.', 'Configure DynamoDB global tables. For RPO recovery, point the application to a different AWS Region.'),
  (286, 71, 'DynamoDB 시점 복구(Point-in-Time Recovery, PITR)를 구성합니다. RPO 복구 시 원하는 시점으로 복원합니다.', 'Configure DynamoDB point-in-time recovery. For RPO recovery, restore to the desired point in time.'),
  (287, 71, 'DynamoDB 데이터를 매일 Amazon S3 Glacier로 내보냅니다. RPO 복구 시 S3 Glacier에서 DynamoDB로 데이터를 가져옵니다.', 'Export the DynamoDB data to Amazon S3 Glacier on a daily basis. For RPO recovery, import the data from S3 Glacier to DynamoDB.'),
  (288, 71, 'DynamoDB 테이블에 대해 15분마다 Amazon EBS 스냅샷을 예약합니다. RPO 복구 시 EBS 스냅샷을 사용하여 DynamoDB 테이블을 복원합니다.', 'Schedule Amazon Elastic Block Store (Amazon EBS) snapshots for the DynamoDB table every 15 minutes. For RPO recovery, restore the DynamoDB table by using the EBS snapshot.'),
  (289, 72, 'Amazon API Gateway를 퍼블릭 서브넷에 배포하고 라우트 테이블을 조정하여 S3 호출을 이를 통해 라우팅합니다.', 'Deploy Amazon API Gateway into a public subnet and adjust the route table to route S3 calls through it.'),
  (290, 72, '퍼블릭 서브넷에 NAT 게이트웨이를 배포하고 S3 버킷에 대한 액세스를 허용하는 엔드포인트 정책을 연결합니다.', 'Deploy a NAT gateway into a public subnet and attach an endpoint policy that allows access to the S3 buckets.'),
  (291, 72, '애플리케이션을 퍼블릭 서브넷에 배포하고 인터넷 게이트웨이를 통해 S3 버킷에 접근하도록 허용합니다.', 'Deploy the application into a public subnet and allow it to route through an internet gateway to access the S3 buckets.'),
  (292, 72, 'VPC에 S3 VPC 게이트웨이 엔드포인트를 배포하고 S3 버킷에 대한 액세스를 허용하는 엔드포인트 정책을 연결합니다.', 'Deploy an S3 VPC gateway endpoint into the VPC and attach an endpoint policy that allows access to the S3 buckets.'),
  (293, 73, '배스천 호스트의 현재 보안 그룹을 애플리케이션 인스턴스에서만 인바운드 액세스를 허용하는 보안 그룹으로 교체합니다.', 'Replace the current security group of the bastion host with one that only allows inbound access from the application instances.'),
  (294, 73, '배스천 호스트의 현재 보안 그룹을 회사의 내부 IP 범위에서만 인바운드 액세스를 허용하는 보안 그룹으로 교체합니다.', 'Replace the current security group of the bastion host with one that only allows inbound access from the internal IP range for the company.'),
  (295, 73, '배스천 호스트의 현재 보안 그룹을 회사의 외부(퍼블릭) IP 범위에서만 인바운드 액세스를 허용하는 보안 그룹으로 교체합니다.', 'Replace the current security group of the bastion host with one that only allows inbound access from the external IP range for the company.'),
  (296, 73, '애플리케이션 인스턴스의 현재 보안 그룹을 배스천 호스트의 프라이빗 IP 주소에서만 SSH 인바운드 액세스를 허용하는 보안 그룹으로 교체합니다.', 'Replace the current security group of the application instances with one that allows inbound SSH access from only the private IP address of the bastion host.'),
  (297, 73, '애플리케이션 인스턴스의 현재 보안 그룹을 배스천 호스트의 퍼블릭 IP 주소에서만 SSH 인바운드 액세스를 허용하는 보안 그룹으로 교체합니다.', 'Replace the current security group of the application instances with one that allows inbound SSH access from only the public IP address of the bastion host.'),
  (298, 74, '웹 계층의 보안 그룹을 구성하여 포트 443의 인바운드 트래픽을 0.0.0.0/0에서 허용합니다.', 'Configure the security group for the web tier to allow inbound traffic on port 443 from 0.0.0.0/0.'),
  (299, 74, '웹 계층의 보안 그룹을 구성하여 포트 443의 아웃바운드 트래픽을 0.0.0.0/0에서 허용합니다.', 'Configure the security group for the web tier to allow outbound traffic on port 443 from 0.0.0.0/0.'),
  (300, 74, '데이터베이스 계층의 보안 그룹을 구성하여 포트 1433의 인바운드 트래픽을 웹 계층의 보안 그룹에서 허용합니다.', 'Configure the security group for the database tier to allow inbound traffic on port 1433 from the security group for the web tier.'),
  (301, 74, '데이터베이스 계층의 보안 그룹을 구성하여 포트 443 및 1433의 아웃바운드 트래픽을 웹 계층의 보안 그룹으로 허용합니다.', 'Configure the security group for the database tier to allow outbound traffic on ports 443 and 1433 to the security group for the web tier.'),
  (302, 74, '데이터베이스 계층의 보안 그룹을 구성하여 포트 443 및 1433의 인바운드 트래픽을 웹 계층의 보안 그룹에서 허용합니다.', 'Configure the security group for the database tier to allow inbound traffic on ports 443 and 1433 from the security group for the web tier.'),
  (303, 75, 'Amazon API Gateway를 사용하고 트랜잭션을 애플리케이션 계층으로 AWS Lambda 함수로 직접 라우팅합니다. 애플리케이션 서비스 간 통신 계층으로 Amazon Simple Queue Service(Amazon SQS)를 사용합니다.', 'Use Amazon API Gateway and direct transactions to the AWS Lambda functions as the application layer. Use Amazon Simple Queue Service (Amazon SQS) as the communication layer between application services.'),
  (304, 75, 'Amazon CloudWatch 지표를 사용하여 성능 실패 시 서버의 피크 사용률을 분석합니다. 애플리케이션 서버의 Amazon EC2 인스턴스 크기를 피크 요구사항을 충족하도록 증가시킵니다.', 'Use Amazon CloudWatch metrics to analyze the application performance history to determine the servers'' peak utilization during the performance failures. Increase the size of the application server''s Amazon EC2 instances to meet the peak requirements.'),
  (305, 75, 'Amazon Simple Notification Service(Amazon SNS)를 사용하여 Auto Scaling 그룹에서 실행되는 Amazon EC2의 애플리케이션 서버 간 메시징을 처리합니다. Amazon CloudWatch를 사용하여 SNS 대기열 길이를 모니터링하고 필요에 따라 스케일업/다운합니다.', 'Use Amazon Simple Notification Service (Amazon SNS) to handle the messaging between application servers running on Amazon EC2 in an Auto Scaling group. Use Amazon CloudWatch to monitor the SNS queue length and scale up and down as required.'),
  (306, 75, 'Amazon Simple Queue Service(Amazon SQS)를 사용하여 Auto Scaling 그룹에서 실행되는 Amazon EC2의 애플리케이션 서버 간 메시징을 처리합니다. Amazon CloudWatch를 사용하여 SQS 대기열 길이를 모니터링하고 통신 실패가 감지되면 스케일 업합니다.', 'Use Amazon Simple Queue Service (Amazon SQS) to handle the messaging between application servers running on Amazon EC2 in an Auto Scaling group. Use Amazon CloudWatch to monitor the SQS queue length and scale up when communication failures are detected.'),
  (307, 76, '공용 인터넷을 통한 AWS DataSync', 'AWS DataSync over public internet'),
  (308, 76, 'AWS Direct Connect를 통한 AWS DataSync', 'AWS DataSync over AWS Direct Connect'),
  (309, 76, '공용 인터넷을 통한 AWS Database Migration Service(AWS DMS)', 'AWS Database Migration Service (AWS DMS) over public internet'),
  (310, 76, 'AWS Database Migration Service(AWS DMS)를 AWS Direct Connect를 통해', 'AWS Database Migration Service (AWS DMS) over AWS Direct Connect'),
  (311, 77, 'Amazon EC2 인스턴스를 배포하여 데이터를 Amazon Kinesis 데이터 스트림으로 전송하는 API를 호스팅합니다. Kinesis 데이터 스트림을 데이터 소스로 사용하는 Amazon Kinesis Data Firehose 전달 스트림을 생성합니다. AWS Lambda 함수를 사용하여 데이터를 변환합니다. Kinesis Data Firehose 전달 스트림을 사용하여 데이터를 Amazon S3로 전송합니다.', 'Deploy an Amazon EC2 instance to host an API that sends data to an Amazon Kinesis data stream. Create an Amazon Kinesis Data Firehose delivery stream that uses the Kinesis data stream as a data source. Use AWS Lambda functions to transform the data. Use the Kinesis Data Firehose delivery stream to send the data to Amazon S3.'),
  (312, 77, 'Amazon EC2 인스턴스를 배포하여 데이터를 AWS Glue로 전송하는 API를 호스팅합니다. EC2 인스턴스에서 소스/대상 검사를 중지합니다. AWS Glue를 사용하여 데이터를 변환하고 Amazon S3로 전송합니다.', 'Deploy an Amazon EC2 instance to host an API that sends data to AWS Glue. Stop source/destination checking on the EC2 instance. Use AWS Glue to transform the data and to send the data to Amazon S3.'),
  (313, 77, 'Amazon API Gateway API를 구성하여 데이터를 Amazon Kinesis 데이터 스트림으로 전송합니다. Kinesis 데이터 스트림을 데이터 소스로 사용하는 Amazon Kinesis Data Firehose 전달 스트림을 생성합니다. AWS Lambda 함수를 사용하여 데이터를 변환합니다. Kinesis Data Firehose 전달 스트림을 사용하여 데이터를 Amazon S3로 전송합니다.', 'Configure an Amazon API Gateway API to send data to an Amazon Kinesis data stream. Create an Amazon Kinesis Data Firehose delivery stream that uses the Kinesis data stream as a data source. Use AWS Lambda functions to transform the data. Use the Kinesis Data Firehose delivery stream to send the data to Amazon S3.'),
  (314, 77, 'Amazon API Gateway API를 구성하여 데이터를 AWS Glue로 전송합니다. AWS Lambda 함수를 사용하여 데이터를 변환합니다. AWS Glue를 사용하여 데이터를 Amazon S3로 전송합니다.', 'Configure an Amazon API Gateway API to send data to AWS Glue. Use AWS Lambda functions to transform the data. Use AWS Glue to send the data to Amazon S3.'),
  (315, 78, 'DynamoDB 포인트 인 타임 복구(Point-in-Time Recovery)를 사용하여 테이블을 지속적으로 백업합니다.', 'Use DynamoDB point-in-time recovery to back up the table continuously.'),
  (316, 78, 'AWS Backup을 사용하여 테이블에 대한 백업 일정과 보존 정책을 생성합니다.', 'Use AWS Backup to create backup schedules and retention policies for the table.'),
  (317, 78, 'DynamoDB 콘솔을 사용하여 테이블의 온디맨드 백업을 생성합니다. 백업을 Amazon S3 버킷에 저장합니다. S3 버킷에 대해 S3 수명 주기(Lifecycle) 구성을 설정합니다.', 'Create an on-demand backup of the table by using the DynamoDB console. Store the backup in an Amazon S3 bucket. Set an S3 Lifecycle configuration for the S3 bucket.'),
  (318, 78, 'Amazon EventBridge(Amazon CloudWatch Events) 규칙을 생성하여 AWS Lambda 함수를 호출합니다. Lambda 함수를 구성하여 테이블을 백업하고 Amazon S3 버킷에 백업을 저장하도록 합니다. S3 버킷에 대해 S3 수명 주기(Lifecycle) 구성을 설정합니다.', 'Create an Amazon EventBridge (Amazon CloudWatch Events) rule to invoke an AWS Lambda function. Configure the Lambda function to back up the table and to store the backup in an Amazon S3 bucket. Set an S3 Lifecycle configuration for the S3 bucket.'),
  (319, 79, '온디맨드 용량 모드로 DynamoDB 테이블을 생성합니다.', 'Create a DynamoDB table in on-demand capacity mode.'),
  (320, 79, '글로벌 보조 인덱스를 가진 DynamoDB 테이블을 생성합니다.', 'Create a DynamoDB table with a global secondary index.'),
  (321, 79, '프로비저닝된 용량과 자동 스케일링이 적용된 DynamoDB 테이블을 생성합니다.', 'Create a DynamoDB table with provisioned capacity and auto scaling.'),
  (322, 79, '프로비저닝된 용량 모드로 DynamoDB 테이블을 생성하고, 글로벌 테이블로 구성합니다.', 'Create a DynamoDB table in provisioned capacity mode, and configure it as a global table.'),
  (323, 80, '암호화된 AMI와 스냅샷을 공개적으로 사용 가능하게 합니다. 키 정책을 수정하여 MSP 파트너의 AWS 계정이 키를 사용할 수 있도록 허용합니다.', 'Make the encrypted AMI and snapshots publicly available. Modify the key policy to allow the MSP Partner''s AWS account to use the key.'),
  (324, 80, 'AMI의 launchPermission 속성을 수정합니다. AMI를 MSP 파트너의 AWS 계정에만 공유합니다. 키 정책을 수정하여 MSP 파트너의 AWS 계정이 키를 사용할 수 있도록 허용합니다.', 'Modify the launchPermission property of the AMI. Share the AMI with the MSP Partner''s AWS account only. Modify the key policy to allow the MSP Partner''s AWS account to use the key.'),
  (325, 80, 'AMI의 launchPermission 속성을 수정합니다. AMI를 MSP 파트너의 AWS 계정에만 공유합니다. 키 정책을 수정하여 MSP 파트너가 소유한 새로운 KMS 키를 신뢰하도록 구성합니다.', 'Modify the launchPermission property of the AMI. Share the AMI with the MSP Partner''s AWS account only. Modify the key policy to trust a new KMS key that is owned by the MSP Partner for encryption.'),
  (326, 80, 'AMI를 소스 계정에서 MSP 파트너의 AWS 계정에 있는 Amazon S3 버킷으로 내보냅니다. S3 버킷을 MSP 파트너가 소유한 새 KMS 키로 암호화합니다. MSP 파트너의 AWS 계정에서 AMI를 복사하고 실행합니다.', 'Export the AMI from the source account to an Amazon S3 bucket in the MSP Partner''s AWS account, Encrypt the S3 bucket with a new KMS key that is owned by the MSP Partner. Copy and launch the AMI in the MSP Partner''s AWS account.'),
  (327, 81, '처리해야 하는 작업을 보내기 위해 Amazon SNS 주제를 생성합니다.
프로세서 애플리케이션이 포함된 Amazon Machine Image(AMI)를 생성합니다.
AMI를 사용하는 런치 구성(Launch Configuration)을 생성합니다.
런치 구성을 사용하여 Auto Scaling 그룹을 생성합니다.
Auto Scaling 그룹의 스케일링 정책을 CPU 사용률에 따라 노드를 추가 및 제거하도록 설정합니다.', 'Create an Amazon SNS topic to send the jobs that need to be processed. Create an Amazon Machine Image (AMI) that consists of the processor application. Create a launch configuration that uses the AMI. Create an Auto Scaling group using the launch configuration. Set the scaling policy for the Auto Scaling group to add and remove nodes based on CPU usage.'),
  (328, 81, '처리해야 하는 작업을 보관하기 위해 Amazon SQS 대기열을 생성합니다.
프로세서 애플리케이션이 포함된 Amazon Machine Image(AMI)를 생성합니다.
AMI를 사용하는 런치 구성(Launch Configuration)을 생성합니다.
런치 구성을 사용하여 Auto Scaling 그룹을 생성합니다.
Auto Scaling 그룹의 스케일링 정책을 네트워크 사용량에 따라 노드를 추가 및 제거하도록 설정합니다.', 'Create an Amazon SQS queue to hold the jobs that need to be processed. Create an Amazon Machine Image (AMI) that consists of the processor application. Create a launch configuration that uses the AMI. Create an Auto Scaling group using the launch configuration. Set the scaling policy for the Auto Scaling group to add and remove nodes based on network usage.'),
  (329, 81, '처리해야 하는 작업을 보관하기 위해 Amazon SQS 대기열을 생성합니다.
프로세서 애플리케이션이 포함된 Amazon Machine Image(AMI)를 생성합니다.
AMI를 사용하는 런치 템플릿(Launch Template)을 생성합니다.
런치 템플릿을 사용하여 Auto Scaling 그룹을 생성합니다.
Auto Scaling 그룹의 스케일링 정책을 SQS 대기열의 항목 수에 따라 노드를 추가 및 제거하도록 설정합니다.', 'Create an Amazon SQS queue to hold the jobs that need to be processed. Create an Amazon Machine Image (AMI) that consists of the processor application. Create a launch template that uses the AMI. Create an Auto Scaling group using the launch template. Set the scaling policy for the Auto Scaling group to add and remove nodes based on the number of items in the SQS queue.'),
  (330, 81, '처리해야 하는 작업을 보내기 위해 Amazon SNS 주제를 생성합니다.
프로세서 애플리케이션이 포함된 Amazon Machine Image(AMI)를 생성합니다.
AMI를 사용하는 런치 템플릿(Launch Template)을 생성합니다.
런치 템플릿을 사용하여 Auto Scaling 그룹을 생성합니다.
Auto Scaling 그룹의 스케일링 정책을 SNS 주제에 게시된 메시지 수에 따라 노드를 추가 및 제거하도록 설정합니다.', 'Create an Amazon SNS topic to send the jobs that need to be processed. Create an Amazon Machine Image (AMI) that consists of the processor application. Create a launch template that uses the AMI. Create an Auto Scaling group using the launch template. Set the scaling policy for the Auto Scaling group to add and remove nodes based on the number of messages published to the SNS topic.'),
  (331, 82, 'ACM에서 규칙을 추가하여 인증서가 만료되기 30일 전부터 매일 Amazon Simple Notification Service(Amazon SNS) 주제로 사용자 지정 메시지를 게시하도록 합니다.', 'Add a rule in ACM to publish a custom message to an Amazon Simple Notification Service (Amazon SNS) topic every day, beginning 30 days before any certificate will expire.'),
  (332, 82, '만료 예정 인증서를 30일 이내에 확인하는 AWS Config 규칙을 생성합니다.
AWS Config가 비준수 리소스를 보고할 때 Amazon EventBridge(Amazon CloudWatch Events)를 구성하여 Amazon Simple Notification Service(Amazon SNS)를 통해 사용자 지정 알림을 호출합니다.', 'Create an AWS Config rule that checks for certificates that will expire within 30 days. Configure Amazon EventBridge (Amazon CloudWatch Events) to invoke a custom alert by way of Amazon Simple Notification Service (Amazon SNS) when AWS Config reports a noncompliant resource.'),
  (333, 82, '만료 예정 인증서를 30일 이내에 확인하기 위해 AWS Trusted Advisor를 사용합니다.
체크 상태 변경에 대한 Trusted Advisor 지표를 기반으로 Amazon CloudWatch 알람을 생성합니다.
알람이 발생하면 Amazon Simple Notification Service(Amazon SNS)를 통해 사용자 지정 알림을 보냅니다.', 'Use AWS Trusted Advisor to check for certificates that will expire within 30 days. Create an Amazon CloudWatch alarm that is based on Trusted Advisor metrics for check status changes. Configure the alarm to send a custom alert by way of Amazon Simple Notification Service (Amazon SNS).'),
  (334, 82, '만료 예정 인증서를 30일 이내에 감지하는 Amazon EventBridge(Amazon CloudWatch Events) 규칙을 생성합니다.
규칙이 AWS Lambda 함수를 호출하도록 구성합니다.
Lambda 함수가 Amazon Simple Notification Service(Amazon SNS)를 통해 사용자 지정 알림을 전송하도록 구성합니다.', 'Create an Amazon EventBridge (Amazon CloudWatch Events) rule to detect any certificates that will expire within 30 days. Configure the rule to invoke an AWS Lambda function. Configure the Lambda function to send a custom alert by way of Amazon Simple Notification Service (Amazon SNS).'),
  (335, 83, 'Amazon EC2 인스턴스를 us-east-1에 시작하고 사이트를 해당 인스턴스로 마이그레이션합니다.', 'Launch an Amazon EC2 instance in us-east-1 and migrate the site to it.'),
  (336, 83, '웹사이트를 Amazon S3로 이동합니다. 리전 간 복제를 사용합니다.', 'Move the website to Amazon S3. Use Cross-Region Replication between Regions.'),
  (337, 83, 'Amazon CloudFront를 사용하고, 맞춤형 오리진을 온프레미스 서버로 지정합니다.', 'Use Amazon CloudFront with a custom origin pointing to the on-premises servers.'),
  (338, 83, 'Amazon Route 53 지리 근접 라우팅 정책을 사용하여 온프레미스 서버를 가리킵니다.', 'Use an Amazon Route 53 geoproximity routing policy pointing to on-premises servers.'),
  (339, 84, '프로덕션 EC2 인스턴스에 Spot 인스턴스를 사용합니다. 개발 및 테스트 EC2 인스턴스에는 예약 인스턴스를 사용합니다.', 'Use Spot Instances for the production EC2 instances. Use Reserved Instances for the development and test EC2 instances.'),
  (340, 84, '프로덕션 EC2 인스턴스에는 예약 인스턴스를 사용합니다. 개발 및 테스트 EC2 인스턴스에는 온디맨드 인스턴스를 사용합니다.', 'Use Reserved Instances for the production EC2 instances. Use On-Demand Instances for the development and test EC2 instances.'),
  (341, 84, '프로덕션 EC2 인스턴스에는 Spot 블록을 사용합니다. 개발 및 테스트 EC2 인스턴스에는 예약 인스턴스를 사용합니다.', 'Use Spot blocks for the production EC2 instances. Use Reserved Instances for the development and test EC2 instances.'),
  (342, 84, '프로덕션 EC2 인스턴스에는 온디맨드 인스턴스를 사용합니다. 개발 및 테스트 EC2 인스턴스에는 Spot 블록을 사용합니다.', 'Use On-Demand Instances for the production EC2 instances. Use Spot blocks for the development and test EC2 instances.'),
  (343, 85, 'S3 버전 관리(S3 Versioning)와 S3 객체 잠금(S3 Object Lock)이 활성화된 Amazon S3 버킷에 업로드된 문서를 저장합니다.', 'Store the uploaded documents in an Amazon S3 bucket with S3 Versioning and S3 Object Lock enabled.'),
  (344, 85, 'Amazon S3 버킷에 업로드된 문서를 저장합니다. S3 수명 주기 정책(S3 Lifecycle policy)을 구성하여 문서를 주기적으로 아카이브합니다.', 'Store the uploaded documents in an Amazon S3 bucket. Configure an S3 Lifecycle policy to archive the documents periodically.'),
  (345, 85, 'S3 버전 관리(S3 Versioning)가 활성화된 Amazon S3 버킷에 업로드된 문서를 저장합니다. 모든 접근을 읽기 전용으로 제한하는 ACL을 구성합니다.', 'Store the uploaded documents in an Amazon S3 bucket with S3 Versioning enabled. Configure an ACL to restrict all access to read-only.'),
  (346, 85, 'Amazon Elastic File System(Amazon EFS) 볼륨에 업로드된 문서를 저장합니다. 볼륨을 읽기 전용 모드로 마운트하여 데이터를 액세스합니다.', 'Store the uploaded documents on an Amazon Elastic File System (Amazon EFS) volume. Access the data by mounting the volume in read-only mode.'),
  (347, 86, '데이터베이스 사용자 자격 증명을 AWS Secrets Manager에 저장합니다. 웹 서버가 AWS Secrets Manager에 액세스할 수 있도록 필요한 IAM 권한을 부여합니다.', 'Store the database user credentials in AWS Secrets Manager. Grant the necessary IAM permissions to allow the web servers to access AWS Secrets Manager.'),
  (348, 86, '데이터베이스 사용자 자격 증명을 AWS Systems Manager OpsCenter에 저장합니다. 웹 서버가 OpsCenter에 액세스할 수 있도록 필요한 IAM 권한을 부여합니다.', 'Store the database user credentials in AWS Systems Manager OpsCenter. Grant the necessary IAM permissions to allow the web servers to access OpsCenter.'),
  (349, 86, '데이터베이스 사용자 자격 증명을 안전한 Amazon S3 버킷에 저장합니다. 웹 서버가 자격 증명을 검색하고 데이터베이스에 액세스할 수 있도록 필요한 IAM 권한을 부여합니다.', 'Store the database user credentials in a secure Amazon S3 bucket. Grant the necessary IAM permissions to allow the web servers to retrieve credentials and access the database.'),
  (350, 86, '데이터베이스 사용자 자격 증명을 AWS Key Management Service(AWS KMS)로 암호화된 파일로 웹 서버 파일 시스템에 저장합니다. 웹 서버가 파일을 복호화하고 데이터베이스에 액세스합니다.', 'Store the database user credentials in files encrypted with AWS Key Management Service (AWS KMS) on the web server file system. The web server should be able to decrypt the files and access the database.'),
  (351, 87, 'Lambda 함수와 데이터베이스 사이에 Amazon RDS 프록시를 배치하도록 구성합니다. Lambda 함수가 RDS 프록시에 연결되도록 구성합니다.', 'Provision an Amazon RDS proxy to sit between the Lambda functions and the database. Configure the Lambda functions to connect to the RDS proxy.'),
  (352, 87, 'Lambda 함수의 실행 시간을 최대값으로 늘립니다. 데이터베이스에 고객 데이터를 저장하는 코드에서 재시도 메커니즘을 만듭니다.', 'Increase the run time of the Lambda functions to the maximum. Create a retry mechanism in the code that stores the customer data in the database.'),
  (353, 87, '고객 데이터를 Lambda 로컬 스토리지에 영구적으로 저장합니다. 새 Lambda 함수를 구성하여 로컬 스토리지를 스캔하고 고객 데이터를 데이터베이스에 저장합니다.', 'Persist the customer data to Lambda local storage. Configure new Lambda functions to scan the local storage to save the customer data to the database.'),
  (354, 87, '고객 데이터를 Amazon Simple Queue Service(Amazon SQS) FIFO 큐에 저장합니다. 새 Lambda 함수를 생성하여 큐를 폴링하고 고객 데이터를 데이터베이스에 저장합니다.', 'Store the customer data in an Amazon Simple Queue Service (Amazon SQS) FIFO queue. Create a new Lambda function that polls the queue and stores the customer data in the database.'),
  (355, 88, '회사의 S3 버킷에 Requester Pays 기능을 구성합니다.', 'Configure the Requester Pays feature on the company''s S3 bucket.'),
  (356, 88, '회사의 S3 버킷에서 마케팅 회사의 S3 버킷 중 하나로 S3 교차 리전 복제를 구성합니다.', 'Configure S3 Cross-Region Replication from the company''s S3 bucket to one of the marketing firm''s S3 buckets.'),
  (357, 88, '마케팅 회사가 회사의 S3 버킷에 액세스할 수 있도록 교차 계정 액세스를 구성합니다.', 'Configure cross-account access for the marketing firm so that the marketing firm has access to the company''s S3 bucket.'),
  (358, 88, '회사의 S3 버킷에 S3 Intelligent-Tiering을 사용하도록 구성합니다. S3 버킷을 마케팅 회사의 S3 버킷 중 하나와 동기화합니다.', 'Configure the company''s S3 bucket to use S3 Intelligent-Tiering. Sync the S3 bucket to one of the marketing firm''s S3 buckets.'),
  (359, 89, 'S3 버킷에서 버전 관리(versioning)와 MFA Delete 기능을 활성화합니다.', 'Enable the versioning and MFA Delete features on the S3 bucket.'),
  (360, 89, '감사팀의 각 IAM 사용자 계정에 대해 다중 인증(MFA)을 활성화합니다.', 'Enable multi-factor authentication (MFA) on the IAM user credentials for each audit team IAM user account.'),
  (361, 89, '감사 일정 동안 s3:DeleteObject 작업을 거부하도록 감사팀 IAM 사용자 계정에 S3 수명 주기 정책을 추가합니다.', 'Add an S3 Lifecycle policy to the audit team''s IAM user accounts to deny the s3:DeleteObject action during audit dates.'),
  (362, 89, 'AWS Key Management Service(AWS KMS)를 사용하여 S3 버킷을 암호화하고 감사팀 IAM 사용자 계정이 KMS 키에 액세스하지 못하도록 제한합니다.', 'Use AWS Key Management Service (AWS KMS) to encrypt the S3 bucket and restrict audit team IAM user accounts from accessing the KMS key.'),
  (363, 90, 'DB 인스턴스를 Multi-AZ 배포로 수정합니다.', 'Modify the DB instance to be a Multi-AZ deployment.'),
  (364, 90, '데이터베이스의 읽기 전용 복제본(read replica)을 생성합니다. 스크립트가 읽기 전용 복제본에서만 쿼리를 실행하도록 구성합니다.', 'Create a read replica of the database. Configure the script to query only the read replica.'),
  (365, 90, '개발팀에게 매일 끝날 때 수동으로 데이터베이스의 항목을 내보내도록 지시합니다.', 'Instruct the development team to manually export the entries in the database at the end of each day.'),
  (366, 90, 'Amazon ElastiCache를 사용하여 스크립트가 데이터베이스에서 실행하는 일반 쿼리를 캐싱합니다.', 'Use Amazon ElastiCache to cache the common queries that the script runs against the database.'),
  (367, 91, 'S3 게이트웨이 엔드포인트를 구성합니다.', 'Configure an S3 gateway endpoint.'),
  (368, 91, 'S3 버킷을 프라이빗 서브넷에 생성합니다.', 'Create an S3 bucket in a private subnet.'),
  (369, 91, 'S3 버킷을 EC2 인스턴스와 동일한 AWS 리전에 생성합니다.', 'Create an S3 bucket in the same AWS Region as the EC2 instances.'),
  (370, 91, 'EC2 인스턴스와 동일한 서브넷에 NAT 게이트웨이를 구성합니다.', 'Configure a NAT gateway in the same subnet as the EC2 instances.'),
  (371, 92, 'VPC 내에서 Amazon S3용 게이트웨이 엔드포인트를 구성합니다.', 'Configure a VPC gateway endpoint for Amazon S3 within the VPC.'),
  (372, 92, 'S3 버킷의 객체를 공개하도록 버킷 정책을 생성합니다.', 'Create a bucket policy to make the objects in the S3 bucket public.'),
  (373, 92, 'VPC에서 실행되는 애플리케이션 계층에만 접근을 제한하는 버킷 정책을 생성합니다.', 'Create a bucket policy that limits access to only the application tier running in the VPC.'),
  (374, 92, 'S3 접근 정책이 적용된 IAM 사용자를 생성하고 IAM 자격 증명을 EC2 인스턴스에 복사합니다.', 'Create an IAM user with an S3 access policy and copy the IAM credentials to the EC2 instance.'),
  (375, 92, 'NAT 인스턴스를 생성하고 EC2 인스턴스가 NAT 인스턴스를 통해 S3 버킷에 접근하도록 구성합니다.', 'Create a NAT instance and have the EC2 instances use the NAT instance to access the S3 bucket.'),
  (376, 93, '프로덕션용으로 Multi-AZ Aurora Replica가 있는 Amazon Aurora MySQL을 사용합니다. 스테이징 데이터베이스를 채우기 위해 mysqldump 유틸리티를 사용한 백업 및 복원 프로세스를 구현합니다.', 'Use Amazon Aurora MySQL with Multi-AZ Aurora Replicas for production. Populate the staging database by implementing a backup and restore process that uses the mysqldump utility.'),
  (377, 93, '프로덕션용으로 Multi-AZ Aurora Replica가 있는 Amazon Aurora MySQL을 사용합니다. 데이터베이스 클로닝(database cloning)을 사용하여 온디맨드로 스테이징 데이터베이스를 생성합니다.', 'Use Amazon Aurora MySQL with Multi-AZ Aurora Replicas for production. Use database cloning to create the staging database on-demand.'),
  (378, 93, '프로덕션용으로 Multi-AZ 배포 및 읽기 전용 리플리카(read replica)가 있는 Amazon RDS for MySQL을 사용합니다. 스테이징 데이터베이스용으로 스탠바이 인스턴스를 사용합니다.', 'Use Amazon RDS for MySQL with a Multi-AZ deployment and read replicas for production. Use the standby instance for the staging database.'),
  (379, 93, '프로덕션용으로 Multi-AZ 배포 및 읽기 전용 리플리카(read replica)가 있는 Amazon RDS for MySQL을 사용합니다. 스테이징 데이터베이스를 채우기 위해 mysqldump 유틸리티를 사용한 백업 및 복원 프로세스를 구현합니다.', 'Use Amazon RDS for MySQL with a Multi-AZ deployment and read replicas for production. Populate the staging database by implementing a backup and restore process that uses the mysqldump utility.'),
  (380, 94, 'Amazon EMR을 구성하여 Amazon S3에서 텍스트 파일을 읽습니다. 데이터를 변환하는 스크립트를 실행합니다. 결과 JSON 파일을 Amazon Aurora DB 클러스터에 저장합니다.', 'Configure Amazon EMR to read text files from Amazon S3. Run processing scripts to transform the data. Store the resulting JSON file in an Amazon Aurora DB cluster.'),
  (381, 94, 'Amazon S3를 구성하여 이벤트 알림을 Amazon Simple Queue Service(Amazon SQS) 큐로 전송합니다. Amazon EC2 인스턴스를 사용하여 큐에서 읽고 데이터를 처리합니다. 결과 JSON 파일을 Amazon DynamoDB에 저장합니다.', 'Configure Amazon S3 to send an event notification to an Amazon Simple Queue Service (Amazon SQS) queue. Use Amazon EC2 instances to read from the queue and process the data. Store the resulting JSON file in Amazon DynamoDB.'),
  (382, 94, 'Amazon S3를 구성하여 이벤트 알림을 Amazon Simple Queue Service(Amazon SQS) 큐로 전송합니다. AWS Lambda 함수를 사용하여 큐에서 읽고 데이터를 처리합니다. 결과 JSON 파일을 Amazon DynamoDB에 저장합니다.', 'Configure Amazon S3 to send an event notification to an Amazon Simple Queue Service (Amazon SQS) queue. Use an AWS Lambda function to read from the queue and process the data. Store the resulting JSON file in Amazon DynamoDB.'),
  (383, 94, 'Amazon EventBridge(Amazon CloudWatch Events)를 구성하여 새 파일이 업로드될 때 이벤트를 Amazon Kinesis Data Streams로 전송합니다. AWS Lambda 함수를 사용하여 스트림에서 이벤트를 소비하고 데이터를 처리합니다. 결과 JSON 파일을 Amazon Aurora DB 클러스터에 저장합니다.', 'Configure Amazon EventBridge (Amazon CloudWatch Events) to send an event to Amazon Kinesis Data Streams when a new file is uploaded. Use an AWS Lambda function to consume the event from the stream and process the data. Store the resulting JSON file in an Amazon Aurora DB cluster.'),
  (384, 95, '기존 데이터베이스를 Multi-AZ 배포로 변경합니다. 읽기 요청은 기본 가용 영역에서 제공합니다.', 'Change the existing database to a Multi-AZ deployment. Serve the read requests from the primary Availability Zone.'),
  (385, 95, '기존 데이터베이스를 Multi-AZ 배포로 변경합니다. 읽기 요청은 보조 가용 영역에서 제공합니다.', 'Change the existing database to a Multi-AZ deployment. Serve the read requests from the secondary Availability Zone.'),
  (386, 95, '데이터베이스에 읽기 전용 복제본(read replica)을 생성합니다. 읽기 복제본을 원본 데이터베이스의 계산 및 저장 용량의 절반으로 구성합니다.', 'Create read replicas for the database. Configure the read replicas with half of the compute and storage resources as the source database.'),
  (387, 95, '데이터베이스에 읽기 전용 복제본(read replica)을 생성합니다. 읽기 복제본을 원본 데이터베이스와 동일한 계산 및 저장 용량으로 구성합니다.', 'Create read replicas for the database. Configure the read replicas with the same compute and storage resources as the source database.'),
  (388, 96, '사용자는 us-east-1을 제외한 모든 AWS 리전에서 EC2 인스턴스를 종료할 수 있습니다.', 'Users can terminate an EC2 instance in any AWS Region except us-east-1.'),
  (389, 96, '사용자는 us-east-1 리전에서 IP 주소가 10.100.100.1인 EC2 인스턴스를 종료할 수 있습니다.', 'Users can terminate an EC2 instance with the IP address 10.100.100.1 in the us-east-1 Region.'),
  (390, 96, '사용자는 사용자의 소스 IP가 10.100.100.254일 때 us-east-1 리전에서 EC2 인스턴스를 종료할 수 있습니다.', 'Users can terminate an EC2 instance in the us-east-1 Region when the user''s source IP is 10.100.100.254.'),
  (391, 96, '사용자는 사용자의 소스 IP가 10.100.100.254일 때 us-east-1 리전에서 EC2 인스턴스를 종료할 수 없습니다.', 'Users cannot terminate an EC2 instance in the us-east-1 Region when the user''s source IP is 10.100.100.254.'),
  (392, 97, 'Amazon EFS 스토리지를 구성하고 인증을 위해 Active Directory 도메인을 설정합니다.', 'Configure Amazon EFS storage and set the Active Directory domain for authentication.'),
  (393, 97, 'AWS Storage Gateway 파일 게이트웨이에 SMB 파일 공유를 생성하고 두 개의 가용 영역에서 구성합니다.', 'Create an SMB file share on an AWS Storage Gateway file gateway in two Availability Zones.'),
  (394, 97, 'Amazon S3 버킷을 생성하고 Microsoft Windows Server에서 이를 볼륨으로 마운트하도록 구성합니다.', 'Create an Amazon S3 bucket and configure Microsoft Windows Server to mount it as a volume.'),
  (395, 97, 'AWS에서 Amazon FSx for Windows File Server 파일 시스템을 생성하고 인증을 위해 Active Directory 도메인을 설정합니다.', 'Create an Amazon FSx for Windows File Server file system on AWS and set the Active Directory domain for authentication.'),
  (396, 98, 'SQS 큐에서 롱 폴링을 설정하고 ReceiveMessage 대기 시간을 30초로 늘립니다.', 'Set up long polling in the SQS queue by increasing the ReceiveMessage wait time to 30 seconds.'),
  (397, 98, 'SQS 표준 큐를 SQS FIFO 큐로 변경합니다. 메시지 중복 제거 ID를 사용하여 중복 메시지를 제거합니다.', 'Change the SQS standard queue to an SQS FIFO queue. Use the message deduplication ID to discard duplicate messages.'),
  (398, 98, 'SQS 큐의 가시성 타임아웃을 함수 타임아웃과 배치 윈도우 타임아웃의 합보다 크게 증가시킵니다.', 'Increase the visibility timeout in the SQS queue to a value that is greater than the total of the function timeout and the batch window timeout.'),
  (399, 98, 'Lambda 함수가 메시지를 처리하기 전에 읽은 즉시 SQS 큐에서 각 메시지를 삭제하도록 수정합니다.', 'Modify the Lambda function to delete each message from the SQS queue immediately after the message is read before processing.'),
  (400, 99, 'AWS Storage Gateway 파일 게이트웨이를 생성합니다. 필요한 클라이언트 프로토콜을 사용하는 파일 공유를 생성합니다. 애플리케이션 서버를 파일 공유에 연결합니다.', 'Create an AWS Storage Gateway file gateway. Create a file share that uses the required client protocol. Connect the application server to the file share.'),
  (401, 99, 'Amazon EC2 Windows 인스턴스를 생성합니다. 인스턴스에 Windows 파일 공유 역할을 설치하고 구성합니다. 애플리케이션 서버를 파일 공유에 연결합니다.', 'Create an Amazon EC2 Windows instance. Install and configure a Windows file share role on the instance. Connect the application server to the file share.'),
  (402, 99, 'Amazon Elastic File System(Amazon EFS) 파일 시스템을 생성하고, Lustre를 지원하도록 구성합니다. 파일 시스템을 원본 서버에 연결합니다. 애플리케이션 서버를 파일 시스템에 연결합니다.', 'Create an Amazon Elastic File System (Amazon EFS) file system, and configure it to support Lustre. Attach the file system to the origin server. Connect the application server to the file system.'),
  (403, 99, 'Amazon FSx for Lustre 파일 시스템을 생성합니다. 파일 시스템을 원본 서버에 연결합니다. 애플리케이션 서버를 파일 시스템에 연결합니다.', 'Create an Amazon FSx for Lustre file system. Attach the file system to the origin server. Connect the application server to the file system.'),
  (404, 100, 'AWS Secrets Manager에 암호화된 인증서용 시크릿을 생성합니다. 필요에 따라 인증서를 수동으로 업데이트합니다. IAM 세분화 권한을 사용하여 데이터 액세스를 제어합니다.', 'Create AWS Secrets Manager secrets for encrypted certificates. Manually update the certificates as needed. Control access to the data by using fine-grained IAM access.'),
  (405, 100, 'Python cryptography 라이브러리를 사용하는 AWS Lambda 함수를 생성하여 암호화 작업을 수행합니다. 함수를 Amazon S3 버킷에 저장합니다.', 'Create an AWS Lambda function that uses the Python cryptography library to receive and perform encryption operations. Store the function in an Amazon S3 bucket.'),
  (406, 100, 'AWS Key Management Service(AWS KMS) 고객 관리 키(CMK)를 생성합니다. EC2 역할이 KMS 키를 사용하여 암호화 작업을 수행하도록 허용합니다. 암호화된 데이터를 Amazon S3에 저장합니다.', 'Create an AWS Key Management Service (AWS KMS) customer managed key. Allow the EC2 role to use the KMS key for encryption operations. Store the encrypted data on Amazon S3.'),
  (407, 100, 'AWS Key Management Service(AWS KMS) 고객 관리 키(CMK)를 생성합니다. EC2 역할이 KMS 키를 사용하여 암호화 작업을 수행하도록 허용합니다. 암호화된 데이터를 Amazon Elastic Block Store(Amazon EBS) 볼륨에 저장합니다.', 'Create an AWS Key Management Service (AWS KMS) customer managed key. Allow the EC2 role to use the KMS key for encryption operations. Store the encrypted data on Amazon Elastic Block Store (Amazon EBS) volumes.'),
  (408, 101, '각 AZ의 퍼블릭 서브넷마다 하나씩 총 세 개의 NAT 게이트웨이를 생성합니다. 각 AZ용으로 비-VPC 트래픽을 해당 AZ의 NAT 게이트웨이로 전달하도록 프라이빗 라우트 테이블을 생성합니다.', 'Create three NAT gateways, one for each public subnet in each AZ. Create a private route table for each AZ that forwards non-VPC traffic to the NAT gateway in its AZ.'),
  (409, 101, '각 AZ의 프라이빗 서브넷마다 하나씩 총 세 개의 NAT 인스턴스를 생성합니다. 각 AZ용으로 비-VPC 트래픽을 해당 AZ의 NAT 인스턴스로 전달하도록 프라이빗 라우트 테이블을 생성합니다.', 'Create three NAT instances, one for each private subnet in each AZ. Create a private route table for each AZ that forwards non-VPC traffic to the NAT instance in its AZ.'),
  (410, 101, '프라이빗 서브넷 중 하나에 두 번째 인터넷 게이트웨이를 생성합니다. 프라이빗 서브넷의 라우트 테이블을 업데이트하여 비-VPC 트래픽을 프라이빗 인터넷 게이트웨이로 전달합니다.', 'Create a second internet gateway on one of the private subnets. Update the route table for the private subnets that forward non-VPC traffic to the private internet gateway.'),
  (411, 101, '퍼블릭 서브넷 중 하나에 이그레스 전용 인터넷 게이트웨이(egress-only IGW)를 생성합니다. 프라이빗 서브넷의 라우트 테이블을 업데이트하여 비-VPC 트래픽을 이 이그레스 전용 인터넷 게이트웨이로 전달합니다.', 'Create an egress-only internet gateway on one of the public subnets. Update the route table for the private subnets that forward non-VPC traffic to the egress-only Internet gateway.'),
  (412, 102, 'EC2 인스턴스를 EFS 파일 시스템과 동일한 가용 영역에 시작합니다.', 'Launch the EC2 instance into the same Availability Zone as the EFS file system.'),
  (413, 102, '온프레미스 데이터 센터에 AWS DataSync 에이전트를 설치합니다.', 'Install an AWS DataSync agent in the on-premises data center.'),
  (414, 102, 'EC2 인스턴스에 데이터를 위한 보조 Amazon Elastic Block Store(Amazon EBS) 볼륨을 생성합니다.', 'Create a secondary Amazon Elastic Block Store (Amazon EBS) volume on the EC2 instance for the data.'),
  (415, 102, '운영체제의 복사 명령을 수동으로 사용하여 데이터를 EC2 인스턴스로 푸시합니다.', 'Manually use an operating system copy command to push the data to the EC2 instance.'),
  (416, 102, 'AWS DataSync를 사용하여 온프레미스 SFTP 서버에 대한 적절한 위치 구성(location configuration)을 생성합니다.', 'Use AWS DataSync to create a suitable location configuration for the on-premises SFTP server.'),
  (417, 103, '작업을 편집하여 작업 북마크(job bookmarks)를 사용합니다.', 'Edit the job to use job bookmarks.'),
  (418, 103, '작업을 편집하여 데이터가 처리된 후 데이터를 삭제합니다.', 'Edit the job to delete data after the data is processed.'),
  (419, 103, '작업을 편집하여 NumberOfWorkers 필드를 1로 설정합니다.', 'Edit the job by setting the NumberOfWorkers field to 1.'),
  (420, 103, 'FindMatches 머신 러닝(ML) 변환을 사용합니다.', 'Use a FindMatches machine learning (ML) transform.'),
  (421, 104, 'AWS Shield Advanced를 사용하여 DDoS 공격을 차단합니다.', 'Use AWS Shield Advanced to stop the DDoS attack.'),
  (422, 104, 'Amazon GuardDuty를 구성하여 공격자를 자동으로 차단합니다.', 'Configure Amazon GuardDuty to automatically block the attackers.'),
  (423, 104, '정적 및 동적 콘텐츠 모두에 대해 웹사이트가 Amazon CloudFront를 사용하도록 구성합니다.', 'Configure the website to use Amazon CloudFront for both static and dynamic content.'),
  (424, 104, 'AWS Lambda 함수를 사용하여 공격자 IP 주소를 VPC 네트워크 ACL에 자동으로 추가합니다.', 'Use an AWS Lambda function to automatically add attacker IP addresses to VPC network ACLs.'),
  (425, 104, 'EC2 스팟 인스턴스를 대상 추적(타깃 트래킹) 스케일링 정책(80% CPU 사용률)과 함께 Auto Scaling 그룹으로 사용합니다.', 'Use EC2 Spot Instances in an Auto Scaling group with a target tracking scaling policy that is set to 80% CPU utilization.'),
  (426, 105, '함수에 실행 역할을 추가하고, 작업으로 lambda:InvokeFunction을, 주체(Principal)로 *을 지정합니다.', 'Add an execution role to the function with lambda:InvokeFunction as the action and * as the principal.'),
  (427, 105, '함수에 실행 역할을 추가하고, 작업으로 lambda:InvokeFunction을, 주체로 Service: lambda.amazonaws.com을 지정합니다.', 'Add an execution role to the function with lambda:InvokeFunction as the action and Service: lambda.amazonaws.com as the principal.'),
  (428, 105, '함수에 리소스 기반 정책을 추가하고, 작업으로 lambda:*을, 주체로 Service: events.amazonaws.com을 지정합니다.', 'Add a resource-based policy to the function with lambda:* as the action and Service: events.amazonaws.com as the principal.'),
  (429, 105, '함수에 리소스 기반 정책을 추가하고, 작업으로 lambda:InvokeFunction을, 주체로 Service: events.amazonaws.com을 지정합니다.', 'Add a resource-based policy to the function with lambda:InvokeFunction as the action and Service: events.amazonaws.com as the principal.'),
  (430, 106, '고객이 제공한 키로 서버측 암호화 (SSE-C)', 'Server-side encryption with customer-provided keys (SSE-C)'),
  (431, 106, 'Amazon S3가 관리하는 키로 서버측 암호화 (SSE-S3)', 'Server-side encryption with Amazon S3 managed keys (SSE-S3)'),
  (432, 106, 'AWS KMS 키로 서버측 암호화 (SSE-KMS) — 수동 회전', 'Server-side encryption with AWS KMS keys (SSE-KMS) with manual rotation'),
  (433, 106, 'AWS KMS 키로 서버측 암호화 (SSE-KMS) — 자동 회전', 'Server-side encryption with AWS KMS keys (SSE-KMS) with automatic rotation'),
  (434, 107, 'Amazon Athena와 Amazon S3를 사용합니다.', 'Use Amazon Athena with Amazon S3.'),
  (435, 107, 'Amazon API Gateway와 AWS Lambda를 사용합니다.', 'Use Amazon API Gateway with AWS Lambda.'),
  (436, 107, 'Amazon QuickSight와 Amazon Redshift를 사용합니다.', 'Use Amazon QuickSight with Amazon Redshift.'),
  (437, 107, 'Amazon API Gateway와 Amazon Kinesis Data Analytics를 사용합니다.', 'Use Amazon API Gateway with Amazon Kinesis Data Analytics.'),
  (438, 108, 'Amazon RDS 데이터베이스가 업데이트될 때 트리거되는 AWS Lambda 함수를 생성하여 정보를 Amazon Simple Queue Service (Amazon SQS) 큐에 전송하고, 대상 시스템이 이를 소비하도록 합니다.', 'Create an AWS Lambda function triggered when the database on Amazon RDS is updated to send the information to an Amazon Simple Queue Service (Amazon SQS) queue for the targets to consume.'),
  (439, 108, 'Amazon RDS 데이터베이스가 업데이트될 때 트리거되는 AWS Lambda 함수를 생성하여 정보를 Amazon Simple Queue Service (Amazon SQS) FIFO 큐에 전송하고, 대상 시스템이 이를 소비하도록 합니다.', 'Create an AWS Lambda function triggered when the database on Amazon RDS is updated to send the information to an Amazon Simple Queue Service (Amazon SQS) FIFO queue for the targets to consume.'),
  (440, 108, 'RDS 이벤트 알림을 구독하고, Amazon Simple Queue Service (Amazon SQS) 큐로 전송한 뒤 여러 Amazon Simple Notification Service (Amazon SNS) 주제로 팬아웃합니다. AWS Lambda 함수를 사용하여 대상 시스템을 업데이트합니다.', 'Subscribe to an RDS event notification and send an Amazon Simple Queue Service (Amazon SQS) queue fanned out to multiple Amazon Simple Notification Service (Amazon SNS) topics. Use AWS Lambda functions to update the targets.'),
  (441, 108, 'RDS 이벤트 알림을 구독하고, Amazon Simple Notification Service (Amazon SNS) 주제로 전송한 뒤 여러 Amazon Simple Queue Service (Amazon SQS) 큐로 팬아웃합니다. AWS Lambda 함수를 사용하여 대상 시스템을 업데이트합니다.', 'Subscribe to an RDS event notification and send an Amazon Simple Notification Service (Amazon SNS) topic fanned out to multiple Amazon Simple Queue Service (Amazon SQS) queues. Use AWS Lambda functions to update the targets.'),
  (442, 109, 'S3 Glacier 금고를 생성합니다. 객체에 대해 쓰기 한 번, 읽기 다회(WORM) 금고 잠금 정책을 적용합니다.', 'Create an S3 Glacier vault. Apply a write-once, read-many (WORM) vault lock policy to the objects.'),
  (443, 109, 'S3 Object Lock이 활성화된 S3 버킷을 생성합니다. 버전 관리를 활성화합니다. 유지 기간을 100년으로 설정합니다. 새로운 객체의 기본 유지 모드로 거버넌스 모드를 사용합니다.', 'Create an S3 bucket with S3 Object Lock enabled. Enable versioning. Set a retention period of 100 years. Use governance mode as the S3 bucket’s default retention mode for new objects.'),
  (444, 109, 'S3 버킷을 생성합니다. 객체를 수정하는 S3 API 이벤트를 추적하도록 AWS CloudTrail을 사용합니다. 알림이 발생하면 회사가 보유한 백업 버전에서 수정된 객체를 복원합니다.', 'Create an S3 bucket. Use AWS CloudTrail to track any S3 API events that modify the objects. Upon notification, restore the modified objects from any backup versions that the company has.'),
  (445, 109, 'S3 Object Lock이 활성화된 S3 버킷을 생성합니다. 버전 관리를 활성화합니다. 객체에 법적 보류(Legal Hold)를 추가합니다. 객체를 삭제해야 하는 사용자 IAM 정책에 s3:PutObjectLegalHold 권한을 추가합니다.', 'Create an S3 bucket with S3 Object Lock enabled. Enable versioning. Add a legal hold to the objects. Add the s3:PutObjectLegalHold permission to the IAM policies of users who need to delete the objects.'),
  (446, 110, '애플리케이션이 이미지를 S3 Glacier에 업로드하도록 구성합니다.', 'Configure the application to upload images to S3 Glacier.'),
  (447, 110, '웹 서버가 원본 이미지를 Amazon S3에 업로드하도록 구성합니다.', 'Configure the web server to upload the original images to Amazon S3.'),
  (448, 110, '각 사용자의 브라우저가 사전 서명된 URL을 사용하여 Amazon S3로 직접 이미지를 업로드하도록 애플리케이션을 구성합니다.', 'Configure the application to upload images directly from each user''s browser to Amazon S3 through the use of a presigned URL'),
  (449, 110, '이미지가 업로드될 때 AWS Lambda 함수를 호출하도록 S3 이벤트 알림을 구성합니다. 함수를 사용하여 이미지를 조정합니다.', 'Configure S3 Event Notifications to invoke an AWS Lambda function when an image is uploaded. Use the function to resize the image.'),
  (450, 110, '업로드된 이미지를 조정하기 위해 예약된 일정에 따라 AWS Lambda 함수를 호출하도록 Amazon EventBridge(CloudWatch Events) 규칙을 생성합니다.', 'Create an Amazon EventBridge (Amazon CloudWatch Events) rule that invokes an AWS Lambda function on a schedule to resize uploaded images.'),
  (451, 111, '다른 가용 영역에 두 번째 ActiveMQ 서버를 추가합니다. 다른 가용 영역에 추가 컨슈머 EC2 인스턴스를 추가합니다. MySQL 데이터베이스를 다른 가용 영역에 복제합니다.', 'Add a second ActiveMQ server to another Availability Zone. Add an additional consumer EC2 instance in another Availability Zone. Replicate the MySQL database to another Availability Zone.'),
  (452, 111, 'Amazon MQ를 사용하여 두 개의 가용 영역에 걸쳐 액티브/스탠바이 브로커를 구성합니다. 다른 가용 영역에 추가 컨슈머 EC2 인스턴스를 추가합니다. MySQL 데이터베이스를 다른 가용 영역에 복제합니다.', 'Use Amazon MQ with active/standby brokers configured across two Availability Zones. Add an additional consumer EC2 instance in another Availability Zone. Replicate the MySQL database to another Availability Zone.'),
  (453, 111, 'Amazon MQ를 사용하여 두 개의 가용 영역에 걸쳐 액티브/스탠바이 브로커를 구성합니다. 다른 가용 영역에 추가 컨슈머 EC2 인스턴스를 추가합니다. Amazon RDS for MySQL을 사용하고 Multi-AZ를 활성화합니다.', 'Use Amazon MQ with active/standby brokers configured across two Availability Zones. Add an additional consumer EC2 instance in another Availability Zone. Use Amazon RDS for MySQL with Multi-AZ enabled.'),
  (454, 111, 'Amazon MQ를 사용하여 두 개의 가용 영역에 걸쳐 액티브/스탠바이 브로커를 구성합니다. 두 개의 가용 영역에 걸쳐 컨슈머 EC2 인스턴스용 Auto Scaling 그룹을 추가합니다. Amazon RDS for MySQL을 사용하고 Multi-AZ를 활성화합니다.', 'Use Amazon MQ with active/standby brokers configured across two Availability Zones. Add an Auto Scaling group for the consumer EC2 instances across two Availability Zones. Use Amazon RDS for MySQL with Multi-AZ enabled.'),
  (455, 112, 'Amazon Elastic Container Service(Amazon ECS)에서 AWS Fargate를 사용하여 컨테이너화된 웹 애플리케이션을 실행합니다. 서비스 Auto Scaling을 사용합니다. Application Load Balancer를 사용하여 들어오는 요청을 분산합니다.', 'Use AWS Fargate on Amazon Elastic Container Service (Amazon ECS) to run the containerized web application with Service Auto Scaling. Use an Application Load Balancer to distribute the incoming requests.'),
  (456, 112, '두 개의 Amazon EC2 인스턴스를 사용하여 컨테이너화된 웹 애플리케이션을 호스팅합니다. Application Load Balancer를 사용하여 들어오는 요청을 분산합니다.', 'Use two Amazon EC2 instances to host the containerized web application. Use an Application Load Balancer to distribute the incoming requests.'),
  (457, 112, 'AWS Lambda를 사용하여 지원되는 언어 중 하나로 새 코드를 작성합니다. 요청 부하를 지원하기 위해 여러 Lambda 함수를 생성합니다. Amazon API Gateway를 Lambda 함수의 진입점으로 사용합니다.', 'Use AWS Lambda with a new code that uses one of the supported languages. Create multiple Lambda functions to support the load. Use Amazon API Gateway as an entry point to the Lambda functions.'),
  (458, 112, 'AWS ParallelCluster와 같은 고성능 컴퓨팅(HPC) 솔루션을 사용하여 들어오는 요청을 적절한 규모로 처리할 수 있는 HPC 클러스터를 구축합니다.', 'Use a high performance computing (HPC) solution such as AWS ParallelCluster to establish an HPC cluster that can process the incoming requests at the appropriate scale.'),
  (459, 113, 'AWS DataSync를 사용하여 데이터를 이동합니다. AWS Glue를 사용하여 사용자 정의 변환 작업을 생성합니다.', 'Use AWS DataSync to move the data. Create a custom transformation job by using AWS Glue.'),
  (460, 113, 'AWS Snowcone 장치를 주문하여 데이터를 이동합니다. 변환 애플리케이션을 장치에 배포합니다.', 'Order an AWS Snowcone device to move the data. Deploy the transformation application to the device.'),
  (461, 113, 'AWS Snowball Edge Storage Optimized 장치를 주문합니다. 데이터를 장치에 복사합니다. AWS Glue를 사용하여 사용자 정의 변환 작업을 생성합니다.', 'Order an AWS Snowball Edge Storage Optimized device. Copy the data to the device. Create a custom transformation job by using AWS Glue.'),
  (462, 113, 'Amazon EC2 컴퓨팅이 포함된 AWS Snowball Edge Storage Optimized 장치를 주문합니다. 데이터를 장치에 복사합니다. 변환 애플리케이션을 실행할 새 EC2 인스턴스를 AWS에 생성합니다.', 'Order an AWS Snowball Edge Storage Optimized device that includes Amazon EC2 compute. Copy the data to the device. Create a new EC2 instance on AWS to run the transformation application.'),
  (463, 114, 'AWS Lambda를 사용하여 사진을 처리합니다. 사진과 메타데이터를 DynamoDB에 저장합니다.', 'Use AWS Lambda to process the photos. Store the photos and metadata in DynamoDB.'),
  (464, 114, 'Amazon Kinesis Data Firehose를 사용하여 사진을 처리하고, 사진과 메타데이터를 저장합니다.', 'Use Amazon Kinesis Data Firehose to process the photos and to store the photos and metadata.'),
  (465, 114, 'AWS Lambda를 사용하여 사진을 처리합니다. 사진은 Amazon S3에 저장하고, DynamoDB는 메타데이터를 저장하는 용도로 유지합니다.', 'Use AWS Lambda to process the photos. Store the photos in Amazon S3. Retain DynamoDB to store the metadata.'),
  (466, 114, 'EC2 인스턴스 수를 3개로 늘립니다. 사진과 메타데이터를 저장하는 데 Provisioned IOPS SSD (io2) Amazon Elastic Block Store (Amazon EBS) 볼륨을 사용합니다.', 'Increase the number of EC2 instances to three. Use Provisioned IOPS SSD (io2) Amazon Elastic Block Store (Amazon EBS) volumes to store the photos and metadata.'),
  (467, 115, 'NAT 게이트웨이를 생성합니다. 퍼블릭 서브넷의 라우트 테이블을 구성하여 Amazon S3로의 트래픽을 NAT 게이트웨이를 통해 보내도록 설정합니다.', 'Create a NAT gateway. Configure the route table for the public subnets to send traffic to Amazon S3 through the NAT gateway.'),
  (468, 115, 'EC2 인스턴스의 보안 그룹을 구성하여 S3 프리픽스 목록으로의 트래픽만 허용되도록 아웃바운드 트래픽을 제한합니다.', 'Configure the security group for the EC2 instances to restrict outbound traffic so that only traffic to the S3 prefix list is permitted.'),
  (469, 115, 'EC2 인스턴스를 프라이빗 서브넷으로 이동합니다. Amazon S3용 VPC 엔드포인트를 생성하고, 해당 엔드포인트를 프라이빗 서브넷 라우트 테이블에 연결합니다.', 'Move the EC2 instances to private subnets. Create a VPC endpoint for Amazon S3, and link the endpoint to the route table for the private subnets.'),
  (470, 115, 'VPC에서 인터넷 게이트웨이를 제거합니다. AWS Direct Connect 연결을 설정하고, Amazon S3로의 트래픽을 Direct Connect를 통해 라우팅합니다.', 'Remove the internet gateway from the VPC. Set up an AWS Direct Connect connection, and route traffic to Amazon S3 over the Direct Connect connection.'),
  (471, 116, '웹사이트 앞에 Amazon CloudFront를 구성하여 HTTPS 기능을 사용합니다.', 'Configure Amazon CloudFront in front of the website to use HTTPS functionality.'),
  (472, 116, '웹사이트 앞에 AWS WAF 웹 ACL을 배포하여 HTTPS 기능을 제공합니다.', 'Deploy an AWS WAF web ACL in front of the website to provide HTTPS functionality.'),
  (473, 116, '웹사이트 콘텐츠를 관리하고 제공하기 위해 AWS Lambda 함수를 생성하고 배포합니다.', 'Create and deploy an AWS Lambda function to manage and serve the website content.'),
  (474, 116, '새 웹사이트를 생성하고 Amazon S3 버킷을 만듭니다. S3 버킷에서 정적 웹사이트 호스팅을 활성화하여 웹사이트를 배포합니다.', 'Create the new website and an Amazon S3 bucket. Deploy the website on the S3 bucket with static website hosting enabled.'),
  (475, 116, '새 웹사이트를 생성합니다. 애플리케이션 로드 밸런서 뒤에 Auto Scaling 그룹으로 Amazon EC2 인스턴스를 배포하여 웹사이트를 운영합니다.', 'Create the new website. Deploy the website by using an Auto Scaling group of Amazon EC2 instances behind an Application Load Balancer.'),
  (476, 117, 'CloudWatch Logs 구독을 구성하여 로그를 Amazon OpenSearch Service(Amazon Elasticsearch Service)로 스트리밍합니다.', 'Configure a CloudWatch Logs subscription to stream the logs to Amazon OpenSearch Service (Amazon Elasticsearch Service).'),
  (477, 117, 'AWS Lambda 함수를 생성합니다. 로그 그룹을 사용하여 함수를 호출하고 로그를 Amazon OpenSearch Service(Amazon Elasticsearch Service)에 기록합니다.', 'Create an AWS Lambda function. Use the log group to invoke the function to write the logs to Amazon OpenSearch Service (Amazon Elasticsearch Service).'),
  (478, 117, 'Amazon Kinesis Data Firehose 전달 스트림을 생성합니다. 로그 그룹을 전달 스트림의 소스로 구성하고 Amazon OpenSearch Service(Amazon Elasticsearch Service)를 전달 스트림의 대상으로 구성합니다.', 'Create an Amazon Kinesis Data Firehose delivery stream. Configure the log group as the delivery streams sources. Configure Amazon OpenSearch Service (Amazon Elasticsearch Service) as the delivery stream''s destination.'),
  (479, 117, '각 애플리케이션 서버에 Amazon Kinesis Agent를 설치하고 구성하여 로그를 Amazon Kinesis Data Streams로 전송합니다. Kinesis Data Streams를 구성하여 로그를 Amazon OpenSearch Service(Amazon Elasticsearch Service)로 전달합니다.', 'Install and configure Amazon Kinesis Agent on each application server to deliver the logs to Amazon Kinesis Data Streams. Configure Kinesis Data Streams to deliver the logs to Amazon OpenSearch Service (Amazon Elasticsearch Service).'),
  (480, 118, 'Amazon Elastic Block Store (Amazon EBS)', 'Amazon Elastic Block Store (Amazon EBS)'),
  (481, 118, 'Amazon Elastic File System (Amazon EFS)', 'Amazon Elastic File System (Amazon EFS)'),
  (482, 118, 'Amazon OpenSearch Service (Amazon Elasticsearch Service)', 'Amazon OpenSearch Service (Amazon Elasticsearch Service)'),
  (483, 118, 'Amazon S3', 'Amazon S3'),
  (484, 119, '두 리전에서 AWS WAF를 설정합니다. Regional 웹 ACL을 API 스테이지에 연결합니다.', 'Set up AWS WAF in both Regions. Associate Regional web ACLs with an API stage.'),
  (485, 119, '두 리전에서 AWS Firewall Manager를 설정합니다. AWS WAF 규칙을 중앙에서 구성합니다.', 'Set up AWS Firewall Manager in both Regions. Centrally configure AWS WAF rules.'),
  (486, 119, '두 리전에서 AWS Shield를 설정합니다. Regional 웹 ACL을 API 스테이지에 연결합니다.', 'Set up AWS Shield in bath Regions. Associate Regional web ACLs with an API stage.'),
  (487, 119, '한 리전에서 AWS Shield를 설정합니다. Regional 웹 ACL을 API 스테이지에 연결합니다.', 'Set up AWS Shield in one of the Regions. Associate Regional web ACLs with an API stage.'),
  (488, 120, 'Amazon Route 53 지리 위치(Geolocation) 라우팅 정책을 만들어 두 NLB 중 하나로 요청을 라우팅합니다. Amazon CloudFront 배포를 생성하고 Route 53 레코드를 배포의 오리진으로 사용합니다.', 'Create an Amazon Route 53 geolocation routing policy to route requests to one of the two NLBs. Create an Amazon CloudFront distribution. Use the Route 53 record as the distribution’s origin.'),
  (489, 120, 'AWS Global Accelerator의 표준 가속기를 생성합니다. us-west-2와 eu-west-1에 엔드포인트 그룹을 생성합니다. 두 NLB를 엔드포인트 그룹의 엔드포인트로 추가합니다.', 'Create a standard accelerator in AWS Global Accelerator. Create endpoint groups in us-west-2 and eu-west-1. Add the two NLBs as endpoints for the endpoint groups.'),
  (490, 120, '여섯 EC2 인스턴스에 Elastic IP 주소를 연결합니다. Amazon Route 53 지리 위치 라우팅 정책을 만들어 요청을 여섯 EC2 인스턴스 중 하나로 라우팅합니다. Amazon CloudFront 배포를 생성하고 Route 53 레코드를 배포의 오리진으로 사용합니다.', 'Attach Elastic IP addresses to the six EC2 instances. Create an Amazon Route 53 geolocation routing policy to route requests to one of the six EC2 instances. Create an Amazon CloudFront distribution. Use the Route 53 record as the distribution''s origin.'),
  (491, 120, '두 NLB를 두 개의 Application Load Balancer(ALB)로 교체합니다. Amazon Route 53 지연 시간(Latency) 라우팅 정책을 만들어 요청을 두 ALB 중 하나로 라우팅합니다. Amazon CloudFront 배포를 생성하고 Route 53 레코드를 배포의 오리진으로 사용합니다.', 'Replace the two NLBs with two Application Load Balancers (ALBs). Create an Amazon Route 53 latency routing policy to route requests to one of the two ALBs. Create an Amazon CloudFront distribution. Use the Route 53 record as the distribution’s origin.'),
  (492, 121, '최신 DB 스냅샷을 암호화된 사본으로 생성합니다. 암호화된 스냅샷을 복원하여 기존 DB 인스턴스를 교체합니다.', 'Encrypt a copy of the latest DB snapshot. Replace existing DB instance by restoring the encrypted snapshot.'),
  (493, 121, '새 암호화된 Amazon Elastic Block Store(EBS) 볼륨을 생성하고 스냅샷을 여기에 복사합니다. DB 인스턴스에서 암호화를 활성화합니다.', 'Create a new encrypted Amazon Elastic Block Store (Amazon EBS) volume and copy the snapshots to it. Enable encryption on the DB instance.'),
  (494, 121, '스냅샷을 복사하고 AWS Key Management Service(AWS KMS)를 사용하여 암호화를 활성화합니다. 암호화된 스냅샷을 사용하여 기존 DB 인스턴스를 복원합니다.', 'Copy the snapshots and enable encryption using AWS Key Management Service (AWS KMS) Restore encrypted snapshot to an existing DB instance.'),
  (495, 121, '스냅샷을 Amazon S3 버킷으로 복사하고 AWS Key Management Service(AWS KMS) 관리 키(SSE-KMS)를 사용하여 서버 측 암호화를 적용합니다.', 'Copy the snapshots to an Amazon S3 bucket that is encrypted using server-side encryption with AWS Key Management Service (AWS KMS) managed keys (SSE-KMS).'),
  (496, 122, '다단계 인증(MFA)을 사용하여 암호화 키를 보호합니다.', 'Use multi-factor authentication (MFA) to protect the encryption keys.'),
  (497, 122, 'AWS Key Management Service(AWS KMS)를 사용하여 암호화 키를 보호합니다.', 'Use AWS Key Management Service (AWS KMS) to protect the encryption keys.'),
  (498, 122, 'AWS Certificate Manager(ACM)를 사용하여 암호화 키를 생성, 저장, 할당합니다.', 'Use AWS Certificate Manager (ACM) to create, store, and assign the encryption keys.'),
  (499, 122, 'IAM 정책을 사용하여 암호화 키에 대한 액세스 권한을 가진 사용자의 범위를 제한합니다.', 'Use an IAM policy to limit the scope of users who have access permissions to protect the encryption keys.'),
  (500, 123, 'AWS Certificate Manager(ACM)를 사용하여 새 SSL 인증서를 생성합니다. ACM 인증서를 각 인스턴스에 설치합니다.', 'Create a new SSL certificate using AWS Certificate Manager (ACM). Install the ACM certificate on each instance.'),
  (501, 123, 'Amazon S3 버킷을 생성합니다. SSL 인증서를 S3 버킷으로 마이그레이션합니다. EC2 인스턴스가 SSL 종료를 위해 버킷을 참조하도록 구성합니다.', 'Create an Amazon S3 bucket Migrate the SSL certificate to the S3 bucket. Configure the EC2 instances to reference the bucket for SSL termination.'),
  (502, 123, '다른 EC2 인스턴스를 프록시 서버로 생성합니다. SSL 인증서를 새 인스턴스로 마이그레이션하고 기존 EC2 인스턴스로 연결을 전달하도록 구성합니다.', 'Create another EC2 instance as a proxy server. Migrate the SSL certificate to the new instance and configure it to direct connections to the existing EC2 instances.'),
  (503, 123, 'SSL 인증서를 AWS Certificate Manager(ACM)에 가져옵니다. ACM 인증서를 사용하도록 HTTPS 리스너가 있는 Application Load Balancer를 생성합니다.', 'Import the SSL certificate into AWS Certificate Manager (ACM). Create an Application Load Balancer with an HTTPS listener that uses the SSL certificate from ACM.'),
  (504, 124, 'EC2 스팟 인스턴스를 구현합니다.', 'Implement EC2 Spot Instances.'),
  (505, 124, 'EC2 예약 인스턴스를 구매합니다.', 'Purchase EC2 Reserved Instances.'),
  (506, 124, 'EC2 온디맨드 인스턴스를 구현합니다.', 'Implement EC2 On-Demand Instances.'),
  (507, 124, 'AWS Lambda에서 처리를 구현합니다.', 'Implement the processing on AWS Lambda.'),
  (508, 125, 'Auto Scaling 그룹을 사용하여 **EC2 인스턴스를 프라이빗 서브넷**에 시작합니다. RDS Multi-AZ DB 인스턴스를 프라이빗 서브넷에 배포합니다.', 'Use an Auto Scaling group to launch the EC2 instances in private subnets. Deploy an RDS Multi-AZ DB instance in private subnets.'),
  (509, 125, '두 개의 프라이빗 서브넷과 두 개의 NAT 게이트웨이를 두 개의 AZ에 걸쳐 구성합니다. 프라이빗 서브넷에 **Application Load Balancer**를 배포합니다.', 'Configure a VPC with two private subnets and two NAT gateways across two Availability Zones. Deploy an Application Load Balancer in the private subnets.'),
  (510, 125, 'Auto Scaling 그룹을 사용하여 **EC2 인스턴스를 퍼블릭 서브넷**에 시작합니다. RDS Multi-AZ DB 인스턴스를 프라이빗 서브넷에 배포합니다.', 'Use an Auto Scaling group to launch the EC2 instances in public subnets across two Availability Zones. Deploy an RDS Multi-AZ DB instance in private subnets.'),
  (511, 125, '하나의 퍼블릭 서브넷, 하나의 프라이빗 서브넷, 두 개의 NAT 게이트웨이를 두 개의 AZ에 걸쳐 구성합니다. 퍼블릭 서브넷에 **Application Load Balancer**를 배포합니다.', 'Configure a VPC with one public subnet, one private subnet, and two NAT gateways across two Availability Zones. Deploy an Application Load Balancer in the public subnet.'),
  (512, 125, '두 개의 퍼블릭 서브넷, 두 개의 프라이빗 서브넷, 두 개의 NAT 게이트웨이를 두 개의 AZ에 걸쳐 구성합니다. 퍼블릭 서브넷에 **Application Load Balancer**를 배포합니다.', 'Configure a VPC with two public subnets, two private subnets, and two NAT gateways across two Availability Zones. Deploy an Application Load Balancer in the public subnets.'),
  (513, 126, 'S3 수명 주기(Lifecycle) 정책을 설정하여 객체를 즉시 S3 Glacier Deep Archive로 전환합니다.', 'Set up an S3 Lifecycle policy to transition objects to S3 Glacier Deep Archive immediately.'),
  (514, 126, 'S3 수명 주기 정책을 설정하여 객체를 2년 후 S3 Glacier Deep Archive로 전환합니다.', 'Set up an S3 Lifecycle policy to transition objects to S3 Glacier Deep Archive after 2 years.'),
  (515, 126, 'S3 Intelligent-Tiering을 사용합니다. 아카이빙 옵션을 활성화하여 데이터가 S3 Glacier Deep Archive로 아카이브되도록 합니다.', 'Use S3 Intelligent-Tiering. Activate the archiving option to ensure that data is archived in S3 Glacier Deep Archive.'),
  (516, 126, 'S3 수명 주기 정책을 설정하여 객체를 즉시 S3 One Zone-Infrequent Access(S3 One Zone-IA)로 전환하고 2년 후 S3 Glacier Deep Archive로 전환합니다.', 'Set up an S3 Lifecycle policy to transition objects to S3 One Zone-Infrequent Access (S3 One Zone-IA) immediately and to S3 Glacier Deep Archive after 2 years.'),
  (517, 127, '최대 성능을 위해 Amazon EBS, 내구성 있는 데이터 저장을 위해 Amazon S3, 아카이브 스토리지를 위해 Amazon S3 Glacier', 'Amazon EBS for maximum performance, Amazon S3 for durable data storage, and Amazon S3 Glacier for archival storage'),
  (518, 127, '최대 성능을 위해 Amazon EBS, 내구성 있는 데이터 저장을 위해 Amazon EFS, 아카이브 스토리지를 위해 Amazon S3 Glacier', 'Amazon EBS for maximum performance, Amazon EFS for durable data storage, and Amazon S3 Glacier for archival storage'),
  (519, 127, '최대 성능을 위해 Amazon EC2 인스턴스 스토어, 내구성 있는 데이터 저장을 위해 Amazon EFS, 아카이브 스토리지를 위해 Amazon S3', 'Amazon EC2 instance store for maximum performance, Amazon EFS for durable data storage, and Amazon S3 for archival storage'),
  (520, 127, '최대 성능을 위해 Amazon EC2 인스턴스 스토어, 내구성 있는 데이터 저장을 위해 Amazon S3, 아카이브 스토리지를 위해 Amazon S3 Glacier', 'Amazon EC2 instance store for maximum performance, Amazon S3 for durable data storage, and Amazon S3 Glacier for archival storage'),
  (521, 128, '애플리케이션 컨테이너를 실행하기 위해 Amazon EC2 Auto Scaling 그룹에서 스팟 인스턴스를 사용합니다.', 'Use Spot Instances in an Amazon EC2 Auto Scaling group to run the application containers.'),
  (522, 128, 'Amazon Elastic Kubernetes Service(Amazon EKS) 관리형 노드 그룹에서 스팟 인스턴스를 사용합니다.', 'Use Spot Instances in an Amazon Elastic Kubernetes Service (Amazon EKS) managed node group.'),
  (523, 128, '애플리케이션 컨테이너를 실행하기 위해 Amazon EC2 Auto Scaling 그룹에서 온디맨드 인스턴스를 사용합니다.', 'Use On-Demand Instances in an Amazon EC2 Auto Scaling group to run the application containers.'),
  (524, 128, 'Amazon Elastic Kubernetes Service(Amazon EKS) 관리형 노드 그룹에서 온디맨드 인스턴스를 사용합니다.', 'Use On-Demand Instances in an Amazon Elastic Kubernetes Service (Amazon EKS) managed node group.'),
  (525, 129, 'PostgreSQL 데이터베이스를 Amazon Aurora로 마이그레이션합니다.', 'Migrate the PostgreSQL database to Amazon Aurora.'),
  (526, 129, '웹 애플리케이션을 Amazon EC2 인스턴스에서 호스팅되도록 마이그레이션합니다.', 'Migrate the web application to be hosted on Amazon EC2 instances.'),
  (527, 129, '웹 애플리케이션 콘텐츠에 대해 Amazon CloudFront 배포를 설정합니다.', 'Set up an Amazon CloudFront distribution for the web application content.'),
  (528, 129, '웹 애플리케이션과 PostgreSQL 데이터베이스 사이에 Amazon ElastiCache를 설정합니다.', 'Set up Amazon ElastiCache between the web application and the PostgreSQL database.'),
  (529, 129, '웹 애플리케이션을 AWS Fargate와 Amazon Elastic Container Service(Amazon ECS)에서 호스팅되도록 마이그레이션합니다.', 'Migrate the web application to be hosted on AWS Fargate with Amazon Elastic Container Service (Amazon ECS).'),
  (530, 130, '간단한 스케일링 정책을 사용하여 Auto Scaling 그룹을 동적으로 확장합니다.', 'Use a simple scaling policy to dynamically scale the Auto Scaling group.'),
  (531, 130, '대상 추적 정책(Target Tracking Policy)을 사용하여 Auto Scaling 그룹을 동적으로 확장합니다.', 'Use a target tracking policy to dynamically scale the Auto Scaling group.'),
  (532, 130, 'AWS Lambda 함수를 사용하여 Auto Scaling 그룹의 원하는 용량을 업데이트합니다.', 'Use an AWS Lambda function ta update the desired Auto Scaling group capacity.'),
  (533, 130, '예약된 스케일링 작업(Scheduled Scaling Actions)을 사용하여 Auto Scaling 그룹을 확장 및 축소합니다.', 'Use scheduled scaling actions to scale up and scale down the Auto Scaling group.'),
  (534, 131, '각 S3 버킷에 대해 개별 정책을 작성하여 CloudFront 접근만 읽기 권한을 부여합니다.', 'Write individual policies for each S3 bucket to grant read permission for only CloudFront access.'),
  (535, 131, 'IAM 사용자를 생성합니다. 해당 사용자에게 S3 버킷의 객체에 대한 읽기 권한을 부여합니다. CloudFront에 사용자를 할당합니다.', 'Create an IAM user. Grant the user read permission to objects in the S3 bucket. Assign the user to CloudFront.'),
  (536, 131, 'CloudFront 배포 ID를 Principal로, 대상 S3 버킷을 ARN으로 지정하는 S3 버킷 정책을 작성합니다.', 'Write an S3 bucket policy that assigns the CloudFront distribution ID as the Principal and assigns the target S3 bucket as the Amazon Resource Name (ARN).'),
  (537, 131, '원본 액세스 ID(OAI)를 생성합니다. OAI를 CloudFront 배포에 할당합니다. S3 버킷 권한을 구성하여 오직 OAI만 읽기 권한을 가지도록 합니다.', 'Create an origin access identity (OAI). Assign the OAI to the CloudFront distribution. Configure the S3 bucket permissions so that only the OAI has read permission.'),
  (538, 132, 'Amazon CloudFront 및 Amazon S3', 'Amazon CloudFront and Amazon S3'),
  (539, 132, 'AWS Lambda 및 Amazon DynamoDB', 'AWS Lambda and Amazon DynamoDB'),
  (540, 132, 'Application Load Balancer와 Amazon EC2 Auto Scaling', 'Application Load Balancer with Amazon EC2 Auto Scaling'),
  (541, 132, 'Amazon Route 53과 내부 Application Load Balancers', 'Amazon Route 53 with internal Application Load Balancers'),
  (542, 133, 'Oracle 데이터베이스를 Amazon EC2 인스턴스로 마이그레이션합니다. 다른 AWS 리전으로 데이터베이스 복제를 설정합니다.', 'Migrate the Oracle database to an Amazon EC2 instance. Set up database replication to a different AWS Region.'),
  (543, 133, 'Oracle 데이터베이스를 Amazon RDS for Oracle로 마이그레이션합니다. 자동화된 교차 리전 백업(Cross-Region automated backups)을 활성화하여 스냅샷을 다른 AWS 리전으로 복제합니다.', 'Migrate the Oracle database to Amazon RDS for Oracle. Activate Cross-Region automated backups to replicate the snapshots to another AWS Region.'),
  (544, 133, 'Oracle 데이터베이스를 Amazon RDS Custom for Oracle로 마이그레이션합니다. 해당 데이터베이스에 대해 다른 AWS 리전에 리드 리플리카(read replica)를 생성합니다.', 'Migrate the Oracle database to Amazon RDS Custom for Oracle. Create a read replica for the database in another AWS Region.'),
  (545, 133, 'Oracle 데이터베이스를 Amazon RDS for Oracle로 마이그레이션합니다. 다른 가용 영역(Availability Zone)에 대기(standby) 데이터베이스를 생성합니다.', 'Migrate the Oracle database to Amazon RDS for Oracle. Create a standby database in another Availability Zone.'),
  (546, 134, '새 S3 버킷을 생성합니다. 데이터를 새 S3 버킷에 로드합니다. S3 교차 리전 복제(CRR)를 사용하여 암호화된 객체를 다른 리전의 S3 버킷으로 복제합니다. AWS KMS 다중 리전 키(SSE-KMS)를 사용한 서버측 암호화(SSE-KMS)를 사용합니다. Amazon Athena를 사용하여 데이터를 쿼리합니다.', 'Create a new S3 bucket. Load the data into the new S3 bucket. Use S3 Cross-Region Replication (CRR) to replicate encrypted objects to an S3 bucket in another Region. Use server-side encryption with AWS KMS multi-Region kays (SSE-KMS). Use Amazon Athena to query the data.'),
  (547, 134, '새 S3 버킷을 생성합니다. 데이터를 새 S3 버킷에 로드합니다. S3 교차 리전 복제(CRR)를 사용하여 암호화된 객체를 다른 리전의 S3 버킷으로 복제합니다. AWS KMS 다중 리전 키(SSE-KMS)를 사용한 서버측 암호화(SSE-KMS)를 사용합니다. Amazon RDS를 사용하여 데이터를 쿼리합니다.', 'Create a new S3 bucket. Load the data into the new S3 bucket. Use S3 Cross-Region Replication (CRR) to replicate encrypted objects to an S3 bucket in another Region. Use server-side encryption with AWS KMS multi-Region keys (SSE-KMS). Use Amazon RDS to query the data.'),
  (548, 134, '기존 S3 버킷에 데이터를 로드합니다. S3 교차 리전 복제(CRR)를 사용하여 암호화된 객체를 다른 리전의 S3 버킷으로 복제합니다. Amazon S3 관리형 암호화 키(SSE-S3)를 사용한 서버측 암호화(SSE-S3)를 사용합니다. Amazon Athena를 사용하여 데이터를 쿼리합니다.', 'Load the data into the existing S3 bucket. Use S3 Cross-Region Replication (CRR) to replicate encrypted objects to an S3 bucket in another Region. Use server-side encryption with Amazon S3 managed encryption keys (SSE-S3). Use Amazon Athena to query the data.'),
  (549, 134, '기존 S3 버킷에 데이터를 로드합니다. S3 교차 리전 복제(CRR)를 사용하여 암호화된 객체를 다른 리전의 S3 버킷으로 복제합니다. Amazon S3 관리형 암호화 키(SSE-S3)를 사용한 서버측 암호화(SSE-S3)를 사용합니다. Amazon RDS를 사용하여 데이터를 쿼리합니다.', 'Load the data into the existing S3 bucket. Use S3 Cross-Region Replication (CRR) to replicate encrypted objects to an S3 bucket in another Region. Use server-side encryption with Amazon S3 managed encryption keys (SSE-S3). Use Amazon RDS to query the data.'),
  (550, 135, '회사의 VPC와 공급업체의 VPC 사이에 VPC 피어링 연결을 생성합니다. 대상 서비스로 연결되도록 라우트 테이블을 업데이트합니다.', 'Create a VPC peering connection between the company''s VPC and the provider''s VPC. Update the route table to connect to the target service.'),
  (551, 135, '공급업체에 자체 VPC에 가상 사설 게이트웨이(virtual private gateway)를 생성하도록 요청합니다. AWS PrivateLink를 사용하여 대상 서비스에 연결합니다.', 'Ask the provider to create a virtual private gateway in its VPC. Use AWS PrivateLink to connect to the target service.'),
  (552, 135, '회사 VPC의 퍼블릭 서브넷에 NAT 게이트웨이를 생성합니다. 대상 서비스로 연결되도록 라우트 테이블을 업데이트합니다.', 'Create a NAT gateway in a public subnet of the company’s VPUpdate the route table to connect to the target service.'),
  (553, 135, '공급업체에 대상 서비스에 대한 VPC 엔드포인트를 생성하도록 요청합니다. AWS PrivateLink를 사용하여 대상 서비스에 연결합니다.', 'Ask the provider to create a VPC endpoint for the target service. Use AWS PrivateLink to connect to the target service.'),
  (554, 136, '지속적인 복제 작업을 생성한다.', 'Create an ongoing replication task.'),
  (555, 136, '온프레미스 데이터베이스의 데이터베이스 백업을 생성한다.', 'Create a database backup of the on-premises database.'),
  (556, 136, 'AWS Database Migration Service (AWS DMS) 복제 서버를 생성한다.', 'Create an AWS Database Migration Service (AWS DMS) replication server.'),
  (557, 136, 'AWS Schema Conversion Tool (AWS SCT)을 사용하여 데이터베이스 스키마를 변환한다.', 'Convert the database schema by using the AWS Schema Conversion Tool (AWS SCT).'),
  (558, 136, 'Amazon EventBridge(Amazon CloudWatch Events) 규칙을 생성하여 데이터베이스 동기화를 모니터링한다.', 'Create an Amazon EventBridge (Amazon CloudWatch Events) rule to monitor the database synchronization.'),
  (559, 137, '회사의 이메일 서버를 구성하여 AWS 계정 루트 사용자 이메일 주소로 전송된 알림 이메일 메시지를 조직의 모든 사용자에게 전달한다.', 'Configure the company’s email server to forward notification email messages that are sent to the AWS account root user email address to all users in the organization.'),
  (560, 137, '모든 AWS 계정 루트 사용자 이메일 주소를 몇 명의 관리자가 알림에 응답할 수 있도록 하는 배포 그룹(distribution list)으로 구성한다.
AWS Organizations 콘솔 또는 프로그래밍 방식으로 AWS 계정 대체 연락처(alternate contacts)를 구성한다.', 'Configure all AWS account root user email addresses as distribution lists that go to a few administrators who can respond to alerts. Configure AWS account alternate contacts in the AWS Organizations console or programmatically.'),
  (561, 137, '모든 AWS 계정 루트 사용자 이메일 메시지를 한 명의 관리자가 수신하도록 구성한다.
해당 관리자가 알림을 모니터링하고 적절한 그룹에 전달한다.', 'Configure all AWS account root user email messages to be sent to one administrator who is responsible for monitoring alerts and forwarding those alerts to the appropriate groups.'),
  (562, 137, '기존 모든 AWS 계정과 새로 생성된 모든 계정이 동일한 루트 사용자 이메일 주소를 사용하도록 구성한다.
AWS Organizations 콘솔 또는 프로그래밍 방식으로 AWS 계정 대체 연락처(alternate contacts)를 구성한다.', 'Configure all existing AWS accounts and all newly created accounts to use the same root user email address. Configure AWS account alternate contacts in the AWS Organizations console or programmatically.'),
  (563, 138, '큐를 Amazon MQ의 활성/대기(액티브/스탠바이)로 이중화된 RabbitMQ 인스턴스 쌍으로 마이그레이션합니다. 애플리케이션을 호스트하는 EC2 인스턴스에 대해 Multi-AZ Auto Scaling 그룹을 생성합니다. PostgreSQL 데이터베이스를 호스트하는 EC2 인스턴스에 대해 또 다른 Multi-AZ Auto Scaling 그룹을 생성합니다.', 'Migrate the queue to a redundant pair (active/standby) of RabbitMQ instances on Amazon MQ. Create a Multi-AZ Auto Scaling group for EC2 instances that host the application. Create another Multi-AZ Auto Scaling group for EC2 instances that host the PostgreSQL database.'),
  (564, 138, '큐를 Amazon MQ의 활성/대기(액티브/스탠바이)로 이중화된 RabbitMQ 인스턴스 쌍으로 마이그레이션합니다. 애플리케이션을 호스트하는 EC2 인스턴스에 대해 Multi-AZ Auto Scaling 그룹을 생성합니다. 데이터베이스를 Amazon RDS for PostgreSQL의 Multi-AZ 배포로 마이그레이션합니다.', 'Migrate the queue to a redundant pair (active/standby) of RabbitMQ instances on Amazon MQ. Create a Multi-AZ Auto Scaling group for EC2 instances that host the application. Migrate the database to run on a Multi-AZ deployment of Amazon RDS for PostgreSQL.'),
  (565, 138, '큐를 호스트하는 EC2 인스턴스에 대해 Multi-AZ Auto Scaling 그룹을 생성합니다. 애플리케이션을 호스트하는 EC2 인스턴스에 대해 또 다른 Multi-AZ Auto Scaling 그룹을 생성합니다. 데이터베이스를 Amazon RDS for PostgreSQL의 Multi-AZ 배포로 마이그레이션합니다.', 'Create a Multi-AZ Auto Scaling group for EC2 instances that host the RabbitMQ queue. Create another Multi-AZ Auto Scaling group for EC2 instances that host the application. Migrate the database to run on a Multi-AZ deployment of Amazon RDS for PostgreSQL.'),
  (566, 138, '큐를 호스트하는 EC2 인스턴스에 대해 Multi-AZ Auto Scaling 그룹을 생성합니다. 애플리케이션을 호스트하는 EC2 인스턴스에 대해 또 다른 Multi-AZ Auto Scaling 그룹을 생성합니다. PostgreSQL 데이터베이스를 호스트하는 EC2 인스턴스에 대해 세 번째 Multi-AZ Auto Scaling 그룹을 생성합니다.', 'Create a Multi-AZ Auto Scaling group for EC2 instances that host the RabbitMQ queue. Create another Multi-AZ Auto Scaling group for EC2 instances that host the application. Create a third Multi-AZ Auto Scaling group for EC2 instances that host the PostgreSQL database'),
  (567, 139, '파일을 분석 S3 버킷으로 복사하도록 Lambda 함수를 생성합니다. 분석 S3 버킷에 대한 S3 이벤트 알림을 생성합니다. 이벤트 알림의 대상으로 Lambda 및 SageMaker Pipelines를 구성합니다. 이벤트 유형으로 s3:ObjectCreated:Put을 구성합니다.', 'Create a Lambda function to copy the files to the analysis S3 bucket. Create an S3 event notification for the analysis S3 bucket. Configure Lambda and SageMaker Pipelines as destinations of the event notification. Configure s3:ObjectCreated:Put as the event type.'),
  (568, 139, '파일을 분석 S3 버킷으로 복사하도록 Lambda 함수를 생성합니다. 분석 S3 버킷이 Amazon EventBridge(Amazon CloudWatch Events)로 이벤트 알림을 보내도록 구성합니다. EventBridge(CloudWatch Events)에서 ObjectCreated 규칙을 구성합니다. 규칙의 대상에 Lambda 및 SageMaker Pipelines를 구성합니다.', 'Create a Lambda function to copy the files to the analysis S3 bucket. Configure the analysis S3 bucket to send event notifications to Amazon EventBridge (Amazon CloudWatch Events). Configure an ObjectCreated rule in EventBridge (CloudWatch Events). Configure Lambda and SageMaker Pipelines as targets for the rule.'),
  (569, 139, 'S3 버킷 간에 S3 복제를 구성합니다. 분석 S3 버킷에 대한 S3 이벤트 알림을 생성합니다. 이벤트 알림의 대상으로 Lambda 및 SageMaker Pipelines를 구성합니다. 이벤트 유형으로 s3:ObjectCreated:Put을 구성합니다.', 'Configure S3 replication between the S3 buckets. Create an S3 event notification for the analysis S3 bucket. Configure Lambda and SageMaker Pipelines as destinations of the event notification. Configure s3:ObjectCreated:Put as the event type.'),
  (570, 139, 'S3 버킷 간에 S3 복제를 구성합니다. 분석 S3 버킷이 Amazon EventBridge(Amazon CloudWatch Events)로 이벤트 알림을 보내도록 구성합니다. EventBridge(CloudWatch Events)에서 ObjectCreated 규칙을 구성합니다. 규칙의 대상에 Lambda 및 SageMaker Pipelines를 구성합니다.', 'Configure S3 replication between the S3 buckets. Configure the analysis S3 bucket to send event notifications to Amazon EventBridge (Amazon CloudWatch Events). Configure an ObjectCreated rule in EventBridge (CloudWatch Events). Configure Lambda and SageMaker Pipelines as targets for the rule.'),
  (571, 140, '데이터 수집 레이어에 Spot 인스턴스를 사용합니다.', 'Use Spot Instances for the data ingestion layer'),
  (572, 140, '데이터 수집 레이어에 온디맨드 인스턴스를 사용합니다.', 'Use On-Demand Instances for the data ingestion layer'),
  (573, 140, '프런트 엔드와 API 계층에 대해 1년 Compute Savings Plan을 구매합니다.', 'Purchase a 1-year Compute Savings Plan for the front end and API layer.'),
  (574, 140, '데이터 수집 레이어에 대해 1년 All Upfront 예약 인스턴스를 구매합니다.', 'Purchase 1-year All Upfront Reserved instances for the data ingestion layer.'),
  (575, 140, '프런트 엔드와 API 계층에 대해 1년 EC2 인스턴스 Savings Plan을 구매합니다.', 'Purchase a 1-year EC2 instance Savings Plan for the front end and API layer.'),
  (576, 141, '애플리케이션 스택을 단일 AWS 리전에 배포합니다. ALB를 오리진으로 지정하여 모든 정적 및 동적 콘텐츠를 제공하기 위해 Amazon CloudFront를 사용합니다.', 'Deploy the application stack in a single AWS Region. Use Amazon CloudFront to serve all static and dynamic content by specifying the ALB as an origin.'),
  (577, 141, '애플리케이션 스택을 두 개의 AWS 리전에 배포합니다. Amazon Route 53 지연 시간(latency) 라우팅 정책을 사용하여 가장 가까운 리전의 ALB에서 모든 콘텐츠를 제공합니다.', 'Deploy the application stack in two AWS Regions. Use an Amazon Route 53 latency routing policy to serve all content from the ALB in the closest Region.'),
  (578, 141, '애플리케이션 스택을 단일 AWS 리전에 배포합니다. Amazon CloudFront를 사용하여 정적 콘텐츠를 제공하고 동적 콘텐츠는 ALB에서 직접 제공합니다.', 'Deploy the application stack in a single AWS Region. Use Amazon CloudFront to serve the static content. Serve the dynamic content directly from the ALB.'),
  (579, 141, '애플리케이션 스택을 두 개의 AWS 리전에 배포합니다. Amazon Route 53 지리 위치(geolocation) 라우팅 정책을 사용하여 가장 가까운 리전의 ALB에서 모든 콘텐츠를 제공합니다.', 'Deploy the application stack in two AWS Regions. Use an Amazon Route 53 geolocation routing policy to serve all content from the ALB in the closest Region.'),
  (580, 142, 'Amazon Route 53을 구성하여 요청을 Application Load Balancer로 전달합니다. AWS Lambda를 AWS Application Auto Scaling에서 애플리케이션에 사용합니다.', 'Configure Amazon Route 53 to forward requests to an Application Load Balancer. Use AWS Lambda for the application in AWS Application Auto Scaling.'),
  (581, 142, 'Amazon CloudFront를 구성하여 요청을 Network Load Balancer로 전달합니다. AWS Lambda를 AWS Application Auto Scaling 그룹에서 애플리케이션에 사용합니다.', 'Configure Amazon CloudFront to forward requests to a Network Load Balancer. Use AWS Lambda for the application in an AWS Application Auto Scaling group.'),
  (582, 142, 'AWS Global Accelerator를 구성하여 요청을 Network Load Balancer로 전달합니다. EC2 인스턴스를 EC2 Auto Scaling 그룹에서 애플리케이션에 사용합니다.', 'Configure AWS Global Accelerator to forward requests to a Network Load Balancer. Use Amazon EC2 instances for the application in an EC2 Auto Scaling group.'),
  (583, 142, 'Amazon API Gateway를 구성하여 요청을 Application Load Balancer로 전달합니다. EC2 인스턴스를 EC2 Auto Scaling 그룹에서 애플리케이션에 사용합니다.', 'Configure Amazon API Gateway to forward requests to an Application Load Balancer. Use Amazon EC2 instances for the application in an EC2 Auto Scaling group.'),
  (584, 143, '애플리케이션을 AWS Lambda에 호스팅합니다. 애플리케이션을 Amazon API Gateway와 통합합니다.', 'Host the application on AWS Lambda. Integrate the application with Amazon API Gateway.'),
  (585, 143, '애플리케이션을 AWS Amplify에 호스팅합니다. 애플리케이션을 Amazon API Gateway API에 연결하고, 해당 API를 AWS Lambda와 통합합니다.', 'Host the application with AWS Amplify. Connect the application to an Amazon API Gateway API that is integrated with AWS Lambda.'),
  (586, 143, '애플리케이션을 Amazon EC2 인스턴스에 호스팅합니다. EC2 인스턴스를 대상으로 하는 Auto Scaling 그룹과 함께 Application Load Balancer를 설정합니다.', 'Host the application on Amazon EC2 instances. Set up an Application Load Balancer with EC2 instances in an Auto Scaling group as targets.'),
  (587, 143, '애플리케이션을 Amazon Elastic Container Service(Amazon ECS)에 호스팅합니다. Amazon ECS를 대상으로 하는 Application Load Balancer를 설정합니다.', 'Host the application on Amazon Elastic Container Service (Amazon ECS). Set up an Application Load Balancer with Amazon ECS as the target.'),
  (588, 144, '월간 보고서를 Amazon Redshift로 마이그레이션합니다.', 'Migrate the monthly reporting to Amazon Redshift.'),
  (589, 144, '월간 보고서를 Aurora Replica로 마이그레이션합니다.', 'Migrate the monthly reporting to an Aurora Replica.'),
  (590, 144, 'Aurora 데이터베이스를 더 큰 인스턴스 클래스로 마이그레이션합니다.', 'Migrate the Aurora database to a larger instance class.'),
  (591, 144, 'Aurora 인스턴스에서 Provisioned IOPS를 증가시킵니다.', 'Increase the Provisioned IOPS on the Aurora instance.'),
  (592, 145, '데이터베이스를 Amazon RDS for MySQL DB 인스턴스로 마이그레이션합니다. 웹 애플리케이션의 AMI를 생성합니다. 이 AMI를 사용하여 두 번째 EC2 온디맨드 인스턴스를 시작합니다. Application Load Balancer를 사용하여 각 EC2 인스턴스로 부하를 분산합니다.', 'Migrate the database to an Amazon RDS for MySQL DB instance. Create an AMI of the web application. Use the AMI to launch a second EC2 On-Demand Instance. Use an Application Load Balancer to distribute the load to each EC2 instance.'),
  (593, 145, '데이터베이스를 Amazon RDS for MySQL DB 인스턴스로 마이그레이션합니다. 웹 애플리케이션의 AMI를 생성합니다. 이 AMI를 사용하여 두 번째 EC2 온디맨드 인스턴스를 시작합니다. Amazon Route 53 가중 라우팅을 사용하여 두 EC2 인스턴스에 부하를 분산합니다.', 'Migrate the database to an Amazon RDS for MySQL DB instance. Create an AMI of the web application. Use the AMI to launch a second EC2 On-Demand Instance. Use Amazon Route 53 weighted routing to distribute the load across the two EC2 instances.'),
  (594, 145, '데이터베이스를 Amazon Aurora MySQL DB 인스턴스로 마이그레이션합니다. AWS Lambda 함수를 생성하여 EC2 인스턴스를 중지하고 인스턴스 유형을 변경합니다. CPU 사용률이 75%를 초과하면 Lambda 함수를 호출하도록 Amazon CloudWatch 경보를 생성합니다.', 'Migrate the database to an Amazon Aurora MySQL DB instance. Create an AWS Lambda function to stop the EC2 instance and change the instance type. Create an Amazon CloudWatch alarm to invoke the Lambda function when CPU utilization surpasses 75%.'),
  (595, 145, '데이터베이스를 Amazon Aurora MySQL DB 인스턴스로 마이그레이션합니다. 웹 애플리케이션의 AMI를 생성합니다. AMI를 런치 템플릿에 적용합니다. 런치 템플릿을 사용하여 Auto Scaling 그룹을 생성합니다. 런치 템플릿이 Spot Fleet을 사용하도록 구성합니다. Auto Scaling 그룹에 Application Load Balancer를 연결합니다.', 'Migrate the database to an Amazon Aurora MySQL DB instance. Create an AMI of the web application. Apply the AMI to a launch template. Create an Auto Scaling group with the launch template Configure the launch template to use a Spot Fleet. Attach an Application Load Balancer to the Auto Scaling group.'),
  (596, 146, '전체 워크로드에 대해 Spot 인스턴스를 사용합니다.', 'Use Spot Instances for the entire workload.'),
  (597, 146, '기본 사용량에 대해 Reserved 인스턴스를 사용합니다. 애플리케이션이 필요로 하는 추가 용량에는 Spot 인스턴스를 사용합니다.', 'Use Reserved Instances for the baseline level of usage. Use Spot instances for any additional capacity that the application needs.'),
  (598, 146, '기본 사용량에 대해 On-Demand 인스턴스를 사용합니다. 애플리케이션이 필요로 하는 추가 용량에는 Spot 인스턴스를 사용합니다.', 'Use On-Demand Instances for the baseline level of usage. Use Spot Instances for any additional capacity that the application needs.'),
  (599, 146, '기본 사용량에 대해 Dedicated 인스턴스를 사용합니다. 애플리케이션이 필요로 하는 추가 용량에는 On-Demand 인스턴스를 사용합니다.', 'Use Dedicated Instances for the baseline level of usage. Use On-Demand Instances for any additional capacity that the application needs.'),
  (600, 147, '로그를 Amazon S3에 저장합니다. AWS Backup을 사용하여 1개월보다 오래된 로그를 S3 Glacier Deep Archive로 이동합니다.', 'Store the logs in Amazon S3. Use AWS Backup to move logs more than 1 month old to S3 Glacier Deep Archive.'),
  (601, 147, '로그를 Amazon S3에 저장합니다. S3 수명 주기(S3 Lifecycle) 정책을 사용하여 1개월보다 오래된 로그를 S3 Glacier Deep Archive로 이동합니다.', 'Store the logs in Amazon S3. Use S3 Lifecycle policies to move logs more than 1 month old to S3 Glacier Deep Archive.'),
  (602, 147, '로그를 Amazon CloudWatch Logs에 저장합니다. AWS Backup을 사용하여 1개월보다 오래된 로그를 S3 Glacier Deep Archive로 이동합니다.', 'Store the logs in Amazon CloudWatch Logs. Use AWS Backup to move logs more than 1 month old to S3 Glacier Deep Archive.'),
  (603, 147, '로그를 Amazon CloudWatch Logs에 저장합니다. Amazon S3 수명 주기(S3 Lifecycle) 정책을 사용하여 1개월보다 오래된 로그를 S3 Glacier Deep Archive로 이동합니다.', 'Store the logs in Amazon CloudWatch Logs. Use Amazon S3 Lifecycle policies to move logs more than 1 month old to S3 Glacier Deep Archive.'),
  (604, 148, 'Lambda 함수를 여러 가용 영역에 배포하도록 구성한다.', 'Configure the Lambda function for deployment across multiple Availability Zones.'),
  (605, 148, 'Lambda 함수의 구성을 수정하여 함수의 CPU 및 메모리 할당을 늘린다.', 'Modify the Lambda function''s configuration to increase the CPU and memory allocations for the function.'),
  (606, 148, 'SNS 주제의 재시도 전략을 구성하여 재시도 횟수와 재시도 간 대기 시간을 모두 늘린다.', 'Configure the SNS topic’s retry strategy to increase both the number of retries and the wait time between retries.'),
  (607, 148, 'Amazon Simple Queue Service (Amazon SQS) 큐를 실패 시 대상으로 구성한다. Lambda 함수가 큐의 메시지를 처리하도록 수정한다.', 'Configure an Amazon Simple Queue Service (Amazon SQS) queue as the on-failure destination. Modify the Lambda function to process messages in the queue.'),
  (608, 149, 'Amazon Simple Queue Service (Amazon SQS) FIFO 큐를 생성하여 메시지를 보관한다. AWS Lambda 함수를 설정하여 큐에서 메시지를 처리한다.', 'Create an Amazon Simple Queue Service (Amazon SQS) FIFO queue to hold messages. Set up an AWS Lambda function to process messages from the queue.'),
  (609, 149, 'Amazon Simple Notification Service (Amazon SNS) 주제를 생성하여 페이로드가 포함된 알림을 전달한다. AWS Lambda 함수를 구독자로 구성한다.', 'Create an Amazon Simple Notification Service (Amazon SNS) topic to deliver notifications containing payloads to process. Configure an AWS Lambda function as a subscriber.'),
  (610, 149, 'Amazon Simple Queue Service (Amazon SQS) 표준 큐를 생성하여 메시지를 보관한다. AWS Lambda 함수를 설정하여 큐에서 메시지를 독립적으로 처리한다.', 'Create an Amazon Simple Queue Service (Amazon SQS) standard queue to hold messages. Set up an AWS Lambda function to process messages from the queue independently.'),
  (611, 149, 'Amazon Simple Notification Service (Amazon SNS) 주제를 생성하여 페이로드가 포함된 알림을 전달한다. Amazon Simple Queue Service (Amazon SQS) 큐를 구독자로 구성한다.', 'Create an Amazon Simple Notification Service (Amazon SNS) topic to deliver notifications containing payloads to process. Configure an Amazon Simple Queue Service (Amazon SQS) queue as a subscriber.'),
  (612, 150, '가능한 경우 Amazon CloudWatch 복합(Composite) 알람을 생성합니다.', 'Create Amazon CloudWatch composite alarms where possible.'),
  (613, 150, 'Amazon CloudWatch 대시보드를 생성하여 메트릭을 시각화하고 문제에 빠르게 대응합니다.', 'Create Amazon CloudWatch dashboards to visualize the metrics and react to issues quickly.'),
  (614, 150, '애플리케이션을 모니터링하고 알람을 발생시키기 위해 Amazon CloudWatch Synthetics 캐너리를 생성합니다.', 'Create Amazon CloudWatch Synthetics canaries to monitor the application and raise an alarm.'),
  (615, 150, '가능한 경우 여러 메트릭 임계값을 가진 단일 Amazon CloudWatch 단일 메트릭 알람을 생성합니다.', 'Create single Amazon CloudWatch metric alarms with multiple metric thresholds where possible.'),
  (616, 151, 'AWS Control Tower를 사용하여 데이터 레지던시 가드레일을 구현하여 인터넷 액세스를 거부하고 ap-northeast-3을 제외한 모든 AWS 리전으로의 액세스를 거부합니다.', 'Use AWS Control Tower to implement data residency guardrails to deny internet access and deny access to all AWS Regions except ap-northeast-3.'),
  (617, 151, 'AWS WAF의 규칙을 사용하여 인터넷 액세스를 차단합니다. 계정 설정에서 ap-northeast-3을 제외한 모든 AWS 리전으로의 액세스를 거부합니다.', 'Use rules in AWS WAF to prevent internet access. Deny access to all AWS Regions except ap-northeast-3 in the AWS account settings.'),
  (618, 151, 'AWS Organizations를 사용하여 VPC가 인터넷에 연결되는 것을 방지하는 서비스 제어 정책(SCP)을 구성합니다. ap-northeast-3을 제외한 모든 AWS 리전으로의 액세스를 거부합니다.', 'Use AWS Organizations to configure service control policies (SCPS) that prevent VPCs from gaining internet access. Deny access to all AWS Regions except ap-northeast-3.'),
  (619, 151, '각 VPC에 대해 네트워크 ACL의 아웃바운드 규칙을 생성하여 0.0.0.0/0으로부터의 모든 트래픽을 거부합니다. 각 사용자에 대해 IAM 정책을 생성하여 ap-northeast-3 이외의 AWS 리전을 사용하지 못하게 합니다.', 'Create an outbound rule for the network ACL in each VPC to deny all traffic from 0.0.0.0/0. Create an IAM policy for each user to prevent the use of any AWS Region other than ap-northeast-3.'),
  (620, 151, 'AWS Config를 사용하여 인터넷 게이트웨이를 탐지하는 관리형 규칙을 활성화하고 ap-northeast-3 외부에 배포된 새로운 리소스를 탐지하고 경고하도록 활성화합니다.', 'Use AWS Config to activate managed rules to detect and alert for internet gateways and to detect and alert for new resources deployed outside of ap-northeast-3.'),
  (621, 152, 'AWS Systems Manager Session Manager용 IAM 정책을 구성합니다. 해당 정책에 대한 IAM 역할을 생성합니다. 역할의 신뢰 관계(trust relationship)를 업데이트합니다. DB 인스턴스에 대해 자동 시작/중지를 설정합니다.', 'Configure an IAM policy for AWS Systems Manager Session Manager. Create an IAM role for the policy. Update the trust relationship of the role. Set up automatic start and stop for the DB instance.'),
  (622, 152, '사용자가 DB 인스턴스가 중지된 동안 캐시에서 데이터를 액세스할 수 있도록 Amazon ElastiCache for Redis 캐시 클러스터를 생성합니다. DB 인스턴스가 시작된 후 캐시를 무효화합니다.', 'Create an Amazon ElastiCache for Redis cache cluster that gives users the ability to access the data from the cache when the DB instance is stopped. Invalidate the cache after the DB instance is started.'),
  (623, 152, 'Amazon EC2 인스턴스를 시작합니다. Amazon RDS에 액세스 권한을 부여하는 IAM 역할을 생성합니다. 역할을 EC2 인스턴스에 연결합니다. 원하는 일정에 EC2 인스턴스를 시작 및 중지하도록 cron 작업을 구성합니다.', 'Launch an Amazon EC2 instance. Create an IAM role that grants access to Amazon RDS. Attach the role to the EC2 instance. Configure a cron job to start and stop the EC2 instance on the desired schedule.'),
  (624, 152, 'DB 인스턴스를 시작 및 중지하는 AWS Lambda 함수를 생성합니다. Lambda 함수를 호출하도록 Amazon EventBridge(CloudWatch Events)의 예약 규칙을 생성합니다. 규칙의 대상으로 Lambda 함수를 구성합니다.', 'Create AWS Lambda functions to start and stop the DB instance. Create Amazon EventBridge (Amazon CloudWatch Events) scheduled rules to invoke the Lambda functions. Configure the Lambda functions as event targets for the rules.'),
  (625, 153, '객체의 초기 저장 계층으로 S3 Standard-Infrequent Access (S3 Standard-IA) 스토리지를 구성합니다.', 'Configure S3 Standard-Infrequent Access (S3 Standard-IA) storage for the initial storage tier of the objects.'),
  (626, 153, '파일을 S3 Intelligent-Tiering으로 이동하고 90일 후에 객체를 저비용 스토리지 계층으로 이동하도록 구성합니다.', 'Move the files to S3 Intelligent-Tiering and configure it to move objects to a less expensive storage tier after 90 days.'),
  (627, 153, 'S3 인벤토리를 구성하여 객체를 관리하고 90일 후에 S3 Standard-Infrequent Access(S3 Standard-IA)로 이동합니다.', 'Configure S3 inventory to manage objects and move them to S3 Standard-Infrequent Access (S3 Standard-1A) after 90 days.'),
  (628, 153, 'S3 수명 주기 정책을 구현하여 객체를 S3 Standard에서 S3 Standard-Infrequent Access(S3 Standard-IA)로 90일 후에 이동시킵니다.', 'Implement an S3 Lifecycle policy that moves the objects from S3 Standard to S3 Standard-Infrequent Access (S3 Standard-1A) after 90 days.'),
  (629, 154, 'S3 Object Lock를 거버넌스 모드로 사용하고 법적 보유(Legal Hold)를 1년 동안 적용합니다.', 'Use S3 Object Lock in governance mode with a legal hold of 1 year.'),
  (630, 154, 'S3 Object Lock를 준수 모드(Compliance mode)로 사용하고 보존 기간을 365일로 설정합니다.', 'Use S3 Object Lock in compliance mode with a retention period of 365 days.'),
  (631, 154, 'IAM 역할을 사용하여 모든 사용자가 S3 버킷의 객체를 삭제하거나 변경하지 못하도록 제한합니다. S3 버킷 정책을 사용하여 해당 IAM 역할만 허용합니다.', 'Use an IAM role to restrict all users from deleting or changing objects in the S3 bucket. Use an S3 bucket policy to only allow the IAM role.'),
  (632, 154, 'S3 버킷에서 객체가 추가될 때마다 AWS Lambda 함수를 호출하도록 구성합니다. 함수는 저장된 객체의 해시를 추적하여 수정된 객체를 표시하도록 구성합니다.', 'Configure the S3 bucket to invoke an AWS Lambda function every time an object is added. Configure the function to track the hash of the saved object so that modified objects can be marked accordingly.'),
  (633, 155, 'AWS DataSync를 사용하여 S3 버킷을 웹 애플리케이션에 연결합니다.', 'Use AWS DataSync to connect the S3 buckets to the web application.'),
  (634, 155, 'AWS Global Accelerator를 배포하여 S3 버킷을 웹 애플리케이션에 연결합니다.', 'Deploy AWS Global Accelerator to connect the S3 buckets to the web application.'),
  (635, 155, 'Amazon CloudFront를 배포하여 S3 버킷을 CloudFront 엣지 서버에 연결합니다.', 'Deploy Amazon CloudFront to connect the S3 buckets to CloudFront edge servers.'),
  (636, 155, 'Amazon Simple Queue Service(Amazon SQS)를 사용하여 S3 버킷을 웹 애플리케이션에 연결합니다.', 'Use Amazon Simple Queue Service (Amazon SQS) to connect the S3 buckets to the web application.'),
  (637, 156, '일회성 쿼리에는 Amazon Athena를 사용합니다. KPI 대시보드를 생성하기 위해 Amazon QuickSight를 사용합니다.', 'Use Amazon Athena for one-time queries. Use Amazon QuickSight to create dashboards for KPIs.'),
  (638, 156, '일회성 쿼리에는 Amazon Kinesis Data Analytics를 사용합니다. KPI 대시보드를 생성하기 위해 Amazon QuickSight를 사용합니다.', 'Use Amazon Kinesis Data Analytics for one-time queries. Use Amazon QuickSight to create dashboards for KPIs.'),
  (639, 156, '사용자 지정 AWS Lambda 함수를 생성하여 데이터베이스의 개별 레코드를 Amazon Redshift 클러스터로 이동합니다.', 'Create custom AWS Lambda functions to move the individual records from the databases to an Amazon Redshift cluster.'),
  (640, 156, 'AWS Glue ETL 작업을 사용하여 데이터를 JSON 형식으로 변환합니다. 데이터를 여러 Amazon OpenSearch Service(Amazon Elasticsearch Service) 클러스터에 로드합니다.', 'Use an AWS Glue extract, transform, and load (ETL) job to convert the data into JSON format. Load the data into multiple Amazon OpenSearch Service (Amazon Elasticsearch Service) clusters.'),
  (641, 156, 'AWS Lake Formation의 블루프린트를 사용하여 데이터 레이크에 수집할 수 있는 데이터를 식별합니다. AWS Glue를 사용하여 소스를 크롤링하고 데이터를 추출한 다음, Amazon S3에 Apache Parquet 형식으로 로드합니다.', 'Use blueprints in AWS Lake Formation to identify the data that can be ingested into a data lake. Use AWS Glue to crawl the source, extract the data, and load the data into Amazon S3 in Apache Parquet format.'),
  (642, 157, 'DB 클러스터의 수동 스냅샷을 생성합니다.', 'Take a manual snapshot of the DB cluster.'),
  (643, 157, '자동 백업에 대한 수명 주기(lifecycle) 정책을 생성합니다.', 'Create a lifecycle policy for the automated backups.'),
  (644, 157, '자동 백업 보존 기간을 5년으로 구성합니다.', 'Configure automated backup retention for 5 years.'),
  (645, 157, 'DB 클러스터에 대한 Amazon CloudWatch Logs 내보내기를 구성합니다.', 'Configure an Amazon CloudWatch Logs export for the DB cluster.'),
  (646, 157, 'AWS Backup을 사용하여 백업을 수행하고 백업을 5년 동안 보관합니다.', 'Use AWS Backup to take the backups and to keep the backups for 5 years.'),
  (647, 158, 'Amazon CloudFront', 'Amazon CloudFront'),
  (648, 158, 'AWS Global Accelerator', 'AWS Global Accelerator'),
  (649, 158, 'Amazon Route 53', 'Amazon Route 53'),
  (650, 158, 'Amazon S3 Transfer Acceleration', 'Amazon S3 Transfer Acceleration'),
  (651, 159, '정품 사용자에게만 공유되는 API 키를 사용하여 사용량 계획(Usage Plan)을 생성합니다.', 'Create a usage plan with an API key that is shared with genuine users only.'),
  (652, 159, 'Lambda 함수 내에 논리를 통합하여 사기성 IP 주소의 요청을 무시합니다.', 'Integrate logic within the Lambda function to ignore the requests from fraudulent IP addresses.'),
  (653, 159, 'AWS WAF 규칙을 구현하여 악성 요청을 타겟팅하고 필터링 조치를 트리거합니다.', 'Implement an AWS WAF rule to target malicious requests and trigger actions to filter them out.'),
  (654, 159, '기존 공개 API를 프라이빗 API로 변환합니다. DNS 레코드를 업데이트하여 사용자를 새 API 엔드포인트로 리디렉션합니다.', 'Convert the existing public API to a private API. Update the DNS records to redirect users to the new API endpoint.'),
  (655, 159, 'API에 액세스하려는 각 사용자에 대해 IAM 역할을 생성합니다. 사용자가 API 호출 시 역할을 맡습니다.', 'Create an IAM role for each user attempting to access the API. A user will assume the role when making the API call.'),
  (656, 160, 'Amazon OpenSearch Service (Amazon Elasticsearch Service)', 'Amazon OpenSearch Service (Amazon Elasticsearch Service)'),
  (657, 160, 'Amazon S3 Glacier', 'Amazon S3 Glacier'),
  (658, 160, 'Amazon S3 Standard', 'Amazon S3 Standard'),
  (659, 160, 'Amazon RDS for PostgreSQL', 'Amazon RDS for PostgreSQL'),
  (660, 161, 'JSON 문서를 Amazon S3 버킷에 저장합니다. Python 코드를 여러 Amazon EC2 인스턴스에서 실행하여 문서를 처리합니다. 결과는 Amazon Aurora DB 클러스터에 저장합니다.', 'Place the JSON documents in an Amazon S3 bucket. Run the Python code on multiple Amazon EC2 instances to process the documents. Store the results in an Amazon Aurora DB cluster.'),
  (661, 161, 'JSON 문서를 Amazon S3 버킷에 저장합니다. AWS Lambda 함수를 생성하여 S3 버킷에 문서가 도착할 때마다 Python 코드를 실행하여 문서를 처리합니다. 결과는 Amazon Aurora DB 클러스터에 저장합니다.', 'Place the JSON documents in an Amazon S3 bucket. Create an AWS Lambda function that runs the Python code to process the documents as they arrive in the S3 bucket. Store the results in an Amazon Aurora DB cluster.'),
  (662, 161, 'JSON 문서를 Amazon Elastic Block Store(Amazon EBS) 볼륨에 저장합니다. EBS Multi-Attach 기능을 사용하여 볼륨을 여러 Amazon EC2 인스턴스에 연결합니다. Python 코드를 EC2 인스턴스에서 실행하여 문서를 처리합니다. 결과는 Amazon RDS DB 인스턴스에 저장합니다.', 'Place the JSON documents in an Amazon Elastic Block Store (Amazon EBS) volume. Use the EBS Multi-Attach feature to attach the volume to multiple Amazon EC2 instances. Run the Python code on the EC2 instances to process the documents. Store the results on an Amazon RDS DB instance.'),
  (663, 161, 'JSON 문서를 Amazon Simple Queue Service(Amazon SQS) 큐에 메시지로 저장합니다. Python 코드를 컨테이너로 Amazon Elastic Container Service(Amazon ECS) 클러스터에 배포하고 Amazon EC2 시작 유형으로 구성합니다. 컨테이너를 사용하여 SQS 메시지를 처리합니다. 결과는 Amazon RDS DB 인스턴스에 저장합니다.', 'Place the JSON documents in an Amazon Simple Queue Service (Amazon SQS) queue as messages. Deploy the Python code as a container on an Amazon Elastic Container Service (Amazon ECS) cluster that is configured with the Amazon EC2 launch type. Use the container to process the SQS messages. Store the results on an Amazon RDS DB instance.'),
  (664, 162, 'Amazon FSx for Lustre를 Amazon S3와 통합', 'Amazon FSx for Lustre integrated with Amazon S3'),
  (665, 162, 'Amazon FSx for Windows File Server를 Amazon S3와 통합', 'Amazon FSx for Windows File Server integrated with Amazon S3'),
  (666, 162, 'Amazon S3 Glacier를 Amazon Elastic Block Store(Amazon EBS)와 통합', 'Amazon S3 Glacier integrated with Amazon Elastic Block Store (Amazon EBS)'),
  (667, 162, 'Amazon S3 버킷을 VPC 엔드포인트와 통합하고 Amazon EBS General Purpose SSD(gp2) 볼륨과 통합', 'Amazon S3 bucket with a VPC endpoint integrated with an Amazon Elastic Block Store (Amazon EBS) General Purpose SSD (gp2) volume'),
  (668, 163, '컨테이너 이미지를 Amazon Elastic Container Registry(Amazon ECR) 리포지토리에 저장합니다. Amazon Elastic Container Service(Amazon ECS) 클러스터를 **AWS Fargate 런치 타입**으로 사용하여 컨테이너를 실행합니다. 수요에 따라 자동으로 스케일링하도록 **타겟 트래킹**을 사용합니다.', 'Store container images in an Amazon Elastic Container Registry (Amazon ECR) repository. Use an Amazon Elastic Container Service (Amazon ECS) cluster with the AWS Fargate launch type to run the containers. Use target tracking to scale automatically based on demand.'),
  (669, 163, '컨테이너 이미지를 Amazon ECR 리포지토리에 저장합니다. Amazon ECS 클러스터를 **Amazon EC2 런치 타입**으로 사용하여 컨테이너를 실행합니다. 수요에 따라 자동으로 스케일링하도록 타겟 트래킹을 사용합니다.', 'Store container images in an Amazon Elastic Container Registry (Amazon ECR) repository. Use an Amazon Elastic Container Service (Amazon ECS) cluster with the Amazon EC2 launch type to run the containers. Use target tracking to scale automatically based on demand.'),
  (670, 163, 'EC2 인스턴스에서 실행되는 리포지토리에 컨테이너 이미지를 저장합니다. 컨테이너를 여러 가용 영역에 걸쳐 배포된 EC2 인스턴스에서 실행합니다. Amazon CloudWatch에서 평균 CPU 사용률을 모니터링하고 필요에 따라 새로운 EC2 인스턴스를 실행합니다.', 'Store container images in a repository that runs on an Amazon EC2 instance. Run the containers on EC2 instances that are spread across multiple Availability Zones. Monitor the average CPU utilization in Amazon CloudWatch. Launch new EC2 instances as needed.'),
  (671, 163, '컨테이너 이미지를 포함하는 Amazon EC2 AMI를 생성합니다. EC2 인스턴스를 여러 가용 영역에 걸친 Auto Scaling 그룹에서 시작합니다. 평균 CPU 사용률 임계값을 초과하면 CloudWatch 경보를 사용하여 EC2 인스턴스를 스케일 아웃합니다.', 'Create an Amazon EC2 Amazon Machine Image (AMI) that contains the container image. Launch EC2 instances in an Auto Scaling group across multiple Availability Zones. Use an Amazon CloudWatch alarm to scale out EC2 instances when the average CPU utilization threshold is breached.'),
  (672, 164, 'Redis 데이터베이스를 실행하는 Amazon EC2 인스턴스를 설정합니다. 두 애플리케이션을 인스턴스에 통합합니다. 메시지를 저장, 처리 및 삭제합니다.', 'Set up an Amazon EC2 instance running a Redis database. Configure both applications to use the instance. Store, process, and delete the messages, respectively.'),
  (673, 164, 'Amazon Kinesis 데이터 스트림을 생성하여 송신자 애플리케이션에서 메시지를 수신합니다. Kinesis Client Library(KCL)를 사용하여 처리 애플리케이션과 통합합니다.', 'Use an Amazon Kinesis data stream to receive the messages from the sender application. Integrate the processing application with the Kinesis Client Library (KCL).'),
  (674, 164, 'Amazon Simple Queue Service(Amazon SQS) 큐를 송신자 및 처리 애플리케이션과 통합합니다. 처리에 실패한 메시지를 수집하도록 데드 레터 큐(Dead-Letter Queue)를 구성합니다.', 'Integrate the sender and processor applications with an Amazon Simple Queue Service (Amazon SQS) queue. Configure a dead-letter queue to collect the messages that failed to process.'),
  (675, 164, '처리 애플리케이션이 메시지를 처리하도록 Amazon Simple Notification Service(Amazon SNS) 주제를 구독하도록 합니다. 송신자 애플리케이션을 SNS 주제에 연결합니다.', 'Subscribe the processing application to an Amazon Simple Notification Service (Amazon SNS) topic to receive notifications to process. Integrate the sender application to write to the SNS topic.'),
  (676, 165, 'S3 버킷 정책을 구성하여 AWS WAF의 Amazon Resource Name(ARN)에서 오는 요청만 허용합니다.', 'Configure an S3 bucket policy to accept requests coming from the AWS WAF Amazon Resource Name (ARN) only.'),
  (677, 165, 'Amazon CloudFront를 구성하여 S3 오리진에서 콘텐츠를 요청하기 전에 모든 수신 요청을 AWS WAF로 전달합니다.', 'Configure Amazon CloudFront to forward all incoming requests to AWS WAF before requesting content from the S3 origin.'),
  (678, 165, 'Amazon CloudFront IP 주소만 Amazon S3에 액세스하도록 허용하는 보안 그룹을 구성합니다. AWS WAF를 CloudFront에 연결합니다.', 'Configure a security group that allows Amazon CloudFront IP addresses to access Amazon S3 only. Associate AWS WAF to CloudFront.'),
  (679, 165, 'Amazon CloudFront와 Amazon S3를 구성하여 오리진 액세스 아이덴티티(OAI)를 사용하여 S3 버킷 접근을 제한합니다. 배포에서 AWS WAF를 활성화합니다.', 'Configure Amazon CloudFront and Amazon S3 to use an origin access identity (OAI) to restrict access to the S3 bucket. Enable AWS WAF on the distribution.'),
  (680, 166, '파일에 대해 사전 서명된 URL을 생성합니다.', 'Generate presigned URLs for the files.'),
  (681, 166, '모든 리전으로 교차 리전 복제를 사용합니다.', 'Use cross-Region replication to all Regions.'),
  (682, 166, 'Amazon Route 53의 지리 근접 기능을 사용합니다.', 'Use the geoproximity feature of Amazon Route 53.'),
  (683, 166, 'Amazon CloudFront를 사용하고 S3 버킷을 오리진으로 설정합니다.', 'Use Amazon CloudFront with the S3 bucket as its origin.'),
  (684, 167, 'Spot 인스턴스만 사용하여 최대 용량을 처리합니다.', 'Use Spot Instances exclusively to handle the maximum capacity required.'),
  (685, 167, 'Reserved 인스턴스만 사용하여 최대 용량을 처리합니다.', 'Use Reserved Instances exclusively to handle the maximum capacity required.'),
  (686, 167, '기본 용량은 Reserved 인스턴스를 사용하고, 추가 용량은 Spot 인스턴스를 사용합니다.', 'Use Reserved Instances for the baseline capacity and use Spot Instances to handle additional capacity.'),
  (687, 167, '기본 용량은 Reserved 인스턴스를 사용하고, 추가 용량은 On-Demand 인스턴스를 사용합니다.', 'Use Reserved Instances for the baseline capacity and use On-Demand Instances to handle additional capacity.'),
  (688, 168, '서비스 또는 작업에 대한 액세스를 제공하도록 ACL을 생성합니다.', 'Create an ACL to provide access to the services or actions.'),
  (689, 168, '계정을 허용하도록 보안 그룹을 생성하고 이를 사용자 그룹에 연결합니다.', 'Create a security group to allow accounts and attach it to user groups.'),
  (690, 168, '각 계정에 교차 계정 역할(cross-account role)을 생성하여 서비스 또는 작업에 대한 액세스를 거부합니다.', 'Create cross-account roles in each account to deny access to the services or actions.'),
  (691, 168, '루트 조직 단위(OU)에서 서비스 제어 정책(SCP)을 생성하여 서비스 또는 작업에 대한 액세스를 거부합니다.', 'Create a service control policy in the root organizational unit to deny access to the services or actions.'),
  (692, 169, 'ALB에 Amazon Inspector 에이전트를 추가합니다.', 'Add an Amazon Inspector agent to the ALB.'),
  (693, 169, '공격을 방지하도록 Amazon Macie를 구성합니다.', 'Configure Amazon Macie to prevent attacks.'),
  (694, 169, 'AWS Shield Advanced를 활성화하여 공격을 방지합니다.', 'Enable AWS Shield Advanced to prevent attacks.'),
  (695, 169, 'ALB를 모니터링하도록 Amazon GuardDuty를 구성합니다.', 'Configure Amazon GuardDuty to monitor the ALB.'),
  (696, 170, 'EC2 인스턴스의 보안 그룹을 구성합니다.', 'Configure the security group for the EC2 instances.'),
  (697, 170, '애플리케이션 로드 밸런서의 보안 그룹을 구성합니다.', 'Configure the security group on the Application Load Balancer.'),
  (698, 170, 'VPC 내 애플리케이션 로드 밸런서에 AWS WAF를 구성합니다.', 'Configure AWS WAF on the Application Load Balancer in a VPC.'),
  (699, 170, 'EC2 인스턴스가 있는 서브넷의 네트워크 ACL을 구성합니다.', 'Configure the network ACL for the subnet that contains the EC2 instances.'),
  (700, 171, 'Amazon EC2 인스턴스에서 호스팅되는 API를 제공합니다. EC2 인스턴스가 API 요청이 들어올 때 필요한 계산을 수행합니다.', 'Provide an API hosted on an Amazon EC2 instance. The EC2 instance performs the required computations when the API request is made.'),
  (701, 171, '항목 이름을 수락하는 Amazon API Gateway를 사용하여 REST API를 설계합니다. API Gateway가 항목 이름을 AWS Lambda로 전달하여 세금을 계산합니다.', 'Design a REST API using Amazon API Gateway that accepts the item names. API Gateway passes item names to AWS Lambda for tax computations.'),
  (702, 171, '두 개의 Amazon EC2 인스턴스 뒤에 Application Load Balancer를 생성합니다. EC2 인스턴스가 받은 항목 이름에 대해 세금을 계산합니다.', 'Create an Application Load Balancer that has two Amazon EC2 instances behind it. The EC2 instances will compute the tax on the received item names.'),
  (703, 171, 'Amazon EC2 인스턴스에서 호스팅되는 API와 연결되는 Amazon API Gateway를 사용하여 REST API를 설계합니다. API Gateway가 항목 이름을 수락하고 EC2 인스턴스로 전달하여 세금을 계산합니다.', 'Design a REST API using Amazon API Gateway that connects with an API hosted on an Amazon EC2 instance. API Gateway accepts and passes the item names to the EC2 instance for tax computations.'),
  (704, 172, 'CloudFront 서명된 URL을 구성합니다.', 'Configure a CloudFront signed URL.'),
  (705, 172, 'CloudFront 서명된 쿠키를 구성합니다.', 'Configure a CloudFront signed cookie.'),
  (706, 172, 'CloudFront 필드 수준 암호화(profile-level encryption) 구성을 설정합니다.', 'Configure a CloudFront field-level encryption profile.'),
  (707, 172, 'CloudFront를 구성하고 Viewer Protocol Policy에 대해 Origin Protocol Policy를 HTTPS 전용으로 설정합니다.', 'Configure CloudFront and set the Origin Protocol Policy setting to HTTPS Only for the Viewer Protocol Policy.'),
  (708, 173, '웹 서버 앞에 AWS Global Accelerator를 배포합니다.', 'Deploy an AWS Global Accelerator accelerator in front of the web servers.'),
  (709, 173, 'S3 버킷 앞에 Amazon CloudFront 웹 배포를 배포합니다.', 'Deploy an Amazon CloudFront web distribution in front of the S3 bucket.'),
  (710, 173, '웹 서버 앞에 Amazon ElastiCache for Redis 인스턴스를 배포합니다.', 'Deploy an Amazon ElastiCache for Redis instance in front of the web servers.'),
  (711, 173, '웹 서버 앞에 Amazon ElastiCache for Memcached 인스턴스를 배포합니다.', 'Deploy an Amazon ElastiCache for Memcached instance in front of the web servers.'),
  (712, 174, '두 개의 리전에서 각각 세 개의 인스턴스를 사용하는 Auto Scaling 그룹을 생성합니다.', 'Create an Auto Scaling group that uses three instances across each of two Regions.'),
  (713, 174, '두 개의 가용 영역에서 각각 세 개의 인스턴스를 사용하는 Auto Scaling 그룹으로 수정합니다.', 'Modify the Auto Scaling group to use three instances across each of two Availability Zones.'),
  (714, 174, '다른 리전에서 인스턴스를 신속하게 생성할 수 있는 Auto Scaling 템플릿을 생성합니다.', 'Create an Auto Scaling template that can be used to quickly create more instances in another Region.'),
  (715, 174, 'Amazon EC2 인스턴스 앞의 ALB를 라운드 로빈 구성으로 변경하여 웹 계층으로 트래픽을 분산합니다.', 'Change the ALB in front of the Amazon EC2 instances in a round-robin configuration to balance traffic to the web tier.'),
  (716, 175, 'Lambda 함수에 프로비저닝된 동시성을 구성합니다. 데이터베이스를 다중 AWS 리전에서 글로벌 데이터베이스로 수정합니다.', 'Configure provisioned concurrency for the Lambda function. Modify the database to be a global database in multiple AWS Regions.'),
  (717, 175, 'Amazon RDS Proxy를 사용하여 데이터베이스에 대한 프록시를 생성합니다. Lambda 함수가 데이터베이스 엔드포인트 대신 RDS Proxy 엔드포인트를 사용하도록 수정합니다.', 'Use Amazon RDS Proxy to create a proxy for the database. Modify the Lambda function to use the RDS Proxy endpoint instead of the database endpoint.'),
  (718, 175, '데이터베이스의 리드 리플리카를 다른 AWS 리전에 생성합니다. API Gateway에서 쿼리 문자열 매개변수를 사용하여 리드 리플리카로 트래픽을 라우팅합니다.', 'Create a read replica for the database in a different AWS Region. Use query string parameters in API Gateway to route traffic to the read replica.'),
  (719, 175, 'AWS Database Migration Service(AWS DMS)를 사용하여 Aurora PostgreSQL의 데이터를 Amazon DynamoDB로 마이그레이션합니다. Lambda 함수가 DynamoDB 테이블을 사용하도록 수정합니다.', 'Migrate the data from Aurora PostgreSQL to Amazon DynamoDB by using AWS Database Migration Service (AWS DMS). Modify the Lambda function to use the DynamoDB table.'),
  (720, 176, 'DynamoDB에 대한 VPC 엔드포인트를 사용합니다.', 'Use a VPC endpoint for DynamoDB.'),
  (721, 176, '퍼블릭 서브넷에 NAT 게이트웨이를 사용합니다.', 'Use a NAT gateway in a public subnet.'),
  (722, 176, '프라이빗 서브넷에 NAT 인스턴스를 사용합니다.', 'Use a NAT instance in a private subnet.'),
  (723, 176, 'VPC에 연결된 인터넷 게이트웨이를 사용합니다.', 'Use the internet gateway attached to the VPC.'),
  (724, 177, 'Amazon ElastiCache for Redis를 사용합니다.', 'Use Amazon ElastiCache for Redis.'),
  (725, 177, 'Amazon DynamoDB Accelerator(DAX)를 사용합니다.', 'Use Amazon DynamoDB Accelerator (DAX).'),
  (726, 177, 'DynamoDB 글로벌 테이블을 사용하여 데이터를 복제합니다.', 'Replicate data by using DynamoDB global tables.'),
  (727, 177, '자동 검색(Auto Discovery) 기능이 활성화된 Amazon ElastiCache for Memcached를 사용합니다.', 'Use Amazon ElastiCache for Memcached with Auto Discovery enabled.'),
  (728, 178, 'AWS Backup을 사용하여 EC2 백업과 RDS 백업을 별도의 리전으로 복사합니다.', 'Use AWS Backup to copy EC2 backups and RDS backups to the separate Region.'),
  (729, 178, 'Amazon Data Lifecycle Manager(Amazon DLM)를 사용하여 EC2 백업과 RDS 백업을 별도의 리전으로 복사합니다.', 'Use Amazon Data Lifecycle Manager (Amazon DLM) to copy EC2 backups and RDS backups to the separate Region.'),
  (730, 178, 'EC2 인스턴스의 Amazon Machine Image(AMI)를 생성합니다. AMI를 별도의 리전으로 복사합니다. RDS DB 인스턴스에 대한 읽기 전용 리플리카를 별도의 리전에 생성합니다.', 'Create Amazon Machine Images (AMIs) of the EC2 instances. Copy the AMIs to the separate Region. Create a read replica for the RDS DB instance in the separate Region.'),
  (731, 178, 'Amazon Elastic Block Store(Amazon EBS) 스냅샷을 생성합니다. EBS 스냅샷을 별도의 리전으로 복사합니다. RDS 스냅샷을 생성하고, RDS 스냅샷을 Amazon S3로 내보냅니다. S3 교차 리전 복제(CRR)를 별도의 리전으로 구성합니다.', 'Create Amazon Elastic Block Store (Amazon EBS) snapshots. Copy the EBS snapshots to the separate Region. Create RDS snapshots. Export the RDS snapshots to Amazon S3. Configure S3 Cross-Region Replication (CRR) to the separate Region.'),
  (732, 179, 'Parameter Store 파라미터에 대한 읽기 권한이 있는 IAM 역할을 생성합니다. 파라미터를 암호화하는 데 사용되는 AWS Key Management Service(AWS KMS) 키에 대해 Decrypt 권한을 허용합니다. 이 IAM 역할을 EC2 인스턴스에 할당합니다.', 'Create an IAM role that has read access to the Parameter Store parameter. Allow Decrypt access to an AWS Key Management Service (AWS KMS) key that is used to encrypt the parameter. Assign this IAM role to the EC2 instance.'),
  (733, 179, 'Parameter Store 파라미터에 대한 읽기 권한이 있는 IAM 정책을 생성합니다. 파라미터를 암호화하는 데 사용되는 AWS Key Management Service(AWS KMS) 키에 대해 Decrypt 권한을 허용합니다. 이 IAM 정책을 EC2 인스턴스에 할당합니다.', 'Create an IAM policy that allows read access to the Parameter Store parameter. Allow Decrypt access to an AWS Key Management Service (AWS KMS) key that is used to encrypt the parameter. Assign this IAM policy to the EC2 instance.'),
  (734, 179, 'Parameter Store 파라미터와 EC2 인스턴스 간에 IAM 신뢰 관계를 생성합니다. 신뢰 정책에서 Amazon RDS를 주체(principal)로 지정합니다.', 'Create an IAM trust relationship between the Parameter Store parameter and the EC2 instance. Specify Amazon RDS as a principal in the trust policy.'),
  (735, 179, 'DB 인스턴스와 EC2 인스턴스 간에 IAM 신뢰 관계를 생성합니다. 신뢰 정책에서 Systems Manager를 주체(principal)로 지정합니다.', 'Create an IAM trust relationship between the DB instance and the EC2 instance. Specify Systems Manager as a principal in the trust policy.'),
  (736, 180, 'AWS WAF를 사용하여 NLB 보호', 'Use AWS WAF to protect the NLB.'),
  (737, 180, 'AWS Shield Advanced를 NLB와 함께 사용', 'Use AWS Shield Advanced with the NLB.'),
  (738, 180, 'AWS WAF를 사용하여 Amazon API Gateway 보호', 'Use AWS WAF to protect Amazon API Gateway.'),
  (739, 180, 'Amazon GuardDuty를 AWS Shield Standard와 함께 사용', 'Use Amazon GuardDuty with AWS Shield Standard'),
  (740, 180, 'AWS Shield Standard를 Amazon API Gateway와 함께 사용', 'Use AWS Shield Standard with Amazon API Gateway.'),
  (741, 181, 'Amazon Simple Queue Service(Amazon SQS) 큐를 생성합니다. 데이터 생산자에 코드를 추가하여 큐로 데이터를 보냅니다. 데이터 소비자에 코드를 추가하여 큐에서 데이터를 처리합니다.', 'Create an Amazon Simple Queue Service (Amazon SQS) queue. Add code to the data producers, and send data to the queue. Add code to the data consumers to process data from the queue.'),
  (742, 181, 'Amazon Simple Notification Service(Amazon SNS) 주제를 생성합니다. 데이터 생산자에 코드를 추가하여 주제에 알림을 게시합니다. 데이터 소비자에 코드를 추가하여 주제를 구독합니다.', 'Create an Amazon Simple Notification Service (Amazon SNS) topic. Add code to the data producers, and publish notifications to the topic. Add code to the data consumers to subscribe to the topic.'),
  (743, 181, '메시지를 전달하기 위해 AWS Lambda 함수를 생성합니다. 데이터 생산자에 코드를 추가하여 데이터 객체와 함께 Lambda 함수를 호출합니다. 데이터 소비자에 코드를 추가하여 Lambda 함수에서 전달되는 데이터 객체를 수신합니다.', 'Create an AWS Lambda function to pass messages. Add code to the data producers to call the Lambda function with a data object. Add code to the data consumers to receive a data object that is passed from the Lambda function.'),
  (744, 181, 'Amazon DynamoDB 테이블을 생성합니다. DynamoDB Streams를 활성화합니다. 데이터 생산자에 코드를 추가하여 테이블에 데이터를 삽입합니다. 데이터 소비자에 코드를 추가하여 DynamoDB Streams API를 사용해 새 테이블 엔트리를 감지하고 데이터를 검색합니다.', 'Create an Amazon DynamoDB table. Enable DynamoDB Streams. Add code to the data producers to insert data into the table. Add code to the data consumers to use the DynamoDB Streams API to detect new table entries and retrieve the data.'),
  (745, 182, '세 개의 가용 영역(Availability Zones)에 있는 세 노드로 동기 복제를 구성한 Amazon RDS DB 인스턴스를 생성합니다.', 'Create an Amazon RDS DB instance with synchronous replication to three nodes in three Availability Zones.'),
  (746, 182, '데이터가 동기적으로 복제되도록 Multi-AZ 기능을 활성화한 Amazon RDS MySQL DB 인스턴스를 생성합니다.', 'Create an Amazon RDS MySQL DB instance with Multi-AZ functionality enabled to synchronously replicate the data.'),
  (747, 182, 'Amazon RDS MySQL DB 인스턴스를 생성한 다음 별도의 AWS 리전에 리드 리플리카(read replica)를 생성하여 데이터를 동기적으로 복제합니다.', 'Create an Amazon RDS MySQL DB instance and then create a read replica in a separate AWS Region that synchronously replicates the data.'),
  (748, 182, 'MySQL 엔진이 설치된 Amazon EC2 인스턴스를 생성하고 AWS Lambda 함수를 트리거하여 데이터를 동기적으로 Amazon RDS MySQL DB 인스턴스로 복제합니다.', 'Create an Amazon EC2 instance with a MySQL engine installed that triggers an AWS Lambda function to synchronously replicate the data to an Amazon RDS MySQL DB instance.'),
  (749, 183, '정적 콘텐츠를 Amazon S3에 호스팅합니다. 동적 콘텐츠는 Amazon API Gateway와 AWS Lambda를 사용하여 호스팅합니다. 데이터베이스는 온디맨드 용량(ondemand capacity)의 Amazon DynamoDB를 사용합니다. 웹사이트 콘텐츠 제공을 위해 Amazon CloudFront를 구성합니다.', 'Host static content in Amazon S3. Host dynamic content by using Amazon API Gateway and AWS Lambda. Use Amazon DynamoDB with on-demand capacity for the database. Configure Amazon CloudFront to deliver the website content.'),
  (750, 183, '정적 콘텐츠를 Amazon S3에 호스팅합니다. 동적 콘텐츠는 Amazon API Gateway와 AWS Lambda를 사용하여 호스팅합니다. 데이터베이스는 Aurora Auto Scaling이 적용된 Amazon Aurora를 사용합니다. 웹사이트 콘텐츠 제공을 위해 Amazon CloudFront를 구성합니다.', 'Host static content in Amazon S3. Host dynamic content by using Amazon API Gateway and AWS Lambda. Use Amazon Aurora with Aurora Auto Scaling for the database. Configure Amazon CloudFront to deliver the website content.'),
  (751, 183, '모든 웹사이트 콘텐츠를 Amazon EC2 인스턴스에 호스팅합니다. EC2 인스턴스를 스케일링하기 위해 Auto Scaling 그룹을 생성합니다. 트래픽 분산을 위해 Application Load Balancer를 사용합니다. 데이터베이스는 프로비저닝된 쓰기 용량(provisioned write capacity)의 Amazon DynamoDB를 사용합니다.', 'Host all the website content on Amazon EC2 instances. Create an Auto Scaling group to scale the EC2 instances. Use an Application Load Balancer to distribute traffic. Use Amazon DynamoDB with provisioned write capacity for the database.'),
  (752, 183, '모든 웹사이트 콘텐츠를 Amazon EC2 인스턴스에 호스팅합니다. EC2 인스턴스를 스케일링하기 위해 Auto Scaling 그룹을 생성합니다. 트래픽 분산을 위해 Application Load Balancer를 사용합니다. 데이터베이스는 Aurora Auto Scaling이 적용된 Amazon Aurora를 사용합니다.', 'Host all the website content on Amazon EC2 instances. Create an Auto Scaling group to scale the EC2 instances. Use an Application Load Balancer to distribute traffic. Use Amazon Aurora with Aurora Auto Scaling for the database.'),
  (753, 184, 'Lambda 함수를 적절한 보안 그룹과 함께 VPC에서 실행되도록 구성합니다.', 'Configure the Lambda function to run in the VPC with the appropriate security group.'),
  (754, 184, 'AWS에서 데이터 센터로의 VPN 연결을 설정합니다. Lambda 함수의 트래픽을 VPN을 통해 라우팅합니다.', 'Set up a VPN connection from AWS to the data center. Route the traffic from the Lambda function through the VPN.'),
  (755, 184, 'Lambda 함수가 Direct Connect를 통해 온프레미스 데이터 센터에 액세스할 수 있도록 VPC의 라우트 테이블을 업데이트합니다.', 'Update the route tables in the VPC to allow the Lambda function to access the on-premises data center through Direct Connect.'),
  (756, 184, '탄력적 IP 주소(Elastic IP address)를 생성합니다. 탄력적 네트워크 인터페이스 없이 Lambda 함수가 탄력적 IP 주소를 통해 트래픽을 전송하도록 구성합니다.', 'Create an Elastic IP address. Configure the Lambda function to send traffic through the Elastic IP address without an elastic network interface.'),
  (757, 185, 'AWS IAM에서 S3 역할을 업데이트하여 Amazon ECS에서의 읽기/쓰기 접근을 허용한 다음 컨테이너를 다시 실행합니다.', 'Update the S3 role in AWS IAM to allow read/write access from Amazon ECS, and then relaunch the container.'),
  (758, 185, 'S3 권한을 가진 IAM 역할을 생성한 다음, 해당 역할을 작업 정의(task definition)의 taskRoleArn으로 지정합니다.', 'Create an IAM role with S3 permissions, and then specify that role as the taskRoleArn in the task definition.'),
  (759, 185, 'Amazon ECS에서 Amazon S3로의 접근을 허용하는 보안 그룹을 생성하고, ECS 클러스터에서 사용하는 런치 구성을 업데이트합니다.', 'Create a security group that allows access from Amazon ECS to Amazon S3, and update the launch configuration used by the ECS cluster.'),
  (760, 185, 'S3 권한을 가진 IAM 사용자를 생성한 다음, 이 계정으로 로그인하여 ECS 클러스터의 Amazon EC2 인스턴스를 다시 실행합니다.', 'Create an IAM user with S3 permissions, and then relaunch the Amazon EC2 instances for the ECS cluster while logged in as this account.'),
  (761, 186, 'AWS Storage Gateway를 볼륨 게이트웨이 모드로 구성합니다. 각 Windows 인스턴스에 볼륨을 마운트합니다.', 'Configure AWS Storage Gateway in volume gateway mode. Mount the volume to each Windows instance.'),
  (762, 186, 'Amazon FSx for Windows File Server를 구성합니다. 각 Windows 인스턴스에 Amazon FSx 파일 시스템을 마운트합니다.', 'Configure Amazon FSx for Windows File Server. Mount the Amazon FSx file system to each Windows instance.'),
  (763, 186, 'Amazon Elastic File System(Amazon EFS)으로 파일 시스템을 구성합니다. 각 Windows 인스턴스에 EFS 파일 시스템을 마운트합니다.', 'Configure a file system by using Amazon Elastic File System (Amazon EFS). Mount the EFS file system to each Windows instance.'),
  (764, 186, '필요한 크기의 Amazon Elastic Block Store(Amazon EBS) 볼륨을 구성합니다. 각 EC2 인스턴스에 볼륨을 연결합니다. 볼륨 내에 파일 시스템을 만들어 각 Windows 인스턴스에 마운트합니다.', 'Configure an Amazon Elastic Block Store (Amazon EBS) volume with the required size. Attach each EC2 instance to the volume. Mount the file system within the volume to each Windows instance.'),
  (765, 187, '다중 가용 영역(Multi-AZ) 모드에서 Amazon RDS DB 인스턴스를 생성합니다.', 'Create an Amazon RDS DB instance in Multi-AZ mode.'),
  (766, 187, 'Amazon RDS DB 인스턴스를 생성하고 다른 가용 영역에 하나 이상의 리플리카를 생성합니다.', 'Create an Amazon RDS DB instance and one or more replicas in another Availability Zone.'),
  (767, 187, '동적 애플리케이션 부하를 처리하기 위해 Amazon EC2 인스턴스 기반 Docker 클러스터를 생성합니다.', 'Create an Amazon EC2 instance-based Docker cluster to handle the dynamic application load.'),
  (768, 187, '동적 애플리케이션 부하를 처리하기 위해 Amazon Elastic Container Service(Amazon ECS) 클러스터를 Fargate 런치 타입으로 생성합니다.', 'Create an Amazon Elastic Container Service (Amazon ECS) cluster with a Fargate launch type to handle the dynamic application load.'),
  (769, 187, '동적 애플리케이션 부하를 처리하기 위해 Amazon Elastic Container Service(Amazon ECS) 클러스터를 Amazon EC2 런치 타입으로 생성합니다.', 'Create an Amazon Elastic Container Service (Amazon ECS) cluster with an Amazon EC2 launch type to handle the dynamic application load.'),
  (770, 188, 'AWS Transfer Family를 사용하여 공용 액세스 가능한 엔드포인트로 SFTP 사용이 가능한 서버를 구성합니다. 대상은 S3 데이터 레이크로 선택합니다.', 'Use AWS Transfer Family to configure an SFTP-enabled server with a publicly accessible endpoint. Choose the S3 data lake as the destination.'),
  (771, 188, 'Amazon S3 File Gateway를 SFTP 서버로 사용합니다. S3 File Gateway 엔드포인트 URL을 새 파트너에게 노출합니다. S3 File Gateway 엔드포인트를 새 파트너와 공유합니다.', 'Use Amazon S3 File Gateway as an SFTP server. Expose the S3 File Gateway endpoint URL to the new partner. Share the S3 File Gateway endpoint with the new partner.'),
  (772, 188, 'VPC의 프라이빗 서브넷에 Amazon EC2 인스턴스를 시작합니다. 새 파트너에게 VPN을 통해 EC2 인스턴스로 파일을 업로드하도록 지시합니다. EC2 인스턴스에서 cron 작업 스크립트를 실행하여 파일을 S3 데이터 레이크로 업로드합니다.', 'Launch an Amazon EC2 instance in a private subnet in a VPInstruct the new partner to upload files to the EC2 instance by using a VPN. Run a cron job script, on the EC2 instance to upload files to the S3 data lake.'),
  (773, 188, 'VPC의 프라이빗 서브넷에 Amazon EC2 인스턴스를 시작합니다. EC2 인스턴스 앞에 Network Load Balancer(NLB)를 배치합니다. NLB에 대한 SFTP 수신 포트를 생성합니다. NLB 호스트 이름을 새 파트너와 공유합니다. EC2 인스턴스에서 cron 작업 스크립트를 실행하여 파일을 S3 데이터 레이크로 업로드합니다.', 'Launch Amazon EC2 instances in a private subnet in a VPC. Place a Network Load Balancer (NLB) in front of the EC2 instances. Create an SFTP listener port for the NLB. Share the NLB hostname with the new partner. Run a cron job script on the EC2 instances to upload files to the S3 data lake.'),
  (774, 189, 'Amazon S3에 문서를 저장합니다. S3 Object Lock을 거버넌스 모드(governance mode)로 사용합니다.', 'Store the documents in Amazon S3. Use S3 Object Lock in governance mode.'),
  (775, 189, 'Amazon S3에 문서를 저장합니다. S3 Object Lock을 컴플라이언스 모드(compliance mode)로 사용합니다.', 'Store the documents in Amazon S3. Use S3 Object Lock in compliance mode.'),
  (776, 189, 'Amazon S3 관리형 암호화 키(SSE-S3)를 사용한 서버 측 암호화를 사용합니다. 키 회전을 구성합니다.', 'Use server-side encryption with Amazon S3 managed encryption keys (SSE-S3). Configure key rotation.'),
  (777, 189, 'AWS Key Management Service(AWS KMS) 고객 관리형 키(customer managed keys)를 사용한 서버 측 암호화를 사용합니다. 키 회전을 구성합니다.', 'Use server-side encryption with AWS Key Management Service (AWS KMS) customer managed keys. Configure key rotation.'),
  (778, 189, 'AWS Key Management Service(AWS KMS) 고객 제공(가져온) 키(customer provided / imported keys)를 사용한 서버 측 암호화를 사용합니다. 키 회전을 구성합니다.', 'Use server-side encryption with AWS Key Management Service (AWS KMS) customer provided (imported) keys. Configure key rotation.'),
  (779, 190, 'Amazon S3 버킷을 생성합니다. S3 버킷에서 정적 웹 호스팅을 활성화합니다. 정적 콘텐츠를 S3 버킷에 업로드합니다. 모든 동적 콘텐츠를 처리하기 위해 AWS Lambda를 사용합니다.', 'Create an Amazon S3 bucket. Enable static web hosting on the S3 bucket. Upload the static content to the S3 bucket. Use AWS Lambda to process all dynamic content.'),
  (780, 190, '웹 애플리케이션을 AWS Elastic Beanstalk 환경에 배포합니다. 기능 테스트를 위해 여러 Elastic Beanstalk 환경 간에 URL 스와핑(URL swapping)을 사용합니다.', 'Deploy the web application to an AWS Elastic Beanstalk environment. Use URL swapping to switch between multiple Elastic Beanstalk environments for feature testing.'),
  (781, 190, 'Java와 PHP로 구성된 Amazon EC2 인스턴스에 웹 애플리케이션을 배포합니다. Auto Scaling 그룹과 Application Load Balancer를 사용하여 웹사이트의 가용성을 관리합니다.', 'Deploy the web application to Amazon EC2 instances that are configured with Java and PHP. Use Auto Scaling groups and an Application Load Balancer to manage the website’s availability.'),
  (782, 190, '웹 애플리케이션을 컨테이너화합니다. 웹 애플리케이션을 Amazon EC2 인스턴스에 배포합니다. AWS Load Balancer Controller를 사용하여 새로운 사이트 기능을 포함하는 컨테이너 간의 트래픽을 동적으로 라우팅합니다.', 'Containerize the web application. Deploy the web application to Amazon EC2 instances. Use the AWS Load Balancer Controller to dynamically route traffic between containers that contain the new site features for testing.'),
  (783, 191, '읽기 전용 복제본(Read Replica)을 생성합니다. 보고 쿼리를 읽기 전용 복제본에서 실행합니다.', 'Create a read replica. Move reporting queries to the read replica.'),
  (784, 191, '읽기 전용 복제본(Read Replica)을 생성합니다. 주문 애플리케이션을 기본 DB 인스턴스와 읽기 전용 복제본에 분산합니다.', 'Create a read replica. Distribute the ordering application to the primary DB instance and the read replica.'),
  (785, 191, '주문 애플리케이션을 온디맨드 용량을 사용하는 Amazon DynamoDB로 마이그레이션합니다.', 'Migrate the ordering application to Amazon DynamoDB with on-demand capacity.'),
  (786, 191, '보고 쿼리를 피크가 아닌 시간으로 예약합니다.', 'Schedule the reporting queries for non-peak hours.'),
  (787, 192, '문서 정보를 MySQL 데이터베이스가 실행되는 Amazon EC2 인스턴스에 작성합니다.', 'Write the document information to an Amazon EC2 instance that runs a MySQL database.'),
  (788, 192, '문서 정보를 Amazon S3 버킷에 작성합니다. Amazon Athena를 사용하여 데이터를 쿼리합니다.', 'Write the document information to an Amazon S3 bucket. Use Amazon Athena to query the data.'),
  (789, 192, '스캔된 파일을 처리하고 의료 정보를 추출하는 맞춤 애플리케이션을 실행하는 Amazon EC2 인스턴스의 Auto Scaling 그룹을 생성합니다.', 'Create an Auto Scaling group of Amazon EC2 instances to run a custom application that processes the scanned files and extracts the medical information.'),
  (790, 192, '새 문서가 업로드될 때 실행되는 AWS Lambda 함수를 생성합니다. Amazon Rekognition을 사용하여 문서를 원시 텍스트로 변환하고, Amazon Transcribe Medical을 사용하여 텍스트에서 관련 의료 정보를 감지하고 추출합니다.', 'Create an AWS Lambda function that runs when new documents are uploaded. Use Amazon Rekognition to convert the documents to raw text. Use Amazon Transcribe Medical to detect and extract relevant medical information from the text.'),
  (791, 192, '새 문서가 업로드될 때 실행되는 AWS Lambda 함수를 생성합니다. Amazon Textract를 사용하여 문서를 원시 텍스트로 변환하고, Amazon Comprehend Medical을 사용하여 텍스트에서 관련 의료 정보를 감지하고 추출합니다.', 'Create an AWS Lambda function that runs when new documents are uploaded. Use Amazon Textract to convert the documents to raw text. Use Amazon Comprehend Medical to detect and extract relevant medical information from the text.'),
  (792, 193, 'Amazon RDS 읽기 전용 복제본(read replicas)을 추가합니다.', 'Add Amazon RDS read replicas.'),
  (793, 193, 'Amazon ElastiCache for Redis를 사용합니다.', 'Use Amazon ElastiCache for Redis.'),
  (794, 193, 'Amazon Route 53 DNS 캐싱을 사용합니다.', 'Use Amazon Route 53 DNS caching'),
  (795, 193, 'Amazon ElastiCache for Memcached를 사용합니다.', 'Use Amazon ElastiCache for Memcached.'),
  (796, 194, '두 개의 EC2 인스턴스를 시작합니다. 각 인스턴스는 동일한 AWS 리전 내 서로 다른 가용 영역에 배치합니다. 두 EC2 인스턴스에 데이터베이스를 설치합니다. EC2 인스턴스를 클러스터로 구성하고 데이터베이스 복제를 설정합니다.', 'Launch two EC2 instances, each in a different Availability Zone in the same AWS Region. Install the database on both EC2 instances. Configure the EC2 instances as a cluster. Set up database replication.'),
  (797, 194, '한 가용 영역에 EC2 인스턴스를 시작합니다. EC2 인스턴스에 데이터베이스를 설치합니다. Amazon Machine Image(AMI)를 사용하여 데이터를 백업합니다. 장애가 발생하면 AWS CloudFormation을 사용해 EC2 인스턴스를 자동으로 프로비저닝합니다.', 'Launch an EC2 instance in an Availability Zone. Install the database on the EC2 instance. Use an Amazon Machine Image (AMI) to back up the data. Use AWS CloudFormation to automate provisioning of the EC2 instance if a disruptive event occurs.'),
  (798, 194, '두 개의 EC2 인스턴스를 시작합니다. 각 인스턴스는 서로 다른 AWS 리전에 배치합니다. 두 EC2 인스턴스에 데이터베이스를 설치하고 데이터베이스 복제를 설정합니다. 데이터베이스를 두 번째 리전으로 장애 조치(failover)합니다.', 'Launch two EC2 instances, each in a different AWS Region. Install the database on both EC2 instances. Set up database replication. Fail over the database to a second Region.'),
  (799, 194, '한 가용 영역에 EC2 인스턴스를 시작합니다. EC2 인스턴스에 데이터베이스를 설치합니다. Amazon Machine Image(AMI)를 사용하여 데이터를 백업합니다. EC2 자동 복구(automatic recovery)를 사용하여 장애가 발생하면 인스턴스를 복구합니다.', 'Launch an EC2 instance in an Availability Zone. Install the database on the EC2 instance. Use an Amazon Machine Image (AMI) to back up the data. Use EC2 automatic recovery to recover the instance if a disruptive event occurs.'),
  (800, 195, 'EC2 인스턴스를 Auto Scaling 그룹으로 이동합니다. Amazon EventBridge(CloudWatch Events) 규칙을 생성하여 Amazon Elastic Container Service(Amazon ECS) 작업을 대상으로 지정합니다.', 'Move the EC2 instances into an Auto Scaling group. Create an Amazon EventBridge (Amazon CloudWatch Events) rule to target an Amazon Elastic Container Service (Amazon ECS) task.'),
  (801, 195, 'EC2 인스턴스를 Auto Scaling 그룹 뒤에 Application Load Balancer(ALB)와 함께 이동합니다. 주문 시스템이 ALB 엔드포인트로 메시지를 보내도록 업데이트합니다.', 'Move the EC2 instances into an Auto Scaling group behind an Application Load Balancer (ALB). Update the order system to send messages to the ALB endpoint.'),
  (802, 195, 'EC2 인스턴스를 Auto Scaling 그룹으로 이동합니다. 주문 시스템이 Amazon Simple Queue Service(Amazon SQS) 큐로 메시지를 보내도록 구성합니다. EC2 인스턴스가 큐에서 메시지를 소비하도록 구성합니다.', 'Move the EC2 instances into an Auto Scaling group. Configure the order system to send messages to an Amazon Simple Queue Service (Amazon SQS) queue. Configure the EC2 instances to consume messages from the queue.'),
  (803, 195, 'Amazon Simple Notification Service(Amazon SNS) 주제를 생성합니다. AWS Lambda 함수를 생성하고, 함수를 SNS 주제에 구독시킵니다. 주문 시스템이 SNS 주제로 메시지를 보내도록 구성합니다. EC2 인스턴스가 AWS Systems Manager Run Command를 사용하여 메시지를 처리하도록 명령을 보냅니다.', 'Create an Amazon Simple Notification Service (Amazon SNS) topic. Create an AWS Lambda function, and subscribe the function to the SNS topic. Configure the order system to send messages to the SNS topic. Send a command to the EC2 instances to process the messages by using AWS Systems Manager Run Command.'),
  (804, 196, 'AWS CloudFormation 템플릿을 사용하여 전체 솔루션을 배포합니다. 30일마다 CloudFormation 스택을 다시 배포하고 원래 스택을 삭제합니다.', 'Use an AWS CloudFormation template to deploy the complete solution. Redeploy the CloudFormation stack every 30 days, and delete the original stack.'),
  (805, 196, 'AWS Marketplace의 모니터링 애플리케이션을 실행하는 EC2 인스턴스를 사용합니다. 모니터링 애플리케이션을 구성하여 Amazon DynamoDB Streams를 사용해 테이블에 새 항목이 생성될 때 타임스탬프를 저장합니다. EC2 인스턴스에서 실행되는 스크립트를 사용하여 30일보다 오래된 항목을 삭제합니다.', 'Use an EC2 instance that runs a monitoring application from AWS Marketplace. Configure the monitoring application to use Amazon DynamoDB Streams to store the timestamp when a new item is created in the table. Use a script that runs on the EC2 instance to delete items that have a timestamp that is older than 30 days.'),
  (806, 196, 'Amazon DynamoDB Streams를 구성하여 테이블에 새 항목이 생성될 때 AWS Lambda 함수를 호출하도록 설정합니다. Lambda 함수를 구성하여 테이블에서 30일보다 오래된 항목을 삭제합니다.', 'Configure Amazon DynamoDB Streams to invoke an AWS Lambda function when a new item is created in the table. Configure the Lambda function to delete items in the table that are older than 30 days.'),
  (807, 196, '애플리케이션을 확장하여 테이블에 새 항목이 생성될 때 현재 타임스탬프 + 30일 값을 가지는 속성을 추가합니다. DynamoDB에서 이 속성을 TTL(Time to Live) 속성으로 사용하도록 구성합니다.', 'Extend the application to add an attribute that has a value of the current timestamp plus 30 days to each new item that is created in the table. Configure DynamoDB to use the attribute as the TTL attribute.'),
  (808, 197, 'AWS Lambda 함수(.NET Core 실행)로 서버리스로 애플리케이션을 리팩터링합니다.', 'Refactor the application as serverless with AWS Lambda functions running .NET Core.'),
  (809, 197, 'AWS Elastic Beanstalk에서 .NET 플랫폼으로 애플리케이션을 재호스트(Rehost)하고 Multi-AZ 배포를 구성합니다.', 'Rehost the application in AWS Elastic Beanstalk with the .NET platform in a Multi-AZ deployment.'),
  (810, 197, '애플리케이션을 Amazon EC2에서 Amazon Linux AMI로 재플랫폼(Replatform)합니다.', 'Replatform the application to run on Amazon EC2 with the Amazon Linux Amazon Machine Image (AMI).'),
  (811, 197, 'AWS Database Migration Service(AWS DMS)를 사용하여 Oracle 데이터베이스를 Amazon DynamoDB(Multi-AZ 배포)로 마이그레이션합니다.', 'Use AWS Database Migration Service (AWS DMS) to migrate from the Oracle database to Amazon DynamoDB in a Multi-AZ deployment.'),
  (812, 197, 'AWS Database Migration Service(AWS DMS)를 사용하여 Oracle 데이터베이스를 Amazon RDS에서 Oracle(Multi-AZ 배포)로 마이그레이션합니다.', 'Use AWS Database Migration Service (AWS DMS) to migrate from the Oracle database to Oracle on Amazon RDS in a Multi-AZ deployment.'),
  (813, 198, 'Amazon Elastic Container Service(Amazon ECS)와 Amazon EC2 워커 노드를 컴퓨트에 사용하고, MongoDB를 EC2에서 실행', 'Use Amazon Elastic Container Service (Amazon ECS) with Amazon EC2 worker nodes for compute and MongoDB on EC2 for data storage.'),
  (814, 198, 'Amazon Elastic Container Service(Amazon ECS)와 AWS Fargate를 컴퓨트에 사용하고, Amazon DynamoDB를 데이터 저장소로 사용', 'Use Amazon Elastic Container Service (Amazon ECS) with AWS Fargate for compute and Amazon DynamoDB for data storage'),
  (815, 198, 'Amazon Elastic Kubernetes Service(Amazon EKS)와 Amazon EC2 워커 노드를 컴퓨트에 사용하고, Amazon DynamoDB를 데이터 저장소로 사용', 'Use Amazon Elastic Kubernetes Service (Amazon EKS) with Amazon EC2 worker nodes for compute and Amazon DynamoDB for data storage.'),
  (816, 198, 'Amazon Elastic Kubernetes Service(Amazon EKS)와 AWS Fargate를 컴퓨트에 사용하고, Amazon DocumentDB(MongoDB 호환)를 데이터 저장소로 사용', 'Use Amazon Elastic Kubernetes Service (Amazon EKS) with AWS Fargate for compute and Amazon DocumentDB (with MongoDB compatibility) for data storage.'),
  (817, 199, '여러 화자 인식을 위해 Amazon Rekognition 사용. 전사 파일은 Amazon S3에 저장. 전사 파일 분석을 위해 머신러닝 모델 사용', 'Use Amazon Rekognition for multiple speaker recognition. Store the transcript files in Amazon S3. Use machine learning models for transcript file analysis.'),
  (818, 199, '여러 화자 인식을 위해 Amazon Transcribe 사용. 전사 파일 분석을 위해 Amazon Athena 사용', 'Use Amazon Transcribe for multiple speaker recognition. Use Amazon Athena for transcript file analysis.'),
  (819, 199, '여러 화자 인식을 위해 Amazon Translate 사용. 전사 파일은 Amazon Redshift에 저장. 전사 파일 분석을 위해 SQL 쿼리 사용', 'Use Amazon Translate for multiple speaker recognition. Store the transcript files in Amazon Redshift. Use SQL queries for transcript file analysis.'),
  (820, 199, '여러 화자 인식을 위해 Amazon Rekognition 사용. 전사 파일은 Amazon S3에 저장. 전사 파일 분석을 위해 Amazon Textract 사용', 'Use Amazon Rekognition for multiple speaker recognition. Store the transcript files in Amazon S3. Use Amazon Textract for transcript file analysis.'),
  (821, 200, '요청한 사용자가 누구인지 확인하기 위해 API Gateway에서 AWS Lambda 함수를 authorizer로 구성', 'Configure an AWS Lambda function to be an authorizer in API Gateway to validate which user made the request.'),
  (822, 200, '각 사용자마다 API 키를 생성하고 할당. 요청 시 키를 보내고 AWS Lambda 함수로 키 검증', 'For each user, create and assign an API key that must be sent with each request. Validate the key by using an AWS Lambda function.'),
  (823, 200, '매 요청마다 사용자의 이메일 주소를 헤더에 전송. AWS Lambda 함수로 이메일 사용자가 접근 권한이 있는지 검증', 'Send the user’s email address in the header with every request. Invoke an AWS Lambda function to validate that the user with that email address has proper access.'),
  (824, 200, 'Amazon Cognito 사용자 풀 authorizer를 API Gateway에서 구성하여 Amazon Cognito가 각 요청을 검증하도록 허용', 'Configure an Amazon Cognito user pool authorizer in API Gateway to allow Amazon Cognito to validate each request.'),
  (825, 201, 'SMS 메시지를 보내기 위해 Amazon Connect 연락 흐름(contact flow)을 생성합니다. 응답을 처리하기 위해 AWS Lambda를 사용합니다.', 'Create an Amazon Connect contact flow to send the SMS messages. Use AWS Lambda to process the responses.'),
  (826, 201, 'Amazon Pinpoint 여정을 구축합니다. 분석 및 아카이빙을 위해 이벤트를 Amazon Kinesis 데이터 스트림으로 전송하도록 Amazon Pinpoint를 구성합니다.', 'Build an Amazon Pinpoint journey. Configure Amazon Pinpoint to send events to an Amazon Kinesis data stream for analysis and archiving.'),
  (827, 201, 'SMS 메시지를 분배하기 위해 Amazon Simple Queue Service(Amazon SQS)를 사용합니다. 응답을 처리하기 위해 AWS Lambda를 사용합니다.', 'Use Amazon Simple Queue Service (Amazon SQS) to distribute the SMS messages. Use AWS Lambda to process the responses.'),
  (828, 201, 'Amazon Simple Notification Service(Amazon SNS) FIFO 주제를 생성합니다. 분석 및 아카이빙을 위해 Amazon Kinesis 데이터 스트림을 SNS 주제에 구독시킵니다.', 'Create an Amazon Simple Notification Service (Amazon SNS) FIFO topic. Subscribe an Amazon Kinesis data stream to the SNS topic for analysis and archiving.'),
  (829, 202, '데이터를 S3 버킷으로 이동합니다. Amazon S3 관리형 암호화 키(SSE-S3)를 사용한 서버 측 암호화를 사용합니다. SSE-S3 암호화 키의 기본 제공 키 로테이션 동작을 사용합니다.', 'Move the data to the S3 bucket. Use server-side encryption with Amazon S3 managed encryption keys (SSE-S3). Use the built-in key rotation behavior of SSE-S3 encryption keys.'),
  (830, 202, 'AWS Key Management Service(AWS KMS) 고객 관리형 키를 생성합니다. 자동 키 로테이션을 활성화합니다. S3 버킷의 기본 암호화 동작이 고객 관리형 KMS 키를 사용하도록 설정합니다. 데이터를 S3 버킷으로 이동합니다.', 'Create an AWS Key Management Service (AWS KMS) customer managed key. Enable automatic key rotation. Set the S3 bucket’s default encryption behavior to use the customer managed KMS key. Move the data to the S3 bucket.'),
  (831, 202, 'AWS Key Management Service(AWS KMS) 고객 관리형 키를 생성합니다. S3 버킷의 기본 암호화 동작이 고객 관리형 KMS 키를 사용하도록 설정합니다. 데이터를 S3 버킷으로 이동합니다. 매년 KMS 키를 수동으로 로테이션합니다.', 'Create an AWS Key Management Service (AWS KMS) customer managed key. Set the S3 bucket’s default encryption behavior to use the customer managed KMS key. Move the data to the S3 bucket. Manually rotate the KMS key every year.'),
  (832, 202, '데이터를 S3 버킷으로 이동하기 전에 고객 키 자료로 데이터를 암호화합니다. 키 자료가 없는 AWS Key Management Service(AWS KMS) 키를 생성합니다. 해당 KMS 키에 고객 키 자료를 가져옵니다(Import). 자동 키 로테이션을 활성화합니다.', 'Encrypt the data with customer key material before moving the data to the S3 bucket. Create an AWS Key Management Service (AWS KMS) key without key material. Import the customer key material into the KMS key. Enable automatic key rotation.'),
  (833, 203, 'DynamoDB 데이터베이스 앞에 DynamoDB Accelerator(DAX) 클러스터를 추가합니다.', 'Add a DynamoDB Accelerator (DAX) cluster in front of the DynamoDB database.'),
  (834, 203, '약속 요청을 수락하는 웹 애플리케이션 앞에 Amazon API Gateway API를 추가합니다.', 'Add an Amazon API Gateway API in front of the web application that accepts the appointment requests.'),
  (835, 203, 'Amazon CloudFront 배포를 추가합니다. 오리진을 약속 요청을 수락하는 웹 애플리케이션으로 설정합니다.', 'Add an Amazon CloudFront distribution. Set the origin as the web application that accepts the appointment requests.'),
  (836, 203, '미팅 초대장을 보내는 애플리케이션에 대해 Auto Scaling 그룹을 추가합니다. Auto Scaling 그룹이 SQS 큐의 깊이에 따라 확장되도록 구성합니다.', 'Add an Auto Scaling group for the application that sends meeting invitations. Configure the Auto Scaling group to scale based on the depth of the SQS queue.'),
  (837, 204, '구매 데이터를 Amazon RDS에 직접 쓰도록 마이그레이션합니다. 액세스를 제한하기 위해 RDS 액세스 제어를 사용합니다.', 'Migrate the purchase data to write directly to Amazon RDS. Use RDS access controls to limit access.'),
  (838, 204, 'AWS Lambda 함수를 예약하여 Amazon RDS에서 Amazon S3로 주기적으로 데이터를 복사합니다. AWS Glue 크롤러를 생성합니다. Amazon Athena를 사용하여 데이터를 쿼리합니다. 액세스를 제한하기 위해 S3 정책을 사용합니다.', 'Schedule an AWS Lambda function to periodically copy data from Amazon RDS to Amazon S3. Create an AWS Glue crawler. Use Amazon Athena to query the data. Use S3 policies to limit access.'),
  (839, 204, 'AWS Lake Formation을 사용하여 데이터 레이크를 생성합니다. Amazon RDS에 대한 AWS Glue JDBC 연결을 생성합니다. Lake Formation에 S3 버킷을 등록합니다. 액세스를 제한하기 위해 Lake Formation 액세스 제어를 사용합니다.', 'Create a data lake by using AWS Lake Formation. Create an AWS Glue JDBC connection to Amazon RDS. Register the S3 bucket in Lake Formation. Use Lake Formation access controls to limit access.'),
  (840, 204, 'Amazon Redshift 클러스터를 생성합니다. AWS Lambda 함수를 예약하여 Amazon S3 및 Amazon RDS에서 Amazon Redshift로 주기적으로 데이터를 복사합니다. 액세스를 제한하기 위해 Amazon Redshift 액세스 제어를 사용합니다.', 'Create an Amazon Redshift cluster. Schedule an AWS Lambda function to periodically copy data from Amazon S3 and Amazon RDS to Amazon Redshift. Use Amazon Redshift access controls to limit access.'),
  (841, 205, 'Amazon Lightsail을 사용하여 가상 서버를 생성합니다. Lightsail 인스턴스에 웹 서버를 구성합니다. SFTP 클라이언트를 사용하여 웹사이트 콘텐츠를 업로드합니다.', 'Create a virtual server by using Amazon Lightsail. Configure the web server in the Lightsail instance. Upload website content by using an SFTP client.'),
  (842, 205, 'Amazon EC2 인스턴스를 위한 AWS Auto Scaling 그룹을 생성합니다. Application Load Balancer를 사용합니다. SFTP 클라이언트를 사용하여 웹사이트 콘텐츠를 업로드합니다.', 'Create an AWS Auto Scaling group for Amazon EC2 instances. Use an Application Load Balancer. Upload website content by using an SFTP client.'),
  (843, 205, '비공개 Amazon S3 버킷을 생성합니다. S3 버킷 정책을 사용하여 CloudFront 오리진 액세스 아이덴티티(OAI)에서의 액세스를 허용합니다. AWS CLI를 사용하여 웹사이트 콘텐츠를 업로드합니다.', 'Create a private Amazon S3 bucket. Use an S3 bucket policy to allow access from a CloudFront origin access identity (OAI). Upload website content by using the AWS CLI.'),
  (844, 205, '퍼블릭 Amazon S3 버킷을 생성합니다. SFTP용 AWS Transfer를 구성합니다. S3 버킷을 웹사이트 호스팅으로 구성합니다. SFTP 클라이언트를 사용하여 웹사이트 콘텐츠를 업로드합니다.', 'Create a public Amazon S3 bucket. Configure AWS Transfer for SFTP. Configure the S3 bucket for website hosting. Upload website content by using the SFTP client.'),
  (845, 206, 'CreateImage API 호출이 감지되면 AWS CloudTrail 로그를 쿼리하고 알림을 보내는 AWS Lambda 함수를 생성합니다.', 'Create an AWS Lambda function to query AWS CloudTrail logs and to send an alert when a CreateImage API call is detected.'),
  (846, 206, '업데이트된 로그가 Amazon S3로 전송될 때 발생하는 Amazon Simple Notification Service(Amazon SNS) 알림과 함께 AWS CloudTrail을 구성합니다. API 호출이 감지될 때 CreateImage를 쿼리하기 위해 Amazon Athena에서 새 테이블을 생성하고 쿼리합니다.', 'Configure AWS CloudTrail with an Amazon Simple Notification Service (Amazon SNS) notification that occurs when updated logs are sent to Amazon S3. Use Amazon Athena to create a new table and to query on CreateImage when an API call is detected.'),
  (847, 206, 'CreateImage API 호출에 대한 Amazon EventBridge(Amazon CloudWatch Events) 규칙을 생성합니다. CreateImage API 호출이 감지되면 알림을 보내기 위해 대상을 Amazon Simple Notification Service(Amazon SNS) 주제로 구성합니다.', 'Create an Amazon EventBridge (Amazon CloudWatch Events) rule for the CreateImage API call. Configure the target as an Amazon Simple Notification Service (Amazon SNS) topic to send an alert when a CreateImage API call is detected.'),
  (848, 206, 'AWS CloudTrail 로그의 대상으로 Amazon Simple Queue Service(Amazon SQS) FIFO 큐를 구성합니다. CreateImage API 호출이 감지되면 Amazon Simple Notification Service(Amazon SNS) 주제로 알림을 보내는 AWS Lambda 함수를 생성합니다.', 'Configure an Amazon Simple Queue Service (Amazon SQS) FIFO queue as a target for AWS CloudTrail logs. Create an AWS Lambda function to send an alert to an Amazon Simple Notification Service (Amazon SNS) topic when a CreateImage API call is detected.'),
  (849, 207, '서버 측 스로틀 제한으로 API Gateway에 스로틀링을 추가합니다.', 'Add throttling on the API Gateway with server-side throttling limits.'),
  (850, 207, 'DynamoDB Accelerator(DAX)와 Lambda를 사용하여 DynamoDB에 대한 쓰기를 버퍼링합니다.', 'Use DynamoDB Accelerator (DAX) and Lambda to buffer writes to DynamoDB.'),
  (851, 207, '사용자 요청이 있는 테이블에 대해 DynamoDB에 보조 인덱스를 생성합니다.', 'Create a secondary index in DynamoDB for the table with the user requests.'),
  (852, 207, 'Amazon Simple Queue Service(Amazon SQS) 큐와 Lambda를 사용하여 DynamoDB에 대한 쓰기를 버퍼링합니다.', 'Use the Amazon Simple Queue Service (Amazon SQS) queue and Lambda to buffer writes to DynamoDB.'),
  (853, 208, 'EC2 인스턴스가 위치한 서브넷에 Amazon S3용 인터페이스 VPC 엔드포인트를 생성합니다. 액세스를 EC2 인스턴스의 IAM 역할만 허용하도록 S3 버킷에 리소스 정책을 연결합니다.', 'Create an interface VPC endpoint for Amazon S3 in the subnet where the EC2 instance is located. Attach a resource policy to the S3 bucket to only allow the EC2 instance’s IAM role for access.'),
  (854, 208, 'EC2 인스턴스가 위치한 가용 영역에 Amazon S3용 게이트웨이 VPC 엔드포인트를 생성합니다. 엔드포인트에 적절한 보안 그룹을 연결합니다. 액세스를 EC2 인스턴스의 IAM 역할만 허용하도록 S3 버킷에 리소스 정책을 연결합니다.', 'Create a gateway VPC endpoint for Amazon S3 in the Availability Zone where the EC2 instance is located. Attach appropriate security groups to the endpoint. Attach a resource policy to the S3 bucket to only allow the EC2 instance’s IAM role for access.'),
  (855, 208, 'EC2 인스턴스 내부에서 nslookup 도구를 실행하여 S3 버킷의 서비스 API 엔드포인트의 프라이빗 IP 주소를 가져옵니다. VPC 라우팅 테이블에 경로를 생성하여 EC2 인스턴스가 S3 버킷에 액세스할 수 있도록 합니다. 액세스를 EC2 인스턴스의 IAM 역할만 허용하도록 S3 버킷에 리소스 정책을 연결합니다.', 'Run the nslookup tool from inside the EC2 instance to obtain the private IP address of the S3 bucket’s service API endpoint. Create a route in the VPC route table to provide the EC2 instance with access to the S3 bucket. Attach a resource policy to the S3 bucket to only allow the EC2 instance’s IAM role for access.'),
  (856, 208, 'AWS에서 제공하는 공개 ip-ranges.json 파일을 사용하여 S3 버킷의 서비스 API 엔드포인트의 프라이빗 IP 주소를 가져옵니다. VPC 라우팅 테이블에 경로를 생성하여 EC2 인스턴스가 S3 버킷에 액세스할 수 있도록 합니다. 액세스를 EC2 인스턴스의 IAM 역할만 허용하도록 S3 버킷에 리소스 정책을 연결합니다.', 'Use the AWS provided, publicly available ip-ranges.json file to obtain the private IP address of the S3 bucket’s service API endpoint. Create a route in the VPC route table to provide the EC2 instance with access to the S3 bucket. Attach a resource policy to the S3 bucket to only allow the EC2 instance’s IAM role for access.'),
  (857, 209, 'Amazon ElastiCache를 사용하여 세션 데이터를 관리하고 저장합니다.', 'Use Amazon ElastiCache to manage and store session data.'),
  (858, 209, 'ALB의 세션 어피니티(스티키 세션)를 사용하여 세션 데이터를 관리합니다.', 'Use session affinity (sticky sessions) of the ALB to manage session data.'),
  (859, 209, 'AWS Systems Manager의 Session Manager를 사용하여 세션을 관리합니다.', 'Use Session Manager from AWS Systems Manager to manage the session.'),
  (860, 209, 'AWS Security Token Service(AWS STS)의 GetSessionToken API 작업을 사용하여 세션을 관리합니다.', 'Use the GetSessionToken API operation in AWS Security Token Service (AWS STS) to manage the session.'),
  (861, 210, 'Amazon CloudWatch 지표를 사용하여 Auto Scaling 그룹의 각 인스턴스 CPU를 모니터링합니다. 각 Auto Scaling 그룹의 최소 용량을 피크 워크로드 값에 맞게 구성합니다.', 'Use Amazon CloudWatch metrics to monitor the CPU of each instance in the Auto Scaling groups. Configure each Auto Scaling group’s minimum capacity according to peak workload values.'),
  (862, 210, 'Amazon CloudWatch 지표를 사용하여 Auto Scaling 그룹의 각 인스턴스 CPU를 모니터링합니다. Amazon Simple Notification Service(Amazon SNS) 주제를 호출하는 CloudWatch 경보를 구성하여 온디맨드로 추가 Auto Scaling 그룹을 생성합니다.', 'Use Amazon CloudWatch metrics to monitor the CPU of each instance in the Auto Scaling groups. Configure a CloudWatch alarm to invoke an Amazon Simple Notification Service (Amazon SNS) topic that creates additional Auto Scaling groups on demand.'),
  (863, 210, '두 개의 Amazon Simple Queue Service(Amazon SQS) 큐를 프로비저닝합니다: 하나는 주문 수집용, 다른 하나는 주문 이행용. EC2 인스턴스가 각자의 큐를 폴링하도록 구성합니다. 큐가 보내는 알림을 기반으로 Auto Scaling 그룹을 스케일링합니다.', 'Provision two Amazon Simple Queue Service (Amazon SQS) queues: one for order collection and another for order fulfillment. Configure the EC2 instances to poll their respective queue. Scale the Auto Scaling groups based on notifications that the queues send.'),
  (864, 210, '두 개의 Amazon Simple Queue Service(Amazon SQS) 큐를 프로비저닝합니다: 하나는 주문 수집용, 다른 하나는 주문 이행용. EC2 인스턴스가 각자의 큐를 폴링하도록 구성합니다. 인스턴스당 백로그 계산을 기반으로 한 지표를 생성합니다. 이 지표를 기반으로 Auto Scaling 그룹을 스케일링합니다.', 'Provision two Amazon Simple Queue Service (Amazon SQS) queues: one for order collection and another for order fulfillment. Configure the EC2 instances to poll their respective queue. Create a metric based on a backlog per instance calculation. Scale the Auto Scaling groups based on this metric.'),
  (865, 211, 'AWS CloudTrail을 사용하여 application 태그가 있는 리소스 목록을 생성합니다.', 'Use AWS CloudTrail to generate a list of resources with the application tag.'),
  (866, 211, 'AWS CLI를 사용하여 모든 리전의 각 서비스에 쿼리하여 태그된 컴포넌트를 보고합니다.', 'Use the AWS CLI to query each service across all Regions to report the tagged components.'),
  (867, 211, 'Amazon CloudWatch Logs Insights에서 쿼리를 실행하여 application 태그가 있는 컴포넌트를 보고합니다.', 'Run a query in Amazon CloudWatch Logs Insights to report on the components with the application tag.'),
  (868, 211, 'AWS Resource Groups Tag Editor로 쿼리를 실행하여 application 태그가 있는 리소스를 전역적으로 보고합니다.', 'Run a query with the AWS Resource Groups Tag Editor to report on the resources globally with the application tag.'),
  (869, 212, 'S3 Intelligent-Tiering', 'S3 Intelligent-Tiering'),
  (870, 212, 'S3 Glacier Instant Retrieval', 'S3 Glacier Instant Retrieval'),
  (871, 212, 'S3 Standard', 'S3 Standard'),
  (872, 212, 'S3 Standard-Infrequent Access (S3 Standard-IA)', 'S3 Standard-Infrequent Access (S3 Standard-IA)'),
  (873, 213, 'AWS WAF 규칙을 구성하고 이를 ALB에 연결합니다.', 'Configure AWS WAF rules and associate them with the ALB.'),
  (874, 213, '공개 호스팅이 활성화된 Amazon S3를 사용하여 애플리케이션을 배포합니다.', 'Deploy the application using Amazon S3 with public hosting enabled.'),
  (875, 213, 'AWS Shield Advanced를 배포하고 ALB를 보호 대상에 추가합니다.', 'Deploy AWS Shield Advanced and add the ALB as a protected resource.'),
  (876, 213, '서드파티 방화벽이 실행되는 Amazon EC2 인스턴스로 트래픽을 전달하는 새로운 ALB를 생성하고, 해당 방화벽이 트래픽을 현재 ALB로 전달하도록 합니다.', 'Create a new ALB that directs traffic to an Amazon EC2 instance running a third-party firewall, which then passes the traffic to the current ALB.'),
  (877, 214, 'Apache Spark가 설치된 Amazon EMR 클러스터를 생성합니다. 데이터를 변환하기 위한 Spark 애플리케이션을 작성합니다. 변환된 데이터 버킷에 파일을 쓰기 위해 EMR 파일 시스템(EMRFS)을 사용합니다.', 'Create an Amazon EMR cluster with Apache Spark installed. Write a Spark application to transform the data. Use EMR File System (EMRFS) to write files to the transformed data bucket.'),
  (878, 214, '데이터를 검색하기 위한 AWS Glue 크롤러를 생성합니다. 데이터를 변환하기 위한 AWS Glue ETL(추출, 변환, 로드) 작업을 생성합니다. 출력 단계에서 변환된 데이터 버킷을 지정합니다.', 'Create an AWS Glue crawler to discover the data. Create an AWS Glue extract, transform, and load (ETL) job to transform the data. Specify the transformed data bucket in the output step.'),
  (879, 214, '데이터를 변환하고 변환된 데이터 버킷으로 데이터를 출력하기 위한 Bash 구문으로 작업 정의를 생성하기 위해 AWS Batch를 사용합니다. 작업 정의를 사용하여 작업을 제출합니다. 작업 유형으로 배열 작업을 지정합니다.', 'Use AWS Batch to create a job definition with Bash syntax to transform the data and output the data to the transformed data bucket. Use the job definition to submit a job. Specify an array job as the job type.'),
  (880, 214, '데이터를 변환하고 변환된 데이터 버킷으로 데이터를 출력하기 위한 AWS Lambda 함수를 생성합니다. S3 버킷에 대한 이벤트 알림을 구성합니다. 이벤트 알림의 대상으로 Lambda 함수를 지정합니다.', 'Create an AWS Lambda function to transform the data and output the data to the transformed data bucket. Configure an event notification for the S3 bucket. Specify the Lambda function as the destination for the event notification.'),
  (881, 215, '데이터를 전송하기 위해 AWS Snowball 디바이스를 주문합니다. 수명 주기 정책을 사용하여 파일을 Amazon S3 Glacier Deep Archive로 전환합니다.', 'Order AWS Snowball devices to transfer the data. Use a lifecycle policy to transition the files to Amazon S3 Glacier Deep Archive.'),
  (882, 215, '데이터 센터와 Amazon VPC 사이에 VPN 연결을 배포합니다. 온프레미스에서 Amazon S3 Glacier로 데이터를 복사하기 위해 AWS CLI를 사용합니다.', 'Deploy a VPN connection between the data center and Amazon VPC. Use the AWS CLI to copy the data from on premises to Amazon S3 Glacier.'),
  (883, 215, '500Mbps AWS Direct Connect 연결을 프로비저닝하고 데이터를 Amazon S3로 전송합니다. 수명 주기 정책을 사용하여 파일을 Amazon S3 Glacier Deep Archive로 전환합니다.', 'Provision a 500 Mbps AWS Direct Connect connection and transfer the data to Amazon S3. Use a lifecycle policy to transition the files to Amazon S3 Glacier Deep Archive.'),
  (884, 215, 'AWS DataSync를 사용하여 데이터를 전송하고 온프레미스에 DataSync 에이전트를 배포합니다. DataSync 작업을 사용하여 온프레미스 NAS 스토리지에서 Amazon S3 Glacier로 파일을 복사합니다.', 'Use AWS DataSync to transfer the data and deploy a DataSync agent on premises. Use the DataSync task to copy files from the on-premises NAS storage to Amazon S3 Glacier.'),
  (885, 216, '새로운 S3 버킷을 생성합니다. 새 S3 버킷에 대해 기본 암호화 설정을 켭니다. 모든 기존 객체를 임시 로컬 스토리지로 다운로드합니다. 객체를 새 S3 버킷에 업로드합니다.', 'Create a new S3 bucket. Turn on the default encryption settings for the new S3 bucket. Download all existing objects to temporary local storage. Upload the objects to the new S3 bucket.'),
  (886, 216, 'S3 버킷의 기본 암호화 설정을 켭니다. 암호화되지 않은 객체를 나열하는 .csv 파일을 생성하기 위해 S3 인벤토리 기능을 사용합니다. 이러한 객체를 암호화하기 위해 copy 명령을 사용하는 S3 배치 작업을 실행합니다.', 'Turn on the default encryption settings for the S3 bucket. Use the S3 Inventory feature to create a .csv file that lists the unencrypted objects. Run an S3 Batch Operations job that uses the copy command to encrypt those objects.'),
  (887, 216, 'AWS Key Management Service(AWS KMS)를 사용하여 새 암호화 키를 생성합니다. S3 버킷의 설정을 변경하여 AWS KMS 관리형 암호화 키(SSE-KMS)를 사용하는 서버 측 암호화를 사용하도록 합니다. S3 버킷에 버저닝을 켭니다.', 'Create a new encryption key by using AWS Key Management Service (AWS KMS). Change the settings on the S3 bucket to use server-side encryption with AWS KMS managed encryption keys (SSE-KMS). Turn on versioning for the S3 bucket.'),
  (888, 216, 'AWS 관리 콘솔에서 Amazon S3로 이동합니다. S3 버킷의 객체를 탐색합니다. 암호화 필드로 정렬합니다. 암호화되지 않은 각 객체를 선택합니다. S3 버킷의 모든 암호화되지 않은 객체에 기본 암호화 설정을 적용하기 위해 Modify 버튼을 사용합니다.', 'Navigate to Amazon S3 in the AWS Management Console. Browse the S3 bucket’s objects. Sort by the encryption field. Select each unencrypted object. Use the Modify button to apply default encryption settings to every unencrypted object in the S3 bucket.'),
  (889, 217, '필요한 인프라 요소를 갖춘 상태로 애플리케이션을 배포합니다. Amazon Route 53을 사용하여 액티브-패시브 페일오버를 구성합니다. 두 번째 AWS 리전에 Aurora 리플리카를 생성합니다.', 'Deploy the application with the required infrastructure elements in place. Use Amazon Route 53 to configure active-passive failover. Create an Aurora Replica in a second AWS Region.'),
  (890, 217, '두 번째 AWS 리전에 축소된 배포로 애플리케이션을 호스팅합니다. Amazon Route 53을 사용하여 액티브-액티브 페일오버를 구성합니다. 두 번째 리전에 Aurora 리플리카를 생성합니다.', 'Host a scaled-down deployment of the application in a second AWS Region. Use Amazon Route 53 to configure active-active failover. Create an Aurora Replica in the second Region.'),
  (891, 217, '프라이머리 인프라를 두 번째 AWS 리전에 복제합니다. Amazon Route 53을 사용하여 액티브-액티브 페일오버를 구성합니다. 최신 스냅샷에서 복원된 Aurora 데이터베이스를 생성합니다.', 'Replicate the primary infrastructure in a second AWS Region. Use Amazon Route 53 to configure active-active failover. Create an Aurora database that is restored from the latest snapshot.'),
  (892, 217, 'AWS Backup으로 데이터를 백업합니다. 백업을 사용하여 두 번째 AWS 리전에 필요한 인프라를 생성합니다. Amazon Route 53을 사용하여 액티브-패시브 페일오버를 구성합니다. 두 번째 리전에 Aurora 두 번째 프라이머리 인스턴스를 생성합니다.', 'Back up data with AWS Backup. Use the backup to create the required infrastructure in a second AWS Region. Use Amazon Route 53 to configure active-passive failover. Create an Aurora second primary instance in the second Region.'),
  (893, 218, '소스 0.0.0.0/0에서 TCP 포트 443을 허용하는 규칙이 있는 보안 그룹을 생성합니다.', 'Create a security group with a rule to allow TCP port 443 from source 0.0.0.0/0.'),
  (894, 218, '대상 0.0.0.0/0으로 TCP 포트 443을 허용하는 규칙이 있는 보안 그룹을 생성합니다.', 'Create a security group with a rule to allow TCP port 443 to destination 0.0.0.0/0.'),
  (895, 218, '소스 0.0.0.0/0에서 TCP 포트 443을 허용하도록 네트워크 ACL을 업데이트합니다.', 'Update the network ACL to allow TCP port 443 from source 0.0.0.0/0.'),
  (896, 218, '소스 0.0.0.0/0 및 대상 0.0.0.0/0에 대해 인바운드/아웃바운드 TCP 포트 443을 허용하도록 네트워크 ACL을 업데이트합니다.', 'Update the network ACL to allow inbound/outbound TCP port 443 from source 0.0.0.0/0 and to destination 0.0.0.0/0.'),
  (897, 218, '소스 0.0.0.0/0에서 인바운드 TCP 포트 443을 허용하고, 대상 0.0.0.0/0에 대해 아웃바운드 TCP 포트 32768–65535를 허용하도록 네트워크 ACL을 업데이트합니다.', 'Update the network ACL to allow inbound TCP port 443 from source 0.0.0.0/0 and outbound TCP port 32768-65535 to destination 0.0.0.0/0.'),
  (898, 219, 'EC2 인스턴스를 Auto Scaling 그룹에서 실행되는 T3 EC2 인스턴스로 교체합니다. AWS Management Console을 사용하여 변경합니다.', 'Replace the EC2 instances with T3 EC2 instances that run in an Auto Scaling group. Make the changes by using the AWS Management Console.'),
  (899, 219, 'CloudFormation 템플릿을 수정하여 EC2 인스턴스를 Auto Scaling 그룹에서 실행되도록 합니다. 필요할 때 수동으로 Auto Scaling 그룹의 원하는 용량(desired capacity)과 최대 용량을 늘립니다.', 'Modify the CloudFormation templates to run the EC2 instances in an Auto Scaling group. Increase the desired capacity and the maximum capacity of the Auto Scaling group manually when an increase is necessary.'),
  (900, 219, 'CloudFormation 템플릿을 수정합니다. EC2 인스턴스를 R5 EC2 인스턴스로 교체합니다. 향후 용량 계획을 위해 애플리케이션 성능을 추적하도록 Amazon CloudWatch의 기본 제공 EC2 메모리 지표를 사용합니다.', 'Modify the CloudFormation templates. Replace the EC2 instances with R5 EC2 instances. Use Amazon CloudWatch built-in EC2 memory metrics to track the application performance for future capacity planning.'),
  (901, 219, 'CloudFormation 템플릿을 수정합니다. EC2 인스턴스를 R5 EC2 인스턴스로 교체합니다. 향후 용량 계획을 위해 사용자 지정 애플리케이션 지연 시간 지표를 생성하도록 EC2 인스턴스에 Amazon CloudWatch 에이전트를 배포합니다.', 'Modify the CloudFormation templates. Replace the EC2 instances with R5 EC2 instances. Deploy the Amazon CloudWatch agent on the EC2 instances to generate custom application latency metrics for future capacity planning.'),
  (902, 220, 'AWS Glue 작업', 'An AWS Glue job'),
  (903, 220, 'AWS Lambda 함수', 'An AWS Lambda function'),
  (904, 220, 'Amazon Elastic Kubernetes Service(Amazon EKS)에 호스팅된 컨테이너형 서비스', 'A containerized service hosted in Amazon Elastic Kubernetes Service (Amazon EKS)'),
  (905, 220, 'Amazon EC2와 함께 Amazon ECS에 호스팅된 컨테이너형 서비스', 'A containerized service hosted in Amazon ECS with Amazon EC2'),
  (906, 221, 'Amazon Elastic Block Store (Amazon EBS)', 'Amazon Elastic Block Store (Amazon EBS)'),
  (907, 221, 'Amazon Elastic File System (Amazon EFS)', 'Amazon Elastic File System (Amazon EFS)'),
  (908, 221, 'Amazon EC2 인스턴스 스토어', 'Amazon EC2 instance store'),
  (909, 221, 'Amazon S3', 'Amazon S3'),
  (910, 222, '회사 계정에 IAM 역할을 생성하여 벤더의 IAM 역할에 위임(access delegate)합니다. 벤더가 필요한 권한에 대해 적절한 IAM 정책을 역할에 연결합니다.', 'Create an IAM role in the company’s account to delegate access to the vendor’s IAM role. Attach the appropriate IAM policies to the role for the permissions that the vendor requires.'),
  (911, 222, '회사 계정에 IAM 사용자를 생성하고, 비밀번호 복잡성 요구사항을 충족하는 비밀번호를 설정합니다. 벤더가 필요한 권한에 대해 적절한 IAM 정책을 사용자에 연결합니다.', 'Create an IAM user in the company’s account with a password that meets the password complexity requirements. Attach the appropriate IAM policies to the user for the permissions that the vendor requires.'),
  (912, 222, '회사 계정에 IAM 그룹을 생성합니다. 벤더 계정의 도구의 IAM 사용자를 그룹에 추가합니다. 벤더가 필요한 권한에 대해 적절한 IAM 정책을 그룹에 연결합니다.', 'Create an IAM group in the company’s account. Add the tool’s IAM user from the vendor account to the group. Attach the appropriate IAM policies to the group for the permissions that the vendor requires.'),
  (913, 222, 'IAM 콘솔에서 공급자 유형으로 "AWS 계정"을 선택하여 새 ID 공급자를 생성합니다. 벤더의 AWS 계정 ID와 사용자 이름을 제공합니다. 벤더가 필요한 권한에 대해 적절한 IAM 정책을 새 공급자에 연결합니다.', 'Create a new identity provider by choosing “AWS account” as the provider type in the IAM console. Supply the vendor’s AWS account ID and user name. Attach the appropriate IAM policies to the new provider for the permissions that the vendor requires.'),
  (914, 223, '충분한 권한을 가진 IAM 역할을 EKS 파드에 연결합니다.', 'Attach an IAM role that has sufficient privileges to the EKS pod.'),
  (915, 223, '충분한 권한을 가진 IAM 사용자를 EKS 파드에 연결합니다.', 'Attach an IAM user that has sufficient privileges to the EKS pod.'),
  (916, 223, '프라이빗 서브넷의 네트워크 ACL을 통해 DynamoDB 테이블로의 아웃바운드 연결을 허용합니다.', 'Allow outbound connectivity to the DynamoDB table through the private subnets’ network ACLs.'),
  (917, 223, 'DynamoDB에 대한 VPC 엔드포인트를 생성합니다.', 'Create a VPC endpoint for DynamoDB.'),
  (918, 223, '액세스 키를 Java Spring Boot 코드에 임베드합니다.', 'Embed the access keys in the Java Spring Boot code.'),
  (919, 224, 'Amazon Route 53 장애 조치(failover) 라우팅 정책을 생성합니다.', 'Create an Amazon Route 53 failover routing policy.'),
  (920, 224, 'Amazon Route 53 가중치(weighted) 라우팅 정책을 생성합니다.', 'Create an Amazon Route 53 weighted routing policy.'),
  (921, 224, 'Amazon Route 53 다중값 응답(multivalue answer) 라우팅 정책을 생성합니다.', 'Create an Amazon Route 53 multivalue answer routing policy.'),
  (922, 224, 'EC2 인스턴스 3대를 시작합니다: 하나의 가용 영역에 2대, 다른 가용 영역에 1대.', 'Launch three EC2 instances: two instances in one Availability Zone and one instance in another Availability Zone.'),
  (923, 224, 'EC2 인스턴스 4대를 시작합니다: 하나의 가용 영역에 2대, 다른 가용 영역에 2대.', 'Launch four EC2 instances: two instances in one Availability Zone and two instances in another Availability Zone.'),
  (924, 225, '활동 데이터를 Amazon Kinesis 데이터 스트림으로 보냅니다. 스트림을 Amazon S3 버킷으로 데이터를 전달하도록 구성합니다.', 'Send activity data to an Amazon Kinesis data stream. Configure the stream to deliver the data to an Amazon S3 bucket.'),
  (925, 225, '활동 데이터를 Amazon Kinesis Data Firehose 전송 스트림으로 보냅니다. 스트림을 Amazon Redshift 클러스터로 데이터를 전달하도록 구성합니다.', 'Send activity data to an Amazon Kinesis Data Firehose delivery stream. Configure the stream to deliver the data to an Amazon Redshift cluster.'),
  (926, 225, '활동 데이터를 Amazon S3 버킷에 저장합니다. S3 버킷에 데이터가 도착할 때 AWS Lambda 함수를 실행하도록 Amazon S3를 구성합니다.', 'Place activity data in an Amazon S3 bucket. Configure Amazon S3 to run an AWS Lambda function on the data as the data arrives in the S3 bucket.'),
  (927, 225, '여러 가용 영역에 분산된 Amazon EC2 인스턴스에서 수집 서비스를 생성합니다. 이 서비스를 Amazon RDS Multi-AZ 데이터베이스로 데이터를 전달하도록 구성합니다.', 'Create an ingestion service on Amazon EC2 instances that are spread across multiple Availability Zones. Configure the service to forward data to an Amazon RDS Multi-AZ database.'),
  (928, 226, 'AWS Glue를 사용하여 Amazon S3의 원시 데이터를 처리합니다.', 'Use AWS Glue to process the raw data in Amazon S3.'),
  (929, 226, 'Amazon Route 53을 사용하여 트래픽을 서로 다른 EC2 인스턴스로 라우팅합니다.', 'Use Amazon Route 53 to route traffic to different EC2 instances.'),
  (930, 226, '들어오는 데이터 증가에 대응하기 위해 더 많은 EC2 인스턴스를 추가합니다.', 'Add more EC2 instances to accommodate the increasing amount of incoming data.'),
  (931, 226, '원시 데이터를 Amazon Simple Queue Service(Amazon SQS)로 보냅니다. EC2 인스턴스를 사용하여 데이터를 처리합니다.', 'Send the raw data to Amazon Simple Queue Service (Amazon SQS). Use EC2 instances to process the data.'),
  (932, 226, 'Amazon API Gateway를 사용하여 원시 데이터를 Amazon Kinesis 데이터 스트림으로 보냅니다. Amazon Kinesis Data Firehose가 해당 데이터 스트림을 소스로 사용하여 데이터를 Amazon S3로 전달하도록 구성합니다.', 'Use Amazon API Gateway to send the raw data to an Amazon Kinesis data stream. Configure Amazon Kinesis Data Firehose to use the data stream as a source to deliver the data to Amazon S3.'),
  (933, 227, '조직의 중앙 집중식 CloudTrail 트레일이 3년 후 객체가 만료되도록 구성합니다.', 'Configure the organization’s centralized CloudTrail trail to expire objects after 3 years.'),
  (934, 227, 'S3 수명 주기 정책이 현재 버전뿐만 아니라 이전 버전(Previous versions)도 삭제하도록 구성합니다.', 'Configure the S3 Lifecycle policy to delete previous versions as well as current versions.'),
  (935, 227, '3년이 지난 객체를 Amazon S3에서 열거하고 삭제하는 AWS Lambda 함수를 생성합니다.', 'Create an AWS Lambda function to enumerate and delete objects from Amazon S3 that are older than 3 years.'),
  (936, 227, 'S3 버킷에 전달되는 모든 객체의 소유자가 상위(Parent) 계정이 되도록 구성합니다.', 'Configure the parent account as the owner of all objects that are delivered to the S3 bucket.'),
  (937, 228, '더 많은 메모리를 사용할 수 있는 인스턴스 유형으로 DB 인스턴스의 크기를 늘립니다.', 'Increase the size of the DB instance to an instance type that has more available memory.'),
  (938, 228, 'DB 인스턴스를 Multi-AZ DB 인스턴스로 수정합니다. 애플리케이션이 모든 활성 RDS DB 인스턴스에 쓰도록 구성합니다.', 'Modify the DB instance to be a Multi-AZ DB instance. Configure the application to write to all active RDS DB instances.'),
  (939, 228, 'API를 수정하여 들어오는 데이터를 Amazon Simple Queue Service(Amazon SQS) 큐에 기록합니다. Amazon SQS가 호출하는 AWS Lambda 함수를 사용하여 큐에서 데이터베이스로 데이터를 씁니다.', 'Modify the API to write incoming data to an Amazon Simple Queue Service (Amazon SQS) queue. Use an AWS Lambda function that Amazon SQS invokes to write data from the queue to the database.'),
  (940, 228, 'API를 수정하여 들어오는 데이터를 Amazon Simple Notification Service(Amazon SNS) 주제에 기록합니다. Amazon SNS가 호출하는 AWS Lambda 함수를 사용하여 주제에서 데이터베이스로 데이터를 씁니다.', 'Modify the API to write incoming data to an Amazon Simple Notification Service (Amazon SNS) topic. Use an AWS Lambda function that Amazon SNS invokes to write data from the topic to the database.'),
  (941, 229, '데이터베이스를 Amazon Aurora Serverless for Aurora MySQL로 마이그레이션합니다.', 'Migrate the databases to Amazon Aurora Serverless for Aurora MySQL.'),
  (942, 229, '데이터베이스를 Amazon Aurora Serverless for Aurora PostgreSQL로 마이그레이션합니다.', 'Migrate the databases to Amazon Aurora Serverless for Aurora PostgreSQL.'),
  (943, 229, '데이터베이스를 하나의 더 큰 MySQL 데이터베이스로 결합합니다. 더 큰 EC2 인스턴스에서 더 큰 데이터베이스를 실행합니다.', 'Combine the databases into one larger MySQL database. Run the larger database on larger EC2 instances.'),
  (944, 229, '데이터베이스 계층을 위한 EC2 Auto Scaling 그룹을 생성합니다. 기존 데이터베이스를 새 환경으로 마이그레이션합니다.', 'Create an EC2 Auto Scaling group for the database tier. Migrate the existing databases to the new environment.'),
  (945, 230, '두 개의 NAT 인스턴스를 제거하고 동일한 가용 영역에 두 개의 NAT 게이트웨이로 교체합니다.', 'Remove the two NAT instances and replace them with two NAT gateways in the same Availability Zone.'),
  (946, 230, '서로 다른 가용 영역의 NAT 인스턴스에 대해 네트워크 로드 밸런서를 사용하여 Auto Scaling 그룹을 사용합니다.', 'Use Auto Scaling groups with Network Load Balancers for the NAT instances in different Availability Zones.'),
  (947, 230, '두 개의 NAT 인스턴스를 제거하고 서로 다른 가용 영역에 두 개의 NAT 게이트웨이로 교체합니다.', 'Remove the two NAT instances and replace them with two NAT gateways in different Availability Zones.'),
  (948, 230, '두 개의 NAT 인스턴스를 서로 다른 가용 영역의 스팟 인스턴스로 교체하고 네트워크 로드 밸런서를 배포합니다.', 'Replace the two NAT instances with Spot Instances in different Availability Zones and deploy a Network Load Balancer.'),
  (949, 231, 'VPC A의 애플리케이션 서버의 공용 IP 주소에서 오는 모든 트래픽을 허용하는 DB 인스턴스 보안 그룹을 생성합니다.', 'Create a DB instance security group that allows all traffic from the public IP address of the application server in VPC A.'),
  (950, 231, 'VPC A와 VPC B 사이에 VPC 피어링 연결을 구성합니다.', 'Configure a VPC peering connection between VPC A and VPC B.'),
  (951, 231, 'DB 인스턴스를 퍼블릭 액세스 가능하도록 설정합니다. DB 인스턴스에 공용 IP 주소를 할당합니다.', 'Make the DB instance publicly accessible. Assign a public IP address to the DB instance.'),
  (952, 231, 'VPC B에 Elastic IP 주소가 있는 EC2 인스턴스를 시작합니다. 모든 요청을 새로운 EC2 인스턴스를 통해 프록시합니다.', 'Launch an EC2 instance with an Elastic IP address into VPC B. Proxy all requests through the new EC2 instance.'),
  (953, 232, 'Amazon CloudWatch Application Insights를 구성하여 RDP 또는 SSH 액세스가 감지될 때 AWS Systems Manager OpsItems를 생성합니다.', 'Configure Amazon CloudWatch Application Insights to create AWS Systems Manager OpsItems when RDP or SSH access is detected.'),
  (954, 232, 'AmazonSSMManagedInstanceCore 정책이 연결된 IAM 역할을 가진 IAM 인스턴스 프로파일로 EC2 인스턴스를 구성합니다.', 'Configure the EC2 instances with an IAM instance profile that has an IAM role with the AmazonSSMManagedInstanceCore policy attached.'),
  (955, 232, 'VPC 플로우 로그를 Amazon CloudWatch Logs로 게시합니다. 필요한 메트릭 필터를 생성합니다. 알람이 ALARM 상태일 때 알림 동작을 가지는 Amazon CloudWatch 메트릭 알람을 생성합니다.', 'Publish VPC flow logs to Amazon CloudWatch Logs. Create required metric filters. Create an Amazon CloudWatch metric alarm with a notification action for when the alarm is in the ALARM state.'),
  (956, 232, 'Amazon EventBridge 규칙을 구성하여 EC2 Instance State-change Notification 유형의 이벤트를 수신합니다. Amazon Simple Notification Service(Amazon SNS) 주제를 대상으로 구성합니다. 운영 팀을 해당 주제에 구독시킵니다.', 'Configure an Amazon EventBridge rule to listen for events of type EC2 Instance State-change Notification. Configure an Amazon Simple Notification Service (Amazon SNS) topic as a target. Subscribe the operations team to the topic.'),
  (957, 233, '루트 사용자가 강력한 비밀번호를 사용하도록 합니다.', 'Ensure the root user uses a strong password.'),
  (958, 233, '루트 사용자에 대해 다중 인증(MFA)을 활성화합니다.', 'Enable multi-factor authentication to the root user.'),
  (959, 233, '루트 사용자 액세스 키를 암호화된 Amazon S3 버킷에 저장합니다.', 'Store root user access keys in an encrypted Amazon S3 bucket.'),
  (960, 233, '루트 사용자를 관리자 권한이 포함된 그룹에 추가합니다.', 'Add the root user to a group containing administrative permissions.'),
  (961, 233, '루트 사용자에 필요한 권한을 인라인 정책 문서로 적용합니다.', 'Apply the required permissions to the root user with an inline policy document.'),
  (962, 234, 'ALB에서 데이터를 전송 중 암호화하기 위해 AWS Key Management Service(AWS KMS) 인증서를 사용합니다. 저장 시 EBS 볼륨과 Aurora 데이터베이스 스토리지를 암호화하기 위해 AWS Certificate Manager(ACM)를 사용합니다.', 'Use AWS Key Management Service (AWS KMS) certificates on the ALB to encrypt data in transit. Use AWS Certificate Manager (ACM) to encrypt the EBS volumes and Aurora database storage at rest.'),
  (963, 234, 'AWS 루트 계정으로 AWS Management Console에 로그인합니다. 회사의 암호화 인증서를 업로드합니다. 루트 계정에서 계정의 모든 데이터에 대해 저장 시 및 전송 중 암호화를 켜는 옵션을 선택합니다.', 'Use the AWS root account to log in to the AWS Management Console. Upload the company’s encryption certificates. While in the root account, select the option to turn on encryption for all data at rest and in transit for the account.'),
  (964, 234, '저장 시 EBS 볼륨과 Aurora 데이터베이스 스토리지를 암호화하기 위해 AWS Key Management Service(AWS KMS)를 사용합니다. 전송 중 데이터를 암호화하기 위해 ALB에 AWS Certificate Manager(ACM) 인증서를 연결합니다.', 'Use AWS Key Management Service (AWS KMS) to encrypt the EBS volumes and Aurora database storage at rest. Attach an AWS Certificate Manager (ACM) certificate to the ALB to encrypt data in transit.'),
  (965, 234, '저장 시 모든 데이터를 BitLocker로 암호화합니다. 회사의 TLS 인증서 키를 AWS Key Management Service(AWS KMS)로 가져옵니다. 전송 중 데이터를 암호화하기 위해 ALB에 KMS 키를 연결합니다.', 'Use BitLocker to encrypt all data at rest. Import the company’s TLS certificate keys to AWS Key Management Service (AWS KMS) Attach the KMS keys to the ALB to encrypt data in transit.'),
  (966, 235, '초기 마이그레이션에 AWS DataSync를 사용합니다. AWS Database Migration Service(AWS DMS)를 사용하여 변경 데이터 캡처(CDC) 복제 작업과 모든 테이블을 선택하는 테이블 매핑을 생성합니다.', 'Use AWS DataSync for the initial migration. Use AWS Database Migration Service (AWS DMS) to create a change data capture (CDC) replication task and a table mapping to select all tables.'),
  (967, 235, '초기 마이그레이션에 AWS DataSync를 사용합니다. AWS Database Migration Service(AWS DMS)를 사용하여 전체 로드 + 변경 데이터 캡처(CDC) 복제 작업과 모든 테이블을 선택하는 테이블 매핑을 생성합니다.', 'Use AWS DataSync for the initial migration. Use AWS Database Migration Service (AWS DMS) to create a full load plus change data capture (CDC) replication task and a table mapping to select all tables.'),
  (968, 235, 'AWS Schema Conversion Tool과 메모리 최적화(replication instance)형 AWS Database Migration Service(AWS DMS)를 사용합니다. 전체 로드 + 변경 데이터 캡처(CDC) 복제 작업과 모든 테이블을 선택하는 테이블 매핑을 생성합니다.', 'Use the AWS Schema Conversion Tool with AWS Database Migration Service (AWS DMS) using a memory optimized replication instance. Create a full load plus change data capture (CDC) replication task and a table mapping to select all tables.'),
  (969, 235, 'AWS Schema Conversion Tool과 컴퓨팅 최적화(replication instance)형 AWS Database Migration Service(AWS DMS)를 사용합니다. 전체 로드 + 변경 데이터 캡처(CDC) 복제 작업과 가장 큰 테이블만 선택하는 테이블 매핑을 생성합니다.', 'Use the AWS Schema Conversion Tool with AWS Database Migration Service (AWS DMS) using a compute optimized replication instance. Create a full load plus change data capture (CDC) replication task and a table mapping to select the largest tables.'),
  (970, 236, 'Amazon S3를 사용하여 프런트엔드 계층을 호스팅합니다. 애플리케이션 계층에는 AWS Lambda 함수를 사용합니다. 데이터베이스를 Amazon DynamoDB 테이블로 이동합니다. 사용자의 이미지를 저장하고 제공하기 위해 Amazon S3를 사용합니다.', 'Use Amazon S3 to host the front-end layer. Use AWS Lambda functions for the application layer. Move the database to an Amazon DynamoDB table. Use Amazon S3 to store and serve users’ images.'),
  (971, 236, '프런트엔드 계층과 애플리케이션 계층에 대해 로드 밸런싱된 Multi-AZ AWS Elastic Beanstalk 환경을 사용합니다. 데이터베이스를 Amazon RDS DB 인스턴스로 이동하고 여러 읽기 복제본을 사용하여 사용자의 이미지를 제공합니다.', 'Use load-balanced Multi-AZ AWS Elastic Beanstalk environments for the front-end layer and the application layer. Move the database to an Amazon RDS DB instance with multiple read replicas to serve users’ images.'),
  (972, 236, 'Amazon S3를 사용하여 프런트엔드 계층을 호스팅합니다. 애플리케이션 계층에는 Auto Scaling 그룹의 EC2 인스턴스 플릿을 사용합니다. 데이터베이스를 메모리 최적화 인스턴스 유형으로 이동하여 사용자의 이미지를 저장하고 제공합니다.', 'Use Amazon S3 to host the front-end layer. Use a fleet of EC2 instances in an Auto Scaling group for the application layer. Move the database to a memory optimized instance type to store and serve users’ images.'),
  (973, 236, '프런트엔드 계층과 애플리케이션 계층에 대해 로드 밸런싱된 Multi-AZ AWS Elastic Beanstalk 환경을 사용합니다. 데이터베이스를 Amazon RDS Multi-AZ DB 인스턴스로 이동합니다. 사용자의 이미지를 저장하고 제공하기 위해 Amazon S3를 사용합니다.', 'Use load-balanced Multi-AZ AWS Elastic Beanstalk environments for the front-end layer and the application layer. Move the database to an Amazon RDS Multi-AZ DB instance. Use Amazon S3 to store and serve users’ images.'),
  (974, 237, 'VPC-A와 VPC-B 사이에 VPC 피어링 연결을 설정합니다.', 'Set up a VPC peering connection between VPC-A and VPC-B.'),
  (975, 237, 'VPC-B에서 실행 중인 EC2 인스턴스를 위해 VPC 게이트웨이 엔드포인트를 설정합니다.', 'Set up VPC gateway endpoints for the EC2 instance running in VPC-B.'),
  (976, 237, 'VPC-B에 가상 프라이빗 게이트웨이를 연결하고 VPC-A에서 라우팅을 설정합니다.', 'Attach a virtual private gateway to VPC-B and set up routing from VPC-A.'),
  (977, 237, 'VPC-B에서 실행 중인 EC2 인스턴스를 위해 프라이빗 가상 인터페이스(VIF)를 생성하고 VPC-A에서 적절한 라우트를 추가합니다.', 'Create a private virtual interface (VIF) for the EC2 instance running in VPC-B and add appropriate routes from VPC-A.'),
  (978, 238, 'Cost Explorer를 사용하여 서비스별 일일 비용 보고서를 생성합니다. 보고서를 EC2 인스턴스로 필터링합니다. 임계값을 초과하면 Amazon Simple Email Service(Amazon SES) 알림을 보내도록 Cost Explorer를 구성합니다.', 'Use Cost Explorer to create a daily report of costs by service. Filter the report by EC2 instances. Configure Cost Explorer to send an Amazon Simple Email Service (Amazon SES) notification when a threshold is exceeded.'),
  (979, 238, 'Cost Explorer를 사용하여 서비스별 월간 비용 보고서를 생성합니다. 보고서를 EC2 인스턴스로 필터링합니다. 임계값을 초과하면 Amazon Simple Email Service(Amazon SES) 알림을 보내도록 Cost Explorer를 구성합니다.', 'Use Cost Explorer to create a monthly report of costs by service. Filter the report by EC2 instances. Configure Cost Explorer to send an Amazon Simple Email Service (Amazon SES) notification when a threshold is exceeded.'),
  (980, 238, 'AWS Budgets를 사용하여 각 계정에 대한 비용 예산을 생성합니다. 기간을 월간으로 설정합니다. 범위를 EC2 인스턴스로 설정합니다. 예산에 대한 알림 임계값을 설정합니다. 임계값이 초과되면 알림을 수신하도록 Amazon Simple Notification Service(Amazon SNS) 주제를 구성합니다.', 'Use AWS Budgets to create a cost budget for each account. Set the period to monthly. Set the scope to EC2 instances. Set an alert threshold for the budget. Configure an Amazon Simple Notification Service (Amazon SNS) topic to receive a notification when a threshold is exceeded.'),
  (981, 238, 'AWS Cost and Usage Reports를 사용하여 시간 단위 세분성의 보고서를 생성합니다. 보고서 데이터를 Amazon Athena와 통합합니다. Amazon EventBridge를 사용하여 Athena 쿼리를 일정 실행합니다. 임계값이 초과되면 알림을 수신하도록 Amazon Simple Notification Service(Amazon SNS) 주제를 구성합니다.', 'Use AWS Cost and Usage Reports to create a report with hourly granularity. Integrate the report data with Amazon Athena. Use Amazon EventBridge to schedule an Athena query. Configure an Amazon Simple Notification Service (Amazon SNS) topic to receive a notification when a threshold is exceeded.'),
  (982, 239, 'Amazon API Gateway REST API를 생성합니다. 메서드를 Lambda 함수를 사용하도록 구성합니다. API에서 IAM 인증을 활성화합니다.', 'Create an Amazon API Gateway REST API. Configure the method to use the Lambda function. Enable IAM authentication on the API.'),
  (983, 239, '함수에 대해 Lambda Function URL을 생성합니다. 인증 유형으로 AWS_IAM을 지정합니다.', 'Create a Lambda function URL for the function. Specify AWS_IAM as the authentication type.'),
  (984, 239, 'Amazon CloudFront 배포를 생성합니다. 함수를 Lambda@Edge로 배포합니다. IAM 인증 로직을 Lambda@Edge 함수에 통합합니다.', 'Create an Amazon CloudFront distribution. Deploy the function to Lambda@Edge. Integrate IAM authentication logic into the Lambda@Edge function.'),
  (985, 239, 'Amazon CloudFront 배포를 생성합니다. 함수를 CloudFront Functions로 배포합니다. 인증 유형으로 AWS_IAM을 지정합니다.', 'Create an Amazon CloudFront distribution. Deploy the function to CloudFront Functions. Specify AWS_IAM as the authentication type.'),
  (986, 240, '시각화 도구를 온프레미스에 호스팅하고 인터넷을 통해 데이터 웨어하우스를 직접 쿼리합니다.', 'Host the visualization tool on premises and query the data warehouse directly over the internet.'),
  (987, 240, '시각화 도구를 데이터 웨어하우스와 동일한 AWS 리전에 호스팅하고, 인터넷을 통해 접근합니다.', 'Host the visualization tool in the same AWS Region as the data warehouse. Access it over the internet.'),
  (988, 240, '시각화 도구를 온프레미스에 호스팅하고, 동일한 AWS 리전의 위치에서 Direct Connect 연결을 통해 데이터 웨어하우스를 직접 쿼리합니다.', 'Host the visualization tool on premises and query the data warehouse directly over a Direct Connect connection at a location in the same AWS Region.'),
  (989, 240, '시각화 도구를 데이터 웨어하우스와 동일한 AWS 리전에 호스팅하고, 동일한 리전의 위치에서 Direct Connect 연결을 통해 접근합니다.', 'Host the visualization tool in the same AWS Region as the data warehouse and access it over a Direct Connect connection at a location in the same Region.');

INSERT INTO answer (id, question_id, choice_id) VALUES
  (42, 41, 163),
  (43, 42, 168),
  (44, 43, 171),
  (45, 44, 174),
  (46, 44, 175),
  (47, 45, 180),
  (48, 45, 183),
  (49, 46, 185),
  (50, 47, 191),
  (51, 48, 195),
  (52, 49, 197),
  (53, 50, 201),
  (54, 51, 205),
  (55, 51, 207),
  (56, 52, 211),
  (57, 53, 215),
  (58, 54, 219),
  (59, 55, 223),
  (60, 56, 227),
  (61, 57, 230),
  (62, 58, 235),
  (63, 59, 240),
  (64, 60, 243),
  (65, 61, 247),
  (66, 62, 252),
  (67, 63, 253),
  (68, 64, 260),
  (69, 65, 263),
  (70, 66, 267),
  (71, 67, 272),
  (72, 68, 273),
  (73, 69, 278),
  (74, 70, 283),
  (75, 71, 286),
  (76, 72, 292),
  (77, 73, 295),
  (78, 73, 296),
  (79, 74, 298),
  (80, 74, 300),
  (81, 75, 303),
  (82, 76, 308),
  (83, 77, 313),
  (84, 78, 316),
  (85, 79, 319),
  (86, 80, 324),
  (87, 81, 329),
  (88, 82, 332),
  (89, 83, 337),
  (90, 84, 340),
  (91, 85, 343),
  (92, 86, 347),
  (93, 87, 354),
  (94, 88, 357),
  (95, 89, 359),
  (96, 90, 364),
  (97, 91, 367),
  (98, 92, 371),
  (99, 92, 373),
  (100, 93, 377),
  (101, 94, 382),
  (102, 95, 387),
  (103, 96, 390),
  (104, 97, 395),
  (105, 98, 397),
  (106, 99, 403),
  (107, 100, 406),
  (108, 101, 408),
  (109, 102, 413),
  (110, 102, 416),
  (111, 103, 417),
  (112, 104, 421),
  (113, 104, 423),
  (114, 105, 429),
  (115, 106, 433),
  (116, 107, 437),
  (117, 108, 441),
  (118, 109, 445),
  (119, 110, 448),
  (120, 110, 449),
  (121, 111, 454),
  (122, 112, 455),
  (123, 113, 461),
  (124, 114, 465),
  (125, 115, 469),
  (126, 116, 471),
  (127, 116, 474),
  (128, 117, 476),
  (129, 118, 483),
  (130, 119, 485),
  (131, 120, 489),
  (132, 121, 492),
  (133, 122, 497),
  (134, 123, 503),
  (135, 124, 504),
  (136, 125, 508),
  (137, 125, 512),
  (138, 126, 514),
  (139, 127, 517),
  (140, 128, 521),
  (141, 129, 525),
  (142, 129, 529),
  (143, 130, 531),
  (144, 131, 537),
  (145, 132, 538),
  (146, 133, 544),
  (147, 134, 546),
  (148, 135, 553),
  (149, 136, 554),
  (150, 136, 556),
  (151, 137, 560),
  (152, 138, 564),
  (153, 139, 570),
  (154, 140, 571),
  (155, 140, 573),
  (156, 141, 576),
  (157, 142, 582),
  (158, 143, 587),
  (159, 144, 589),
  (160, 145, 595),
  (161, 146, 597),
  (162, 147, 601),
  (163, 148, 607),
  (164, 149, 608),
  (165, 150, 612),
  (166, 151, 618),
  (167, 151, 620),
  (168, 152, 624),
  (169, 153, 626),
  (170, 154, 630),
  (171, 155, 635),
  (172, 156, 637),
  (173, 156, 641),
  (174, 157, 645),
  (175, 157, 646),
  (176, 158, 647),
  (177, 159, 651),
  (178, 159, 653),
  (179, 160, 658),
  (180, 161, 661),
  (181, 162, 664),
  (182, 163, 668),
  (183, 164, 674),
  (184, 165, 679),
  (185, 166, 683),
  (186, 167, 686),
  (187, 168, 691),
  (188, 169, 694),
  (189, 170, 698),
  (190, 171, 701),
  (191, 172, 706),
  (192, 173, 709),
  (193, 174, 713),
  (194, 175, 717),
  (195, 176, 720),
  (196, 177, 725),
  (197, 178, 728),
  (198, 179, 732),
  (199, 180, 737),
  (200, 180, 738),
  (201, 181, 741),
  (202, 182, 746),
  (203, 183, 749),
  (204, 184, 753),
  (205, 185, 758),
  (206, 186, 762),
  (207, 187, 765),
  (208, 187, 768),
  (209, 188, 770),
  (210, 189, 775),
  (211, 189, 777),
  (212, 190, 780),
  (213, 191, 783),
  (214, 192, 788),
  (215, 192, 791),
  (216, 193, 792),
  (217, 194, 796),
  (218, 195, 802),
  (219, 196, 807),
  (220, 197, 809),
  (221, 197, 812),
  (222, 198, 816),
  (223, 199, 818),
  (224, 200, 824),
  (225, 201, 826),
  (226, 202, 830),
  (227, 203, 836),
  (228, 204, 839),
  (229, 205, 843),
  (230, 206, 847),
  (231, 207, 852),
  (232, 208, 853),
  (233, 209, 857),
  (234, 210, 864),
  (235, 211, 868),
  (236, 212, 869),
  (237, 213, 873),
  (238, 214, 878),
  (239, 215, 881),
  (240, 216, 886),
  (241, 217, 889),
  (242, 218, 893),
  (243, 218, 897),
  (244, 219, 901),
  (245, 220, 903),
  (246, 221, 909),
  (247, 222, 910),
  (248, 223, 914),
  (249, 223, 917),
  (250, 224, 921),
  (251, 224, 923),
  (252, 225, 924),
  (253, 226, 928),
  (254, 226, 932),
  (255, 227, 934),
  (256, 228, 939),
  (257, 229, 941),
  (258, 230, 947),
  (259, 231, 950),
  (260, 232, 955),
  (261, 233, 957),
  (262, 233, 958),
  (263, 234, 964),
  (264, 235, 968),
  (265, 236, 973),
  (266, 237, 974),
  (267, 238, 980),
  (268, 239, 983),
  (269, 240, 989);

INSERT INTO description (id, question_id, text) VALUES
  (41, 41, '- 현재 병목은 EC2 인스턴스가 데이터 수신,업로드,알림을 모두 담당하면서 발생
  - EC2에서 IO, 네트워크, 애플리케이션 로직을 모두 담당하니 성능 저하와 운영 부담
- Amazon AppFlow는 여러 SaaS(예: Salesforce, Slack, Zendesk 등)와의 안전한 커넥터를 제공하는 완전관리형 서비스
  - SaaS -> S3 데이터 전송을 EC2 없이 직접 처리 가능
  - 데이터 수집/전송 책임을 관리형 서비스로 옮겨 EC2 부하 제거와 지연 시간 개선
- 업로드 완료 후 알림은 S3 이벤트 알림 -> SNS 구성으로 처리
  - 업로드 완료 시 사용자 알림 요구사항도 충족

오답 이유

- **A. Auto Scaling + S3 이벤트 → SNS**
  - 장점: 수평 확장으로 EC2 처리량을 늘릴 수 있으나, EC2가 여전히 데이터 수신과 업로드 논리를 수행해야 하므로 **운영 부담과 관리(AMIs, 패치, 모니터링, 스케일 정책 등)**는 남습니다.
  - Auto Scaling은 처리량을 늘려 지연을 줄이지만, 관리형 SaaS 커넥터(인증, API 변화 등)를 계속 운영해야 하고 비용/운영 오버헤드가 더 큽니다. 따라서 **최소 운영 오버헤드** 요구에 부합하지 않습니다.
- **C. EventBridge 규칙을 이용하여 SaaS → S3 및 알림 처리**
  - 일부 SaaS는 EventBridge 직접 통합을 지원하지만 모든 SaaS에 대해 표준화되어 있지 않으며, SaaS별로 이벤트 매핑/권한/전송 방식이 달라 **설정·유지보수 복잡성**이 큽니다.
  - 또한, EventBridge 규칙을 통해 S3에 직접 데이터를 전송하는 작업은 일반적으로 이벤트 기반으로 메타데이터 전달에 적합하고 대량 데이터 페이로드 전송에는 적합하지 않습니다.
  - 따라서 운영적 단순화나 대량 데이터 수집 관점에서 비효율적입니다.
- **D. 컨테이너화(ECS) + Container Insights → SNS**
  - 컨테이너로 옮기면 인프라는 경량화될 수 있으나 여전히 애플리케이션 로직(데이터 수신/업로드/알림)을 직접 운영해야 합니다.
  - Container Insights는 모니터링용이지 업로드 완료 알림의 적절한 트리거가 아닙니다(또한, “S3 업로드 완료”를 자동으로 SNS로 보내려면 별도 구현 필요).
  - 컨테이너 오케스트레이션과 CI/CD, 이미지 관리 등 **운영 오버헤드**가 증가합니다.'),
  (42, 42, '- Gateway VPC Endpoint (S3)는 VPC의 라우팅 테이블에 경로를 추가해 S3와의 트래픽이 퍼블릭 인터넷이나 NAT 게이트웨이를 통하지 않고 AWS 네트워크 내에서 직접 전달
- 이 구성은 인터넷 게이트웨이/NAT 게이트웨이 통한 전송에 따른 가용 영역 간(Regional) 또는 인터넷 전송 요금이 발생하지 않음
- 현재 모든 인스턴스가 단일 NAT 게이트웨이를 통해 S3에 접근함으로써 가용영역 간 트래픽(또는 NAT 처리 비용)이 발생할 수 있어 S3영 게이트웨이 엔드포인트로 바꾸면 데이터 전송 요금을 줄이면서 운영도 간단화할 수 있음

오답 이유

- **A. 각 가용 영역에 NAT 게이트웨이를 시작합니다.**
  - 장점: 각 AZ에 NAT 게이트웨이를 두면 AZ 간 트래픽으로 인한 추가 비용은 줄일 수 있음(인스턴스가 같은 AZ의 NAT를 사용하면 cross-AZ 요금 회피 가능).
  - 단점: NAT 게이트웨이는 시간당 요금 + 처리량(GB)당 요금이 발생하므로, 여러 AZ에 NAT를 배포하면 비용이 증가하고 관리 복잡성도 올라갑니다. S3 전용으로는 게이트웨이 엔드포인트가 더 저비용이며 단순합니다.
- **B. NAT 게이트웨이를 NAT 인스턴스로 교체합니다.**
  - 장점: 일부 시나리오에서 NAT 인스턴스가 비용면에서 저렴할 수 있음.
  - 단점: NAT 인스턴스는 고가용성/확장성/관리(패치, 모니터링, 스케일아웃) 측면에서 운영 부담이 큽니다. 또한 S3 트래픽이 여전히 NAT을 통해 나가면 데이터 처리/전송 비용은 남습니다. 따라서 “가장 비용 효율적이면서 운영 부담 최소” 조건을 만족시키지 못합니다.
- **D. EC2 Dedicated Host 프로비저닝**
  - Dedicated Host는 라이선스/물리서버 격리 요구가 있을 때 쓰는 옵션으로 네트워크 전송 요금이나 S3 접근 비용과 관련 없습니다.
  - 이 옵션은 문제의 목적(지역 데이터 전송 요금 회피 및 비용 절감)과 무관하며 운영/비용 측면에서도 부적합합니다.'),
  (43, 43, '- 요구사항
  - 장기적이고
  - 시기 민감한(빠른) 백업
  - 내부 인터넷 대역폭에 대한 영향 최소화
- AWS Direct Connect는 온프레미스와 AWS 간의 전용 네트워크 회선을 제공하므로 대용량 데이터 전송을 인터넷에 의존하지 않고 전송 가능
  - 인터넷 트래픽에 의한 대역폭 경쟁을 피할 수 있어 사용자 품질 저하 막음
  - 대역폭을 예약(1Gb/10Gb 등)할 수 있고 지연/인관성 개선
- 설정 후 전용 회선으로 안정적 전송 -> 장기적 관점에서도 운영 관리도 단순

오답 이유

- **A. AWS VPN + VPC 게이트웨이 엔드포인트로 모든 트래픽 프록시**
  - VPN은 일반적으로 인터넷을 통해 터널링되거나 (AWS Managed VPN의 경우) 역시 인터넷 경유하는 경우가 많아 **인터넷 대역폭 문제를 완전히 해결하지 못함**.
  - 또한 “모든 트래픽을 VPC 게이트웨이 엔드포인트로 프록시”한다는 개념이 실제 네트워크 라우팅/보안 관점에서 잘 맞지 않음(게이트웨이 엔드포인트는 VPC 내부에서 S3로 가는 경로를 제공하지만, 온프레→AWS 트래픽 자체는 물리적 회선이 필요).
  - 따라서 내부 인터넷 부하를 장기적으로 줄이는 데 한계가 있습니다.
- **C. 매일 Snowball 장치를 주문하여 반납**
  - Snowball/Snowball Edge는 대량 데이터 전송(오프라인 전송)에 유리하지만 **매일** 디바이스를 주문·적재·반납하는 것은 **운영 부담이 매우 크고(물류/스케줄링/비용)**, 또한 ‘시기 민감한(즉시성)’ 백업 요구를 충족하지 못합니다.
  - 일상적·지속적·시의성 있는 백업에는 부적절합니다.
- **D. S3 서비스 한도 제거 요청**
  - 단순히 서비스 한도(quotas) 해제는 인터넷 대역폭 문제를 해결하지 못합니다.
  - 또한 S3 한도은 보통 요청 레이트/동시성 등과 관련되나, 온프레 인터넷 회선 포화 문제와는 무관합니다.'),
  (44, 44, '- 버저닝을 활성화 하면 객체가 삭제되거나 덮어써질 때 기존 버전이 보존
- 실수로 삭제된 객체는 이전 버전을 복원하거나 delete marker를 제거해 복구 가능
- MFA Delete는 객체의 영구 삭제(버전 삭제) 및 버저닝 상태 변경(예: 버저닝 비활성화)을 수행하려면 다중 인증(MFA)을 요구해 실수 또는 악의적인 삭제로부터 추가 보호층 제공
- 두 가지를 함께 사용해 복구 가능성(버전 보존) + 영구 삭제 방지(MFA)라는 방어 ㅅ미층화를 구축 가능

오답 이유

- **C. S3 버킷에 버킷 정책을 생성합니다. — 오답**
  - 이유: 버킷 정책으로 삭제 작업을 거부(deny)하도록 설정할 수는 있으나, 권한이 있는 관리자가 정책을 변경할 수 있고, 실수로 객체를 삭제한 뒤에도 복구 가능한 이전 버전을 자동으로 제공하지는 않습니다. 버전 보존·영구 삭제 방지를 직접 제공하는 A/B보다 목적에 덜 직접적이며 단독으로는 권장되지 않습니다.
- **D. S3 버킷에서 기본 암호화를 활성화합니다. — 오답**
  - 이유: 기본 암호화는 데이터 기밀성(암호화)을 제공합니다. 삭제 방지와는 관련이 없어 요구사항을 충족하지 않습니다.
- **E. S3 버킷의 객체에 대해 수명 주기 정책을 생성합니다. — 오답**
  - 이유: 수명주기 정책은 객체의 이전 버전 만료나 객체 자동 삭제를 수행할 수 있으므로 **오히려 삭제를 자동화**할 수 있습니다. 실수 삭제 방지 목적과 상충하므로 단독 사용은 부적절합니다(단, 버전 보존 후 오래된 버전만 일정 기간 후 삭제하는 식으로 보완적으로 사용 가능).'),
  (45, 45, '- SNS는 메시지 전송은 보장하지만, 소비자가 메시지 처리에 실패할 경우 재시도하거나 보존하는 기능은 제한적
- SQS를 SNS의 구독자로 연결해 메시지를 큐에 보관하고 람다가 SQS를 소비하도록해 람다 함수에서 장애에서 복구된 후에 큐에 남아있는 메시지를 소비해 모든 데이터 수집 보장

오답 이유

- **A. 여러 AZ에 Lambda 함수를 배포**
  - 오답. Lambda는 기본적으로 멀티 AZ 고가용성으로 관리되며, 수동으로 여러 AZ 배포를 고려할 필요가 없습니다. 문제의 원인은 AZ 가용성 문제가 아니라 메시지 유실이므로 해당하지 않습니다.
- **C. Lambda 함수 CPU/메모리 증가**
  - 오답. CPU/메모리는 성능을 높이는 데 영향을 주지만, 네트워크 장애로 인한 메시지 유실 문제를 해결하지 못합니다.
- **D. Lambda 함수 프로비저닝 처리량 증가**
  - 오답. Lambda에는 “프로비저닝 처리량”이라는 개념이 없습니다. 대신 **Provisioned Concurrency**가 있지만 이는 콜드 스타트 지연을 줄이는 용도로, 메시지 보존/재처리 보장과 무관합니다.'),
  (46, 46, '- 요구사항
  - PII 포함 시 관리자 경고
  - 자동화된 복구(또는 자동화된 조치)
  - 최소 개발 노력
  - 대용량 파일(200GB+) 처리 가능성
- Amazon Macie는 S3 객체 내 PII 및 민감 데이터 탐지에 특화된 관리형 서비스
  - 사전 정의된 PII 식별 기능을 제공하므로 자체적으로 탐지 로직 개발 필요 X -> 개발 비용 최소화
- Macie의 결과는 EventBridge/SNS 등으로 통지할 수 있어 관리자에게 즉시 알림을 보낼 수 있음
  - Macie Findings -> EventBridge -> Lambda 흐름으로 구성하면 자동화된 조치를 최소한의 개발 작업으로 구성 가능

오답 이유

- **A. S3 + Amazon Inspector + S3 수명주기 트리거 — 오답**
  - **Amazon Inspector**는 EC2/컨테이너 취약성, 이미지 보안 검사에 초점을 맞춘 서비스로 **S3 객체의 PII 스캔용 서비스가 아님**. Inspector는 S3 민감정보 검색을 제공하지 않으므로 요구사항(PII 탐지)에 부적합합니다.
  - 또한 S3 수명주기 규칙은 자동 삭제/전환을 수행하지만, 단순 수명주기 트리거로 즉시 탐지 기반 자동 격리·삭제를 구현하기 어렵습니다.
- **C. Lambda로 맞춤형 스캐너 + SNS 알림 — 오답**
  - 가능하긴 하나, **대규모(200GB+) 파일을 다루는 맞춤형 PII 스캔을 직접 구현하면 개발·테스트·성능(메모리/타임아웃)·정확도 조정에 많은 노력이 필요**합니다. 또한 대용량 파일을 람다로 처리하면 시간/리소스 제한과 비용/복잡성이 증가합니다. 따라서 ‘최소 개발 노력’ 조건에 부합하지 않습니다.
- **D. Lambda로 맞춤형 스캐너 + SES + 수명주기 트리거 — 오답**
  - C와 동일하게 **맞춤 스캔 개발 부담이 크고**, SES는 알림(메일) 전송에는 적절하지만 자동 복구(remediation) 후속 조치(객체 격리/이동/삭제 등)를 구현하려면 추가 로직이 필요합니다. 또한 “수명주기 정책을 트리거”하여 자동 삭제하는 설계는 잘못 구성되면 민감 데이터의 영구 삭제로 이어져 감사/컴플라이언스 문제를 만들 수 있습니다.'),
  (47, 47, '- 요구사항 : 특정 리전과 3개의 AZ에서 EC2 용량을 1주일 동안 보장
- Reserved Instances(RI) : 장기 계약 기반 요금 할인 제공, 특정 AZ/인스턴스 유형의 용량을 보장하지 않음 -> RI는 용량 예약이 아닌 요금 할인을 위한 상품
- On-Demand Capacity Reservation(CR) : 지정한 AZ, 인스턴스 유형, 용량 수량을 실제로 확보 가능하며 즉시 사용 가능
- 따라서 특정 AZ에서 용량 보장은 Capacity Reservation만 가능하며 이벤트처럼 단기 용량 확보에는 On-Demand CR이 적합

오답 이유

- **A. RI(리전 지정) 구매 — 오답**
  - RI는 용량 보장을 제공하지 않으며, AZ 내 용량 충족 여부는 보장되지 않습니다. 단순 요금 할인용입니다.
- **B. On-Demand Capacity Reservation(리전 지정) — 오답**
  - CR은 리전 단위가 아니라 **가용 영역(AZ) 단위로 지정**해야 용량이 보장됩니다. 단순 리전 지정만으로는 특정 AZ의 용량을 확보할 수 없습니다.
- **C. RI(리전 + 3개 AZ 지정) — 오답**
  - RI는 AZ를 지정할 수 있지만, 실제 용량을 확보하는 기능은 없으며 단순히 요금 할인용입니다. 따라서 단기 이벤트 기간에 맞춘 용량 보장은 불가능합니다.'),
  (48, 48, '- 요구사항 : 고가용성 + 내구성 있는 저장소
- EC2 인스턴스 스토어는 인스턴스 종료 시 데이터가 사라지는 휘발성 저장소이므로 고가용성과 내구성 보장할 수 없음
- Amazon EFS는 다중 AZ에 걸쳐 자동으로 고가용성 및 내구성 제공, EC2와 쉽게 연동 가능하며 POSIX 호환 파일 시스템으로 기존 애플리케이션이 접근 가능

오답 이유

- **A. ElastiCache for Redis — 오답**
  - Redis는 메모리 기반 인메모리 데이터 스토어로 빠른 읽기/쓰기 제공.
  - 그러나 Redis는 기본적으로 내구성이 낮음(데이터 영속성은 RDB/AOF 설정 필요) → 요구된 **내구성(Durability)**을 완전히 보장하지 못함.
- **B. 더 큰 인스턴스 스토어 — 오답**
  - 인스턴스 스토어는 여전히 **휘발성**이므로 인스턴스 종료나 장애 발생 시 데이터 손실 가능. 고가용성/내구성 확보 불가.
- **C. S3 Glacier Deep Archive — 오답**
  - Glacier Deep Archive는 **극저비용 장기 보관용**으로 설계됨.
  - 즉시 액세스가 필요 없는 백업용으로 적합하며, 웹 애플리케이션에서 실시간 사용 불가 → 요구사항인 **웹사이트 카탈로그의 고가용성** 충족 불가.'),
  (49, 49, '- 요구사항
  - 1년 미만 파일 : 즉시/빠른 조회 -> S3 Standard급 성능
  - 1년 이상 파일 : 저비용 아카이브 기능 -> Glacier Flexible Retrieval
  - 비용 효율성을 최적화하고 자동 스토리지 계층화 및 조회 가능성 필요
- S3 Intelligent-Tiering
  - 액세스 기반 패턴 자동 계층화 (Frequent, Infrequent Access)
  - 1년 후 Glacier 계층(Flexible Retrieval)으로 자동 이동 가능
- Athena & Glacier Select
  - Athena : S3에 있는 파일에 대해 서버리스 SQL 쿼리 수행
  - Glacier Select : Glacier 계층에서도 데이터 검색 가능

오답 이유

- **A. S3 Glacier Instant Retrieval — 오답**
  - Glacier Instant Retrieval은 빠른 조회를 제공하지만 **모든 파일이 Instant Retrieval 계층에 저장되므로 비용이 높음**
  - 1년 이상 자주 접근하지 않는 파일까지 Instant Retrieval 계층에 저장하는 것은 비용 비효율적
- **C. S3 Standard + 태그 + Glacier Instant Retrieval — 오답**
  - 1년 이상 파일을 Glacier Instant Retrieval로 이동 → Instant Retrieval은 **비용이 높음**
  - 메타데이터를 기반으로 검색 가능하지만, **비용 최적화 측면에서 B보다 효율적이지 않음**
- **D. S3 Standard + Glacier Deep Archive + RDS 메타데이터 — 오답**
  - Glacier Deep Archive는 **저렴하지만 조회 속도가 매우 느림 (시간 단위 지연)**
  - RDS에 검색 메타데이터 저장 → 추가 관리 비용 발생
  - 1년 미만 파일 조회 속도를 최적화할 수 없음 → 요구사항 불충족'),
  (50, 50, '- 요구사항 : 100대의 EC2 인스턴스에서 서드파티 소프트웨어 패치를 가능한 한 빠르게 적용
- Patch Manager
  - EC2 인스턴스 및 온프레미스 서버에 대한 패치 관리 자동화
  - OS 및 서드파티 소프트웨어 패치 가능
  - 대규모 환경에서 빠르고 안전하게 패치를 적용 가능

오답 이유

- **A. Lambda — 오답**
  - Lambda는 인스턴스 관리 자동화에 사용할 수 있지만, **1,000대 EC2에 설치된 서드파티 소프트웨어를 패치하는 것은 관리 및 실행에 복잡**
  - 상태 관리, 오류 재시도, 동시 실행 제한 등 고려 필요 → 비효율적
- **C. Maintenance Window — 오답**
  - Maintenance Window는 Patch Manager 또는 Run Command와 결합해 사용 가능
  - 단독으로는 **패치 적용을 자동화하지 않으며, 스케줄 기반으로만 실행 가능**
  - 긴급 패치 시 즉시 적용에는 적합하지 않음
- **D. Run Command — 오답**
  - Run Command는 개별 명령 실행 가능, 동시 실행 제어 가능
  - 하지만 **패치 관리, 재시도, 누락 관리 등 자동화 기능 부족** → 대규모 환경에는 효율적이지 않음'),
  (51, 51, '- 요구사항
	- 매일 아침 같은 시간에 보고서 전송 -> 예약 이벤트 필요
	- API에서 데이터를 조회하고 HTML 형식으로 정리 -> 데이터 처리 필요
	- 여러 이메일 주소로 전송 -> 이메일 발송 서비스 필요
- EventBridge 예약 이벤트
	- 매일 같은 시간에 람다 함수를 트리거
	- 람다가 애플리케이션 API에서 데이터 조회
- 람다 + SES
	- 조회한 데이터를 HTML 형식으로 변환
	- SES를 사용해 여러 이메일 주소로 전송

오답 이유

- **A. Kinesis Data Firehose — 오답**
    - Firehose는 스트리밍 데이터 수집 및 변환, S3/Redshift/Splunk 전달용
    - **정기 보고서 생성 및 이메일 전송 목적에는 불필요하고 과도한 솔루션**
    
- **C. Glue Job — 오답**
    - Glue는 ETL용으로 적합
    - 단순히 매일 API 호출 후 HTML 이메일 보고서를 보내는 목적에는 **운영 오버헤드가 크고 불필요**
    
- **E. S3 + SNS — 오답**
    - S3 이벤트는 객체 생성/수정 이벤트 기반
    - **정해진 시간에 이메일 전송** 요구에는 부적합
    - 이메일 발송 시 HTML 변환 처리 어려움'),
  (52, 52, '- 요구사항
	- 표준 파일 시스템 구조 필요 -> POSIX 호환 파일 시스템
	- 자동 확장, 고가용성, 최소 운영 오버헤드
	- 수십 GB ~ 수백 TB 파일 처리 가능
- Amazon EFS
	- POSIX 호환 파일 시스템
	- 자동 확장(Auto Scaling)
	- 멀티 AZ 고가용성
	- 수많은 EC2 인스턴스에서 동시에 접근 가능

오답 이유

- **A. ECS + S3 — 오답**
    - S3는 객체 스토리지 → **표준 파일 시스템 구조(POSIX) 지원 불가**
    - 대용량 파일 처리 가능하지만, 애플리케이션이 POSIX API 사용 시 코드 수정 필요
    
- **B. EKS + EBS — 오답**
    - EBS는 **단일 AZ에 종속** → Multi-AZ 고가용성 요구 불충족
    - 자동 확장에 따라 스케일 아웃 시 새로운 인스턴스에서 EBS 공유 불가 → 추가 운영 필요
    
- **D. EC2 + EBS — 오답**
    - EBS는 **AZ 단위** → Multi-AZ EC2 인스턴스 간 공유 불가
    - 표준 파일 시스템 구조 공유 불가 → 운영 부담 발생'),
  (53, 53, '- 요구사항
	- 처음 1년 동안 즉시 액세스 가능 -> S3 Standard 사용
	- 추가 9년 아카이브 -> S3 Glacier Deep Archive 사용
	- 전체 10년 동안 삭제 불가 -> S3 Object Lock 준수 모드
	- 최대 내구성 -> S3 Standard + Glacier Deep Archive
- S3 Object Lock Compliance Mode
	- 정책 적용 기간 동안 누구도 삭제 불가, 루트 사용자 포함
	- 장기 보관 및 법규 준수 요구사항에 적합

오답 이유

- **A. S3 Glacier + 접근 제어 정책 — 오답**
    - S3 Glacier는 내구성 보장하지만, 단순 **IAM 정책만으로 삭제를 완전히 차단 불가**
    - 루트 사용자나 권한이 있는 사용자가 정책을 변경하면 삭제 가능
    
- **B. S3 Intelligent-Tiering + IAM 정책 — 오답**
    - IAM 정책으로 삭제 거부 가능하지만 **루트 사용자 또는 관리자 권한 사용 시 우회 가능**
    - 준수 모드 수준의 **법적 삭제 방지(Compliance)** 요구사항 충족 불가
    
- **D. S3 One Zone-IA + Object Lock 거버넌스 모드 — 오답**
    - 거버넌스 모드는 **권한 있는 사용자(root 포함) 우회 가능**
    - One Zone-IA는 **단일 AZ 저장**, 최대 내구성/고가용성 요구 사항 불충족'),
  (54, 54, '- 요구사항
	- Windows 파일 공유 호환성 유지 -> SMB 프로토콜 지원 필요
	- 고가용성, 내구성 확보 -> Multi-AZ 구성
	- 현재 접근 방식 그대로 유지 -> 사용자 경험 최소 변경
- Amazon FSx for Windows File Server
	- 윈도우즈 네이티브 파일 시스템 지원(NTFS, SMB)
	- Active Director 통합 가능
	- 멀티 AZ 고가용성 및 내구성 제공
	- 기존 윈도우즈 클라이언트에서 파일 접근 방식 그대로 사용 가능

오답 이유

- **A. S3로 마이그레이션 + IAM 인증 — 오답**한
    - S3는 **객체 스토리지**, NTFS/SMB 지원 불가
    - 기존 Windows 파일 공유 접근 방식(드라이브 매핑, SMB) 불가 → 사용자 경험 변화
    
- **B. S3 File Gateway — 오답**
    - File Gateway는 SMB/NFS 지원 → 일부 호환성 제공
    - 하지만 **Multi-AZ 내구성 및 고가용성 제한**, 대규모 Windows 워크로드에는 적합하지 않음
    - 성능 및 동시 액세스 제한
    
- **D. Amazon EFS — 오답**
    - EFS는 **Linux 기반 NFS 최적화**, Windows SMB 지원 제한
    - Windows 클라이언트에서 NTFS 속성, ACL 등 호환성 문제 발생'),
  (55, 55, '- 요구사항
	- DB 접근 제한 : 데이터베이스는 프라이빗 서브넷인 EC2 인스턴스에서만 접근 가능
	- VPC 서브넷 구성 : 퍼블릭, 프라이빗, DB 전용 서브넷
- 보안 그룹은 상태 저장형(Stateful) 방화벽으로, DB 인스턴스에 접근 가능한 소스를 정의할 수 있음
- DB 인스턴스 보안 그룹을 프라이빗 서브넷 EC2 인스턴스의 보안 그룹만 허용하도록 설정하면, 퍼브릵 서브넷 인스턴스나 외부에서는 접근 불가

오답 이유

- **A. 라우트 테이블 사용 — 오답**
    - 라우트 테이블은 서브넷 간 네트워크 경로를 정의하지만, **접근 제어를 위해 라우트 테이블만으로는 인스턴스 접근을 제한할 수 없음**
    - 보안 그룹이나 네트워크 ACL 없이 경로만 삭제하면 여전히 다른 방법으로 접근 가능
    
- **B. 퍼블릭 서브넷 보안 그룹 차단 — 오답**
    - 보안 그룹은 “허용” 규칙 중심이며, “거부(Deny)” 규칙을 지원하지 않음
    - AWS 보안 그룹은 **거부 규칙을 제공하지 않기 때문에**, 이 방식은 불가능
    
- **D. 피어링 연결 — 오답**
    - VPC 피어링은 서로 다른 VPC 간 트래픽을 허용할 때 사용
    - 같은 VPC 내 서브넷에서는 불필요하고, 접근 제어 문제를 해결하지 못함'),
  (56, 56, '- 요구사항
	- Regional API Gateway 사용
	- 회사 도메인 이름과 HTTPS 인증서 연결
	- Route 53으로 트래픽 라우팅
- Regional API Gateway는 해당 리전에서 ACM 인증서를 발급받아 직접 연결 가능
- 같은 리전에서 발급된 ACM 인증서를 사용해야 Regional API Gateway에서 HTTPS 지원
- Route 53 Alias 레코드를 이용해 API Gateway 엔드포인트로 트래픽 라우팅 가능

오답 이유

- **A. Stage 변수 사용 — 오답**
    - Stage 변수는 **엔드포인트 URL을 변경하지 못함**
    - API Gateway 커스텀 도메인 연결과 HTTPS 인증서 연결이 필요함
    
- **B. ACM 인증서를 us-east-1 리전에서 가져옴 — 오답**
    - Regional API Gateway는 **동일 리전에서 발급된 ACM 인증서만 지원**
    - us-east-1 인증서는 Global CloudFront 배포와 연동되는 Edge-optimized API Gateway에서만 사용 가능
    
- **D. ACM 인증서를 us-east-1 리전에서 가져오고 A 레코드 사용 — 오답**
    - Regional API Gateway는 **같은 리전 ACM 인증서 필요**
    - A 레코드를 직접 도메인 이름으로 연결하는 방식은 Route 53에서 지원하지 않음; Alias 사용해야 함'),
  (57, 57, '- 요구사항
	- 이미지 콘텐츠 분석
	- 부적절한 콘텐츠 감지
	- 개발 노력 최소화
- Amazon Rekognition은 이미지와 동영상 분석을 위한 완전관리형 서비스
	- NSFW 또는 부적절 콘텐츠 감지 기능 제공
- Human Review 기능과 통합하여 낮은 신뢰도 예측 처리 가능
- SageMaker, Fargate 등은 커스텀 모델 구축이 필요해 개발 부담 높음

오답 이유

- **A. Amazon Comprehend — 오답**
    - Comprehend는 **텍스트 분석 서비스**로, 이미지 분석 기능이 없음
    - 이미지 내 부적절 콘텐츠 검출 불가
    
- **C. Amazon SageMaker — 오답**
    - SageMaker는 커스텀 ML 모델 개발 필요
    - 요구사항의 **개발 노력 최소화** 조건을 충족하지 못함
    
- **D. AWS Fargate + 커스텀 모델 — 오답**
    - 컨테이너화된 커스텀 ML 모델 배포 필요
    - 개발, 배포, 관리 부담이 매우 높음'),
  (58, 58, '- 요구사항
	- 컨테이너화된 중요 애플리케이션 실행
	- 확장성 및 가용성 보장
	- 기반 인프라 관리 책임 없음
	- 애플리케이션 유지보수에 집중
- AWS Fargate는 서버리스 컨테이너 실행환경으로 사용자는 컨테이너 정의와 리소스 요구 사항만 지정하면 기반 이프라(EC2, OS, 패치 등)를 관리할 필요 없음
- ECS와 Fargate를 함께 사용하면 클러스터 관리 없이 컨테이너 단위로 확장 가능
- 

오답 이유

- **A. EC2 + Docker 설치 — 오답**
    - 사용자가 EC2 인스턴스와 Docker 환경을 직접 관리해야 함
    - 기반 인프라 관리 책임이 요구사항과 불일치
    
- **B. ECS on EC2 — 오답**
    - ECS 클러스터를 EC2에서 실행하면 EC2 인스턴스와 OS, 패치, 스케일링 등을 직접 관리해야 함
    - 완전 관리형 서버리스 요구사항 불충족
    
- **D. EC2 + ECS 최적화 AMI — 오답**
    - ECS 최적화 AMI는 인프라 설정을 단순화하지만, **EC2 인스턴스 관리 책임은 여전히 사용자에게 있음**
    - 기반 인프라 관리 부담 제거되지 않음'),
  (59, 59, '- 요구사항
	- 매일 30TB 이상의 대규모 클릭스트림 데이터 처리
	- 실시간 또는 near-real-time 데이터 전송 가능
	- 대규모 분석 가능
- Kinesis Data Streams : 대규모 실시간 스트리밍 데이터를 수집 가능
- Kinesis Data Firehos : 스트리밍 데이터를 S3 데이터 레이크로 안정적으로 전달
- S3 데이터 레이크 + Redshift : S3에서 데이터를 저장하고 Redshift에서 분석 가능

오답 이유

- **A. Data Pipeline + EMR** — 오답
    - Data Pipeline은 배치 기반 데이터 전송에 적합
    - 실시간 수집과 매일 30TB 이상 데이터 처리에는 적합하지 않음
    - EMR을 직접 관리해야 하므로 운영 부담 증가
    
- **B. EC2 Auto Scaling + S3 + Redshift** — 오답
    - EC2로 스트리밍 데이터를 처리하려면 직접 인프라와 스케일링 관리 필요
    - 운영 부담이 높음
    
- **C. CloudFront 캐시 + Lambda** — 오답
    - Lambda는 15분 실행 제한, 초당 호출 제한 존재
    - 하루 30TB 대규모 데이터 처리에는 부적합'),
  (60, 60, '- ALB는 HTTP와 HTTPS를 동시에 처리 가능하며 리스너 규칙을 통해 HTTP 요청을 HTTPS로 리디렉션 가능
- ALB 자체에서 URL 리디렉션 기능을 제공하므로 추가 서버 구성을 하지 않고 HTTPS 강제 적용 가능

오답 이유

- **A. 네트워크 ACL을 업데이트하여 HTTPS만 허용** — 오답
    - 단순히 HTTP 트래픽을 차단하면 브라우저에서 오류 발생
    - 기존 HTTP 요청을 HTTPS로 리디렉션하지 않음
    
- **B. URL에서 HTTP를 HTTPS로 바꾸는 규칙 생성** — 오답
    - URL 문자열 자체를 바꾸는 방식은 ALB에서 직접 지원하지 않음
    - 애플리케이션 레벨에서 처리해야 하므로 운영 부담 증가
    
- **D. NLB로 교체** — 오답
    - Network Load Balancer는 L4 계층으로 HTTP 리디렉션 기능 제공하지 않음
    - SNI는 TLS 호스트 이름 식별용으로 HTTPS 강제와 관련 없음'),
  (61, 61, '- AWS Secrets Manager는 데이터베이스 자격 증명 자동 회전을 기본적으로 지원
- 람다 등 추가 코드 작성 없이 RDS와 통합하여 자격 증명을 주기적으로 교체 가능
- EC2 역할에 권한만 부여하면 애플리케이션이 Secrets Manager API를 통해 안전하게 자격 증명을 조회 가능

오답 이유

- **A. 인스턴스 메타데이터 사용** — 오답
    - 인스턴스 메타데이터는 민감 정보 저장용이 아님
    - 자격 증명 회전 자동화 및 보안 측면에서 부적합
    
- **B. S3 구성 파일 사용** — 오답
    - 파일 기반 저장은 보안 및 회전 관리가 복잡
    - Lambda를 이용한 스크립트 작성 필요 → 운영 부담 증가
    
- **D. Parameter Store 사용** — 부분적으로 가능하지만 부적합
    - Parameter Store는 암호화된 매개변수 저장 가능
    - 하지만 **자동 회전 기능이 Secrets Manager만큼 완전하게 지원되지 않음**
    - RDS 통합 회전도 별도로 구현 필요 → 운영 부담 증가'),
  (62, 62, '- 외부 CA에서 발급한 인증서 사용
- ACM 관리형 인증서 자동 갱신은 ACM이 발급한 인증서에만 적용
- 따라서 외부 CA 인증서는 ACM에 수동으로 가져오기(import) 해야 하며 자동 갱신 불가
- EventBridge(CloudWatch Events)를 통해 만료 전 알림을 받고, 수동으로 인증서 교체

오답 이유

- **A. ACM 발급 + 자동 갱신** — 오답
    - ACM 관리형 자동 갱신은 **ACM 자체 발급 인증서만 지원**
    - 외부 CA 인증서는 자동 갱신 불가
    
- **B. ACM 발급 후 키 자료 가져오기 + 자동 갱신** — 오답
    - ACM이 발급한 인증서를 가져오는 개념은 불필요
    - 외부 CA 인증서 요구 조건과 맞지 않음
    
- **C. ACM Private CA + 자동 갱신** — 오답
    - Private CA는 내부에서 자체 CA 발급용
    - 문제에서 요구하는 **외부 CA 발급** 조건과 맞지 않음'),
  (63, 63, '- S3 + Lambda 조합은 서버리스 아키텍처로, 확장성 자동 확보 및 관리 부담 최소화
- Lambda S3 PUT 이벤트 기반으로 파일 변환을 자동 처리
- 비용 효율적: 서버리스이므로 사용한 만큼만 비용 발생, EC2/EBS/Elastic Beanstalk 대비 초기 및 운영 비용 절감
- 대용량 파일 변환, 확장성, 원본과 변환본 저장 모두 만족

오답 이유

- **B. DynamoDB + Lambda** — 오답
    - DynamoDB는 **문서 저장용이 아닌 NoSQL 키-값/문서 DB**
    - 5MB PDF를 DynamoDB에 저장하면 **아이템 크기 제한(400KB)**에 걸림
    - 대용량 파일 처리 불가
    
- **C. EC2 + EBS + Beanstalk** — 오답
    - EC2와 Beanstalk 기반이면 서버 프로비저닝 및 관리 필요
    - EBS는 **EC2 단일 AZ 종속** → 고가용성 확보 어렵고 스토리지 비용 상승
    - 서버리스보다 운영 오버헤드 큼
    
- **D. EC2 + EFS + Beanstalk** — 오답
    - EFS는 공유 스토리지로 좋지만 EC2 + Beanstalk와 결합하면 **서버 관리 필요**
    - 비용과 운영 부담이 증가
    - Lambda + S3 대비 불필요하게 복잡'),
  (64, 64, '- FSx for Windows File Server는 윈도우즈 환경과 완벽 호환되는 관리형 파일 스토리지
- FSx File Gateway를 온프레미스에 배포하면 기존 윈도우즈 파일 공유 접근 패턴을 그대로 유지 가능
- Site-to-Site VPN을 통해 온프레미스와 AWS 간 접근이 가능하며 최소 지연과 고가용성 제공
- 관리형 FSx와 File Gateway로 서버 프로비저닝/패치 필요 없음

오답 이유

- **A. FSx 단독 사용** — 오답
    - 클라우드에만 FSx를 배포하면 온프레미스 접근 시 VPN 지연 발생 가능
    - “최소 지연” 요구사항을 충족하지 못함
    
- **B. S3 File Gateway 단독 사용** — 오답
    - S3는 객체 스토리지이며 Windows 파일 서버 호환이 제한적
    - 기존 애플리케이션의 파일 접근 패턴(파일 공유, SMB/NFS)과 호환되지 않을 수 있음
    
- **C. S3 File Gateway + S3** — 오답
    - 온프레미스 애플리케이션이 파일 공유를 바로 사용하기 어렵고, 객체 스토리지 특성상 파일 수정 시 지연 발생
    - 최소 지연 요구사항 및 운영 효율성 미충족'),
  (65, 65, '- Amazon Textract: PDF 및 JPEG 문서에서 구조화된 텍스트를 자동으로 추출
- Amazon Comprehend Medical : 추출된 텍스트에서 의료 관련 PHI(환자 이름, 진단, 처방 등)를 자동 식별
- 서버리스 환경(AWS 람다)과 완전관리형 서비스 활용으로 운영 오버헤드 최소화
- 기존 파이썬 라이브러리를 사용한 수동 처리(A)는 직접 구현과 유지보수가 필요하므로 오버헤드가 높음


오답 이유

- **A. 기존 Python 라이브러리 사용** — 오답
    - 텍스트 추출과 PHI 식별 알고리즘을 직접 구현해야 하므로 개발 및 운영 오버헤드 큼
    
- **B. Textract + SageMaker** — 오답
    - SageMaker로 PHI 모델을 직접 학습시켜야 하므로 개발·학습 비용 및 관리 오버헤드가 큼
    - 요구사항에서 “운영 오버헤드 최소화” 조건 미충족
    
- **D. Rekognition + Comprehend Medical** — 오답
    - Rekognition은 주로 이미지/비디오 분석용이며, 텍스트 추출 정확도가 Textract보다 낮음        
    - PDF 지원이 제한적이므로 문서 처리에는 적합하지 않음'),
  (66, 66, '- 객체는 항상 접근 가능해야하고 생성 후 30일 동안 자주 접근 -> S3 Standard 사용
- 이후로는 드물게 접근 -> S3 Standard-IA로 이동
- Standard-IA는 접근 빈도가 낮은 객체에 대해 비용 효율적이면서 즉시 접근 가능
- 4년 후 삭제 정책을 적용하면 규정 준수 가능
- Glacier는 즉시 접근 불가이므로 정책상 요구사항과 맞지 않음

오답 이유

- **A. Standard → Glacier** — 오답
    - Glacier는 **즉시 접근 불가**, 객체가 중요하고 즉시 접근 필요하므로 부적합
    
- **B. Standard → One Zone-IA** — 오답
    - One Zone-IA는 단일 AZ에 저장 → 내구성은 낮음(99.5%)
    - 중요한 비즈니스 데이터이고 재생산이 어려움 → 내구성 우선시
    
- **D. Standard → Standard-IA → Glacier** — 오답
    - 4년 후 Glacier로 이동하면 즉시 접근 불가
    - 정책상 요구사항(항상 즉시 접근 가능)에 맞지 않음'),
  (67, 67, '- SQS 메시지를 EC2 인스턴스가 읽으면 가시성 타임아웃(visibility timeout) 동안 다른 소비자가 해당 메시지를 처리하지 못하게 막음
- RDS에 메시지를 기록하는 동안 처리가 완료되기 전에 가시성 타임아웃이 짧으면 SQS는 메시지를 다시 보낼 수 있음
- 이로 인해 중복 레코드가 발생
- 가시성 타임아웃을 충분히 늘려 처리 완료 후 메시지를 삭제하도록 하면 메시지의 중복 처리 방지 가능


오답 이유

- **A. CreateQueue API 호출** — 오답
    - 새 큐를 만드는 것은 중복 처리 문제와 관련 없음.
    
- **B. AddPermission API 호출** — 오답
    - 권한 설정은 메시지 처리 실패나 중복 문제와 관련이 없음.
    
- **C. ReceiveMessage API 호출** — 오답
    - 대기 시간을 설정하는 것은 **폴링 지연(long polling)**과 관련 있음
    - 중복 레코드 문제 해결에는 직접적인 영향 없음'),
  (68, 68, '- 일관된 낮은 지연 시간 필요 -> AWS Direct Connect가 기본 연결로 적합
- 비용 최소화와 주 연결 실패 시 느린 연결 허용 -> 백연 연결로는 저비용의 VPN 연결 설정
- 이러한 구성 = Direct Connect + VPN failover 아키텍처 -> 일반적인 하이브리드 환경에서 비용 효율적이고 고가용성을 제공'),
  (69, 69, '- 웹 서버 계층 : 오토 스케일링 그룹을 여러 가용 영역(AZ)에 배포하면 특정 AZ 장애 시에도 트래픽이 다른 AZ로 라우팅되어 최소 다운타임 달성 가능
- 데이터베이스 계층 : 오로라 데이터베이스를 멀티 AZ 배포로 구성하면 기본 인스턴스 장애 시 자동으로 장애 조치가 발생해 데이터 손실 최소화
- RDS Proxy : 데이터베이스 연결 관리와 장애 조치 시 애플리케이션 연결 재사용을 지원하여 운영 부담 감소

오답 이유

- **A. 서로 다른 AWS 리전 + Cross-Region Replication**
    - 장점: 리전 장애 대비 가능
    - 단점: 복잡한 아키텍처, Route 53 헬스 체크 및 트래픽 관리 필요, 지연 시간 증가 가능, 운영 노력 큼
    
- **C. 한 AZ + 매시간 스냅샷**
    - 장점: 단순
    - 단점: AZ 장애 시 서비스 중단 발생, 데이터 손실 가능 (최대 1시간치), 다운타임 길어짐 → 요구사항 충족 못함
    
- **D. 여러 리전 + S3 이벤트 → Lambda → DB 기록**
    - 장점: 글로벌 확장 가능
    - 단점: 애플리케이션 로직 변경 필요, 지연 시간 증가, 복잡한 이벤트 기반 처리 → 최소 운영 노력 아님'),
  (70, 70, '- NLB는 TCP 수준의 헬스 체크만 지원하므로 HTTP 상태 코드 기반의 오류 감지가 불가능 -> 웹 애플리케이션의 HTTP 오류를 자동 감지 불가능
- ALB는 HTTP/HTTPS 기반 헬스 체크를 지원하며, 지정한 URL을 통해 실제 애플리케이션 상태를 확인
- ALB와 오토스케일링을 함께 사용하면 비정상 인스턴스가 감지되면 자동으로 교체되므로 운영자가 수동으로 재시작할 필요 없음

오답 이유

- **A. NLB에서 HTTP 헬스 체크 활성화**
    - NLB는 **TCP/UDP 수준 헬스 체크만 지원**하며, HTTP 상태 코드 기반 오류 감지는 불가 → 요구사항 불충분
    
- **B. 크론 작업으로 로그 확인 후 재시작**
    - 수동 스크립트 작성 필요, 운영 부담 큼 → “커스텀 스크립트 없이” 조건 불충족
    
- **D. CloudWatch 알람 + Auto Scaling**
    - NLB UnhealthyHostCount는 **TCP 헬스 체크 실패만 감지** 가능
    - HTTP 오류는 감지 불가 → 애플리케이션 상태를 정확히 반영하지 못함'),
  (71, 71, '- RPO 15분 요구는 손상 발생 시 그 시점에서 15분 이내의 상태로 복수할 수 있어야 한다는 뜻
- DynamoDB의 PITR(Point-in-Time Recovery)은 마지막 35일 범위 내에서 초 단위로 원하는 시점으로 복원할 수 있음
- 복원 절차는 기존(손상된) 테이블을 덮어쓰지 않고 새 테이블로 복원한 뒤 애플리케이션의 연결을 새 테이블로 전환(컷오버)하는 방식으로 진행 -> 데이터 손실을 최소화하고 안전하게 복구 가능
- RTO 1시간도 현실적으로 달성 가능
	- 실제 복원 시간은 테이블 크기와 항목 수에 따라 다름
	- 복원 시간을 사전 테스트하여 1시간 이내 복구 가능한지 검증 필요
	- 일반적으로 PITR 복원은 대규모 테이블에서도 수십 분에서 한 시간 이내에 안료되는 경우가 많음
- PITR은 관리형 기능으로 활성화만 하면 지속적으로 데이터 변경을 백업하므로 가장 적은 운영 노력 -> 운영 부담이 적음

오답 이유

- **A. DynamoDB 글로벌 테이블 — 오답**
    - 글로벌 테이블은 여러 리전 간에 쓰기/읽기 복제를 제공하므로 리전 장애에 대비할 수 있으나, **데이터 손상(corruption)이 한 리전에서 발생하면 그 변경이 다른 리전으로도 복제되어 전역으로 전파될 수 있음**. 즉, 손상 시점을 롤백하는 기능을 제공하지 않으므로 RPO(15분) 요구를 보장하지 못합니다.
    - 글로벌 테이블만으로는 “특정 시점으로 되돌리기”가 불가능하며, 손상된 데이터를 수동으로 조치해야 할 수 있어 운영 부담이 큽니다.
    
- **C. S3 Glacier로 일일 익스포트 — 오답**
    - 하루 단위(매일) 백업은 **RPO가 최대 24시간**이 되어 15분 목표를 크게 초과합니다. 또한 Glacier에서 복원하는 데 시간(수 분 ~ 시간)이 더 걸리므로 RTO 1시간 보장도 어렵습니다.
    
- **D. EBS 스냅샷 사용 — 오답**
    - DynamoDB는 관리형 NoSQL 서비스로서 **EBS 스냅샷을 통한 백업/복원 방식이 적용되지 않음(구현 불가)**. EBS 스냅샷은 EC2 인스턴스의 블록 스토리지에만 해당하므로 이 옵션은 기술적으로 부적절합니다.'),
  (72, 72, '- 현재 데이터 전송 비용이 증가한 주된 원인은 인스턴스가 S3에 접근할 때 인터넷/NAT 경로를 통해 나가면서 발생하는 egress 또는 NAT 처리 요금일 가능성이 높음
- S3 VPC 게이트웨이 엔드포인트를 사용하면 VPC 내부에서 S3로 가는 트래픽이 퍼블릭 인터넷, 인터넷 게이트웨이(IGW), 또는 NAT 게이트웨이를 통하지 않고 AWS 네트워크 내부에서 직접 처리
- 게이트웨이 엔드포인트를 사용하면 이러한 경로를 우회하여 NAT/IGW 관련 데이터 전송비(및 NAT 처리비)를 피할 수 있음
- 엔드포인트 정책을 통해 특정 버킷만 허용하도록 제한할 수 있어 보안도 강화, 구현이 간단하고 운영 오버헤드가 거의 없음

오답 이유

- **A. API Gateway를 퍼블릭 서브넷에 배포하고 S3 호출을 라우팅** — 오답
    - API Gateway는 HTTP API/REST API를 위한 관리형 서비스이며 S3 트래픽을 중계하도록 설계된 방법이 아닙니다. API Gateway를 통해 S3로 라우팅하면 추가 요청/데이터 처리 비용 및 복잡성만 증가합니다. 데이터 전송 비용 절감과는 무관하거나 오히려 비용이 증가할 수 있습니다.
    
- **B. NAT 게이트웨이 배포 + 엔드포인트 정책 연결** — 오답
    - NAT 게이트웨이를 거치면 프라이빗 인스턴스의 아웃바운드 트래픽이 인터넷 경로(또는 퍼블릭 서비스 경로)를 통해 전달되므로 **NAT 게이트웨이 시간당/GB당 요금**이 발생합니다. NAT을 사용하면 오히려 비용이 더 늘어날 가능성이 높습니다. (또한 NAT 게이트웨이에는 엔드포인트 정책 같은 개념이 직접 적용되지 않습니다.)
    
- **C. 애플리케이션을 퍼블릭 서브넷에 두고 IGW 경유 접근** — 오답
    - 인터넷 게이트웨이를 통한 접근은 인터넷 egress 식으로 처리되어 **데이터 전송 비용이 발생**합니다. 퍼블릭으로 두면 보안 노출 위험도 커지고 비용 절감 목적에 반합니다.'),
  (73, 73, '- 트래픽 흐름은 온프레미스 -> 회사 인터넷을 통해 퍼블릭 IP(또는 공인 주소)를 사용한 배스천 호스트 -> VPC 내부의 애플리케이션(프라이빗 IP)
- 퍼블릭에서 배스천으로 접속을 허용하려면 배스천의 보안 그룹이 회사(온프레미스)의 외부(공인) IP 범위만 인바운드로 허용하도록 설정
- 배스천에서 프라이빗 서브넷의 애플리케이션으로 SSH 연결할 때는 소스가 배스천의 프라이빗 IP(또는 배스천의 보안 그룹)으로 나타나므로 애플리케이션 인스턴스의 보안 그룹은 배스천의 프라이빗 IP에서만 SSH 허용하도록 제한


오답 이유

- **A. 배스천 보안 그룹을 애플리케이션 인스턴스에서만 허용하도록 교체 — 오답**
    - 배스천은 외부(온프레미스)에서 접근해야 하는 퍼블릭 호스트입니다. 배스천의 보안 그룹을 애플리케이션 인스턴스에서만 접근 허용하도록 바꾸면 외부에서 배스천으로 SSH할 수 없게 되어 요구사항을 충족하지 않습니다.
    
- **B. 배스천 보안 그룹을 회사의 내부 IP 범위(사설 주소)만 허용하도록 교체 — 오답**
    - 온프레미스에서 접속할 때는 공인 IP(또는 회사의 인터넷 출발지 공인 주소)를 사용하여 인터넷을 통해 접속합니다. 배스천이 내부(사설) IP 대역만 허용하면 외부 인터넷에서 접근 불가합니다. (내부 IP 범위는 VPC 내/온프레 내부 네트워크용이며, 공인 인터넷 트래픽 출처와 다릅니다.)
    
- **E. 애플리케이션 보안 그룹을 배스천의 퍼블릭 IP에서만 SSH 허용하도록 교체 — 오답**
    - 배스천이 내부 대상으로 애플리케이션에 접속할 때 소스 IP는 퍼블릭 IP가 아니라 **사설 IP**(VPC 내부 주소)이므로, 퍼블릭 IP를 허용하면 접속이 차단됩니다. 또한 퍼블릭 IP 허용은 보안상 바람직하지 않음(패킷 출발지를 신뢰할 수 없음).'),
  (74, 74, '- 웹 계층은 외부 사용자로부터 HTTPS로 접근받아야 하므로 웹 계층 보안 그룹에서 인바운드 포트 443을 0.0.0.0/0으로 허용
- 데이터베이스는 프라이빗 서브넷에 있고 외부에서 직접 노출되서는 안됨 -> 웹 계층에서만 DB에 접속하도록 제한하려면 DB 보안 그룹의 인바운드 규칙에 웹 계층의 보안 그룹을 소스로 하여 포트 1443(MSSQL)을 허용
- 보안 그룹을 소스로 지정하면 웹 계층 인스턴스들의 동적 IP 변경에도 규칙이 유효

오답 이유

- **B. 웹 계층의 보안 그룹을 포트 443 아웃바운드로 0.0.0.0/0 허용 — 오답**
    - 보안 그룹은 상태 저장(stateful)이므로, 웹 계층에서 클라이언트로의 응답 트래픽은 별도 아웃바운드 규칙 없이도 허용됩니다(요청이 들어오면 응답이 자동 허용). 보통 웹 서버는 아웃바운드 모든 트래픽을 허용해도 무방하지만, 문제의 목적(웹에서 들어오는 HTTPS 허용)을 달성하려면 인바운드 규칙이 핵심입니다. 따라서 B는 필수적 규칙이 아니며 정답으로 적절치 않습니다.
    
- **D. DB 보안 그룹에서 포트 443 및 1433의 아웃바운드 트래픽을 웹 계층 SG로 허용 — 오답**
    - 데이터베이스는 일반적으로 클라이언트(웹 서버)로 연결을 받는 역할이며, DB에서 웹 서버로 아웃바운드(특히 HTTPS 포트 443)로 연결할 필요가 없습니다. 또한 보안 그룹 규칙은 주로 인바운드 측에서 출발지(SG)를 제한하는 방식으로 설계합니다. DB가 웹으로 연결을 시작할 필요가 없다면 이 규칙은 불필요하며 보안 원칙에도 맞지 않습니다.
    
- **E. DB 보안 그룹에서 포트 443 및 1433의 인바운드를 웹 계층 SG에서 허용 — 오답**
    - 포트 1433은 적절하지만 포트 443(HTTPS)은 DB에 대해 일반적으로 필요하지 않습니다. DB에 443을 허용하는 것은 불필요한 노출을 초래하므로 최소 권한 원칙에 위배됩니다. 따라서 E는 과하게 열려 있는 규칙을 포함하고 있어 부적절합니다.'),
  (75, 75, '- 핵심 문제 : 계층 간 동기 호출에서 한 계층이 과부하되면 트랜잭션 손실 -> 계층 간 비동기적 완충(buffering)과 자동 확장이 가능한 처리 구조 필요
- API Gateway -> Lambda로 요청을 서버리스로 처리해 운영 부담을 줄임
- 서비스 간의 통신은 SQS로 비동기화하여 버퍼링과 내구성 확보
- SQS는 메시지를 안정적으로 보관하고 소비자(람다)가 준비되면 처리하게 하므로 과부하 시에도 트랜잭션 유실 방지
- 람다와 SQS 결합은 자동 확장과 pay-per-use 요금 모델을 제공해 운영 효율과 비용 효율성에서 우수
- SQS는 DLQ, 가시성 타임아웃, 메시지 재시도 정책, FIFO 등 생산성 신뢰성 기능을 제공해 모던 아키텍처를 구성할 수 있음

오답 이유

- **B. CloudWatch로 과거 피크를 분석하고 EC2 크기를 늘림 — 오답**
    - 수직 확장(인스턴스 크기 증가)은 일시적인 완화책일 뿐이며, 트래픽 패턴이 변화하거나 갑작스런 스파이크가 발생하면 여전히 과부하와 트랜잭션 손실이 발생할 수 있습니다.
    - 또한 수직 확장은 **운영·비용 부담**이 크고 모던화(서버리스/마이크로서비스로의 전환) 요구를 충족하지 못합니다.
    - 근본적 해결책(비동기 완충 + 자동 확장) 대신 부하에 맞춘 크기 증설은 비효율적입니다.
    
- **C. SNS로 메시징하고 EC2 Auto Scaling 사용 — 오답**
    - SNS는 **pub/sub**(브로드캐스트) 모델로, 다수 구독자에게 동시 전달이 필요할 때 유리합니다. 그러나 **과부하 시 메시지 보유/버퍼링 기능이 SQS만큼 적합하지 않으며**, 메시지 순서 보장·재시도 제어·DLQ 등을 SNS만으로 구현하기 어렵습니다.
    - 또한 “SNS 대기열 길이”를 모니터링한다는 서술 자체가 부정확합니다(실제로는 SQS에 해당하는 개념). SNS는 큐 길이 지표를 제공하지 않으며, EC2 인스턴스 기반 처리 시 운영 부담이 높습니다.
    
- **D. SQS + EC2 Auto Scaling (Queue-based scaling) — 부분적으로 타당하나 오답**
    - 이 옵션은 **디커플링(비동기화)**을 제공하므로 트랜잭션 유실을 막는다는 관점에서는 타당합니다. SQS 큐 길이를 기반으로 Auto Scaling을 트리거하면 과부하에 대응할 수 있습니다.
    - 그러나 **운영 효율성 측면(AWS 관리형 서버리스 대비)**에서 보면 EC2 인스턴스와 Auto Scaling을 계속 관리해야 하므로 A보다 운영 부담이 큽니다.
    - 문제는 “가장 운영적으로 효율적”을 요구하므로 **관리 부담이 적은 서버리스(Lambda)** 를 사용하는 A가 더 우수합니다.'),
  (76, 76, '- 요구사항
	- 매일 10TB
	- 파일(JSON) 기반 전송
	- 민감 데이터이므로 보안/신뢰성 우선
	- 거의 실시간 분석
- AWS DataSync는 파일(SAN/NFS/SMB 등)에서 아마존 S3로 대량의 파일을 안정적으로, 고속으로 전송하도록 설계된 관리형 서비스
	- 병령 전송, 자동 재시도, 데이터 유효성 검사(무결성 검증), 소스/대상 간의 차이점만 전송하는 증분 전송 등 신뢰성과 성능 제공
- Direct Connect는 온프레미스와 AWS 간의 전용 네트워크 회선으로 공용 인터넷을 통과하지 않으므로 대역폭이 크고 지연과 변동성이 낮음. 보안과 일관성 면에서도 우수
	- 하루 10TB에 달하는 지속적 고용량을 전송하려면 공용 인터넷보다 Direct Connect가 더 안정적이고 비용 측면에서도 유리

오답 이유

- **A. AWS DataSync over public internet — 오답(부분적 타당성 있으나 최선 아님)**
    - DataSync 자체는 적합하지만 **공용 인터넷 경로**는 대규모 지속 전송(10TB/일)에서 지연·변동성·보안(인터넷 경로 노출) 리스크가 커지고, 전송 실패/성능 저하 가능성이 큽니다. 튼튼한 암호화(TLS)는 제공되나, 고객이 “보안·신뢰성 우선”을 명시했으므로 Direct Connect가 더 적합합니다.
    
- **C. AWS DMS over public internet — 오답**
    - DMS는 **데이터베이스(테이블/레코드) 복제/마이그레이션**에 특화된 서비스이며, 파일 시스템(SAN에 있는 JSON 파일) 전송용으로 적절치 않습니다. 또한 공용 인터넷을 경유하면 위와 같은 네트워크 신뢰성 문제가 있습니다.
    
- **D. AWS DMS over Direct Connect — 오답**
    - Direct Connect는 적합하지만 **DMS는 파일(오브젝트) 전송 목적이 아님**. 온프레 파일 시스템 → S3 로 대용량 파일을 옮기는 시나리오에는 DataSync가 올바른 선택입니다.'),
  (77, 77, '- 요구사항
	- 실시간 데이터 수집(ingestion)
	- 데이터 변환 및 저장
	- 운영 오버헤드 최소화
- API Gateway는 서버리스 API 엔드포인트를 제공하여 EC2를 직접 운영할 필요가 없으므로 운영 오버헤드가 낮음
- Amazon Kinesis Data Streams + Kinesis Data Firehose 조합은 실시간 데이터 스트리밍과 변환 및 S3로의 안정적인 저장을 제공
- 람다를 사용하면 Firehose 내에서 실시간으로 데이터 변환 가능 -> 서버를 직접 관리하지 않아도 됨

오답 이유

- **A. EC2를 호스팅하여 API를 운영**
    - EC2를 직접 운영하면 서버 관리, 패치, 확장 등 운영 오버헤드가 발생합니다. 문제에서 최소 운영 오버헤드를 요구하므로 부적합합니다.
    
- **B. EC2 + AWS Glue 직접 연동**
    - Glue는 ETL(batch) 중심 서비스로 실시간 스트리밍 데이터 처리에 최적화되어 있지 않습니다. 또한 EC2 API 호스팅으로 운영 오버헤드가 발생합니다.
    
- **D. API Gateway → AWS Glue + Lambda transform → S3**
    - Glue는 서버리스지만 스트리밍 데이터 처리에 Glue Streaming을 사용하는 경우 설정이 복잡하고 Firehose 대비 운영 및 지연 측면에서 불리합니다. Firehose는 실시간 S3 적재에 최적화되어 있습니다.'),
  (78, 78, '- 요구사항
	- DynamoDB 테이블 데이터를 7년 동안 보존
	- 운영 효율성(자동화, 최소 수동 작업)
- AWS Backup은 DynamoDB를 포함한 여러 AWS 서비스에 대해 자동 백업 일정과 장기 보존 정책을 구성 가능

오답 이유

- **A. DynamoDB 포인트 인 타임 복구(PITR)**
    - PITR은 **35일 동안만** 데이터를 복원 가능하며, 7년 장기 보존 요구사항을 충족하지 못합니다.
    - 따라서 장기 보존에는 적합하지 않습니다.
    
- **C. DynamoDB 온디맨드 백업 + S3 저장 + 수명주기**
    - 온디맨드 백업은 수동으로 생성해야 하므로 장기 보존 시 운영 오버헤드가 높습니다.
    - 7년 동안 반복적으로 수동 백업을 관리해야 하므로 자동화 요구사항에 부적합합니다.
    
- **D. EventBridge + Lambda + S3 수명주기**
    - 가능은 하지만, Lambda 스케줄링, 에러 처리, 모니터링 등 추가 관리가 필요하므로 운영 효율성이 낮습니다.'),
  (79, 79, '- 요구사항
	- 아침 시간에는 테이블이 사용되지 않음 -> 비용 최적화 필요
	- 저녁에는 급격하고 예측 불가하게 증가 -> 유연한 용량 필요
- DynamoDB 온디맨드 모드는 사용량 기반으로 과금되며 트래픽이 없을 때 비용이 발생하지 않고 급격한 트래픽 증가도 자동 처리 가능

오답 이유

- **B. 글로벌 보조 인덱스(GSI)**
    - GSI는 쿼리 성능 향상용이며 비용 최적화나 자동 스케일링과 직접 관련이 없음.
    - 트래픽 급증 문제를 해결하지 못함.
    
- **C. 프로비저닝된 용량 + 자동 스케일링**
    - 자동 스케일링은 트래픽 변동을 다루지만, 초기 용량을 항상 프로비저닝해야 하므로 아침 사용량이 없는 시간에도 비용이 일부 발생할 수 있음.
    - 급격한 스파이크에 즉시 대응하지 못할 수도 있음(스케일링 조정 지연).
    
- **D. 프로비저닝된 용량 + 글로벌 테이블**
    - 글로벌 테이블은 다중 리전 데이터 복제를 위한 것이며, 트래픽 급증 및 비용 최적화 요구와는 직접적인 관련이 없음.
    - 글로벌 테이블은 추가 비용 발생.'),
  (80, 80, '- 목표는 특정 MSP 파트너 계정과만 안전하게 AMI를 공유하고 암호화된 EBS 스냅샷 접근 권한도 안전하게 제공
- AMI launchPermission 속성 수정 -> 특정 AWS 계정과만 공유
- KMS 키 정책 수정 -> MSP 파트너 계정이 해당 KMS 키를 사용해 스냅샷을 복호화하고 AMI를 사용할 수 있도록 허용

오답 이유

- **A. 암호화된 AMI와 스냅샷을 공개적으로 공유**
    - 공개 공유는 모든 AWS 계정이 AMI와 스냅샷에 접근 가능 → 보안 위험
    - 고객 관리 KMS 키의 권한만으로 안전성을 보장할 수 없음.
    
- **C. MSP 파트너의 KMS 키를 새로 사용하도록 변경**
    - AMI 및 스냅샷은 원래 KMS 키로 암호화되어 있음
    - 새 키를 신뢰하도록 변경하면 스냅샷 재암호화 필요 → 불필요한 운영 오버헤드
    
- **D. S3로 내보내고 MSP KMS 키로 암호화 후 복사**
    - 가능하지만 절차가 복잡하고 추가 단계 발생
    - 운영 오버헤드가 많고, 기존 KMS 키 공유 방법보다 불필요하게 복잡'),
  (81, 81, '- 병렬 처리 기능 -> 작업 큐 필요
- 상태가 없는 (stateless) 프로세서 -> 여러 인스턴스에서 자유롭게 처리 가능
- 느슨한 결합 -> SQS 사용으로 달성 가능
- 적업 항목의 내구성 -> SQS가 메시지 내구성 보장
- 오토 스케일링으로 작업량에 따라 노드 추가/제거 -> SQS 대기열 길이에 기반한 스케일링 정책 적용

오답 이유

- **A. SNS + CPU 사용률 기반 스케일링**
    - SNS는 메시지 전달만 지원하고 내구성을 보장하지 않음 → 메시지가 유실될 수 있음
    - CPU 사용률로 스케일링하면 대기열 길이와 무관하게 스케일링됨 → 수요 기반 자동 확장 불가
    
- **B. SQS + 네트워크 사용량 기반 스케일링**
    - SQS는 적합하지만 네트워크 사용량 기반 스케일링은 메시지 처리량과 일치하지 않아 효율적이지 않음
    
- **D. SNS + 메시지 수 기반 스케일링**
    - SNS는 메시지를 내구성 있게 저장하지 않음 → 메시지 유실 가능
    - 느슨한 결합(loose coupling) 구현 어려움'),
  (82, 82, '- ACM에서 가져온 인증서는 자동 갱신되지 않으므로 만료 알림을 직접 구성해야 함
- AWS Config는 ACM 인증서 만료를 평가하는 관리형 규칙 제공
- EventBridge를 사용해 AWS Config의 비준수 리소스 발생 시 SNS 알림을 전송하도록 하면 자동화되고 안정적인 30일 전 알림 제공

오답 이유

- **A. ACM 규칙으로 직접 SNS 알림**
    - ACM 자체에는 인증서 만료 시 사용자 지정 SNS 알림을 직접 예약하는 기능이 없음 → 불가능
    
- **C. Trusted Advisor + CloudWatch 알람**
    - Trusted Advisor는 실시간 모니터링이 아니라 **주기적 점검 기준** → 30일 전 정확한 알림 제공 불가
    - CloudWatch 지표로 인증서 만료를 직접 확인할 수 없음
    
- **D. EventBridge + Lambda**
    - 가능은 하지만 매일 인증서를 조회하고 Lambda를 통해 계산해야 함 → 불필요한 운영 부담이 증가
    - AWS Config 기반 솔루션이 관리형 규칙으로 더 효율적'),
  (83, 83, '- CloudFront는 글로벌 엣지 로케이션을 통해 콘텐츠를 캐싱 -> 미국에 있는 백엔드 서버의 동적 웹사이트 콘텐츠를 유럽 사용자에게 빠르게 전달 가능
- 즉시 구현 가능 -> 제품 출시일이 임박한 상황에 적합
- 백엔드는 그대로 미국에 유지
- 지연 시간을 최소화하고 사이트 성능 향상

오답 이유

- **A. EC2로 사이트 마이그레이션**
    - 기존 온프레미스 백엔드를 대체해야 하며, 유럽 배포를 위해 시간이 오래 걸림 → 즉시 솔루션 아님
    
- **B. S3 + Cross-Region Replication**
    - S3는 정적 웹사이트에 적합, 동적 컨텐츠는 지원하지 않음 → 요구사항 미충족
    
- **D. Route 53 지리 근접 라우팅**
    - 유럽 사용자를 특정 서버로 라우팅할 수는 있지만, **로딩 속도 최적화 및 캐싱 기능은 없음**
    - 백엔드가 미국 서버라 지연 문제를 해결하지 못함'),
  (84, 84, '- 프로덕션 환경은 24시간 상시 실행되므로 예약 인스턴스(RI)를 사용하면 장기적으로 안정적인 비용 절감 가능
- 개발 및 테스트 환경은 하루 8시간만 사용되며, 자동으로 중지할 계획이므로, 온디맨드 인스턴스를 사용하면 필요할 때만 비용을 지불하여 유연하고 비용 효율적
- Spot 인스턴스는 예측 불가능하게 종료될 수 있어 프로덕션 환경에 적합 X

오답 이유

- **A. Spot 인스턴스를 프로덕션에 사용**: 프로덕션은 24시간 안정성을 요구하므로 Spot 인스턴스는 적합하지 않습니다. Spot 인스턴스는 AWS가 인스턴스를 회수할 수 있어 안정적인 장기 서비스에는 위험합니다.
- **C. Spot 블록을 프로덕션에 사용**: Spot 블록은 최대 6시간까지 보장되며, 프로덕션 24시간 운영 요구를 충족할 수 없습니다.
- **D. 개발/테스트 환경에 Spot 블록 사용**: 개발/테스트 환경이 8시간 이상 지속적으로 필요하고 자동 중지가 가능하므로, 온디맨드가 더 효율적이며 Spot 블록은 불필요하게 복잡합니다.'),
  (85, 85, '- S3 Object Lock은 규제 준수 모드(Compliance Mode)를 사용하면 지정된 기간 동안 객체를 수정 또는 삭제할 수 없도록 보장
- S3 Versioning과 함께 사용하면, 모든 버전이 보호되며, 규제 요구사항을 충족

오답 이유

- **B. S3 Lifecycle policy**
	- 객체 아카이브는 비용 절감을 위한 정책일 뿐, 객체를 삭제/수정 금지하는 규제 요구사항을 충족하지 못합니다.
    
- **C. ACL을 읽기 전용으로 설정**
	- ACL은 객체 접근을 제한할 수 있지만, 관리자가 실수로 삭제하거나 버킷 정책으로 객체를 수정할 수 있어 **규제 준수 보장이 되지 않습니다.**
    
- **D. Amazon EFS 읽기 전용 마운트**
	- EFS는 버전 관리나 불변 저장 기능이 없어 규제 준수 요구사항을 충족하지 못합니다. 또한 여러 사용자가 읽기 전용으로 마운트할 수 있지만, 운영자가 여전히 파일을 수정하거나 삭제할 수 있습니다.'),
  (86, 86, '- AWS Secrets Manager는 데이터베이스 자격 증명의 안전한 저장과 자동 회전 기능 제공
- IAM 권한을 통해 웹 서버가 Secrets Manager에서 자격 증명을 안전하게 가져올 수 있음
- 멀티 AZ RDS와 연동 가능하며, 관리자가 직접 자격 증명을 갱신하거나 배포할 필요 없이 규정 준수 요구사항(정기 회전)을 충족

오답 이유

- **B. AWS Systems Manager OpsCenter**: OpsCenter는 운영 사건 관리를 위한 서비스이며, 자격 증명 회전이나 안전한 저장을 위한 서비스가 아닙니다.
    
- **C. Amazon S3**: S3에 자격 증명을 저장할 수 있지만 자동 회전 기능이 없고, 웹 서버에서 가져오기 위해 추가적인 스크립트와 관리가 필요합니다. 규제 준수 요구사항을 충족하기 어렵습니다.
    
- **D. KMS로 암호화된 파일**: 파일 기반 접근은 회전 관리가 자동화되지 않아 운영 부담이 크고, 보안 위험이 높습니다. 수동 회전이 필요합니다.'),
  (87, 87, '- SQS FIFO 큐를 사용하면 데이터 순서를 보장하면서 데이터 손실 없이 임시로 저장 가능
- 데이터베이스 업그레이드나 다운타임 시에도 이벤트가 큐에 보관되어, 람다 함수가 나중에 큐를 폴링하여 안전하게 데이터베이스에 기록 가능
- 비동기식 아키텍처로 람다와 오로라 간의 의존성을 줄여 업그레이드 시에도 데이터 손실 방지

오답 이유

- **A. RDS Proxy**
	- RDS Proxy는 연결 풀링과 재시도 기능을 제공하지만, 데이터베이스가 업그레이드되어 완전히 접근할 수 없는 경우에는 데이터 손실을 막지 못합니다. 즉, 업그레이드 동안 생성된 데이터는 여전히 손실됩니다.
    
- **B. Lambda 실행 시간 증가 + 재시도**
	- 재시도를 통해 일부 데이터는 저장될 수 있지만, 데이터베이스가 장시간 업그레이드되거나 연결이 불가능한 경우에는 여전히 손실될 수 있으며, 재시도 로직 관리 부담이 큽니다.
    
- **C. Lambda 로컬 스토리지**
	- Lambda 로컬 스토리지는 임시 저장용으로만 존재하며, 함수 종료 시 데이터가 사라집니다. 로컬 스토리지를 기반으로 데이터를 안전하게 유지할 수 없고, 여러 Lambda 인스턴스 간 공유도 불가능합니다.'),
  (88, 88, '- 교차 계정 액세스를 사용하면 유럽의 마케팅 회사가 직접 미국에 있는 S3 버킷 데이터 다운로드 가능
- 데이터를 별도로 복제하지 않기 때문에 S3 복제 비용과 추가 스토리지 비용 발생 X
- 단순히 권한을 부여하고 사용자가 직접 데이터를 가져가므로 데이터 전송 비용 최소화에 적합

오답 이유

- **A. Requester Pays**
	- 요청자 부담 기능은 비용을 전송 요청자에게 부담시키는 기능일 뿐, 데이터 전송 자체 비용을 줄여주지는 않습니다. 비용 청구 주체만 바뀌므로 회사 입장에서 직접 비용을 줄이는 방법은 아닙니다.
    
- **B. S3 Cross-Region Replication**
	- 복제를 수행하면 추가 스토리지 비용과 데이터 전송 비용이 발생합니다. 문제에서 요구한 **비용 최소화**에는 적합하지 않습니다.
    
- **D. S3 Intelligent-Tiering + 동기화**
	- Intelligent-Tiering은 장기 저장 비용 최적화에는 도움 되지만, 데이터를 동기화하면 역시 복제 전송 비용이 발생하므로 전송 비용 최소화에는 적합하지 않습니다.'),
  (89, 89, '- S3 버전 관리는 객체의 모든 버전을 유지하므로 실수로 객체가 삭제되거나 덮어써도 이전 버전을 복원 가능
- MFA Delete는 객체 삭제 및 버전 삭제를 수행할 때 다중 인증(MFA)을 요구하여, 실수나 악의적인 삭제로부터 데이터를 보호

오답 이유

- **B. IAM 사용자 MFA 활성화**
	- MFA는 사용자 로그인 보안을 강화하지만, S3 객체 삭제 자체를 보호하지 않습니다. 따라서 실수 삭제 방지에는 불충분합니다.
    
- **C. S3 수명 주기 정책**
	- 수명 주기 정책은 객체 삭제/이동을 자동화하는 용도이며, 특정 IAM 계정에 대해 삭제를 제한하는 기능이 없습니다. 또한 날짜 기반 정책으로 완벽히 보호하기 어렵습니다.
    
- **D. KMS 암호화 및 액세스 제한**
	- KMS를 이용한 암호화는 데이터 기밀성은 보호하지만, 접근 권한이 있는 IAM 사용자는 여전히 객체를 삭제할 수 있습니다. 삭제 보호에는 효과적이지 않습니다.'),
  (90, 90, '- RDS Single-AZ 인스턴스에 스크립트가 직접 쿼리하면 개발팀의 작업 성능 저하
- 읽기 전용 복제본(read replica)을 생성하면, 읽기 전용 작업(스크립트 쿼리)을 복제본으로 분산시켜 메인 DB 인스턴스의 부하를 줄일 수 있음
- RDS 읽기 전용 복제본은 AWS가 관리하므로 운영 오버헤드가 적음
- 개발팀의 개발 작업과 스크립트 간 간섭을 최소화하면서 요구 사항을 충족

오답 이유

- **A. Multi-AZ 배포**
	- Multi-AZ는 고가용성을 위해 장애 조치(failover)를 제공하지만, 성능 향상 목적이 아니므로 읽기 작업 분산에는 효과적이지 않습니다.
    
- **C. 수동 데이터 내보내기**
	- 운영 오버헤드가 크고 자동화 요구 사항을 충족하지 못합니다.
    
- **D. ElastiCache 캐싱**
	- 일부 쿼리는 캐싱 가능하지만, 매일 새로 추가되는 영화 데이터까지 실시간 반영하려면 캐시 무효화와 업데이트 로직을 별도로 구현해야 하므로 운영 오버헤드가 증가합니다.'),
  (91, 91, '- S3 게이트웨이 엔드포인트(VPC Endpoint)를 사용하면, 트래픽이 인터넷을 거치지 않고 AWS 네트워크 내부에서 Amazon S3에 안전하게 연결
- 회사 규정에서 요구하는 인터넷 경유 금지 조건 충족
- VPC 라우팅 테이블에 엔드포인트를 추가하고, S3 버킷 정책과 보안그룹을 적절히 구성하면 EC2 인스턴스에서 안전하게 S3에 접근

오답 이유

- **B. S3 버킷을 프라이빗 서브넷에 생성**
	- S3는 리전 기반 글로벌 서비스이며, 서브넷 내에 직접 생성할 수 없습니다. 따라서 접근 제한 목적을 달성할 수 없습니다.
    
- **C. S3 버킷을 동일 리전에 생성**
	- 동일 리전에 있다고 해도 인터넷 없이 접근 가능하다는 보장은 없습니다. 기본적으로 S3 접근은 퍼블릭 인터넷을 경유할 수 있습니다.
    
- **D. NAT 게이트웨이 구성**
	- NAT 게이트웨이는 프라이빗 서브넷의 인스턴스가 인터넷으로 나가도록 허용합니다. 회사 규정에서 인터넷 트래픽을 금지했기 때문에 부적합합니다.'),
  (92, 92, '- **A. VPC 게이트웨이 엔드포인트 구성**: EC2 인스턴스가 인터넷을 경유하지 않고 안전하게 S3에 접근할 수 있게 함.
- **C. 버킷 정책으로 VPC 애플리케이션 계층 접근 제한**: S3 버킷에 대한 접근을 특정 VPC 또는 보안 주체(IAM 역할/사용자)로 제한하여 보안을 강화함.
- 이 두 가지 조치를 함께 사용하면 민감한 데이터를 안전하게 보호하면서 VPC 내부 EC2 인스턴스에서 S3를 접근할 수 있음.

오답 이유

- **B. S3 버킷 공개**
	- 민감한 데이터를 포함한 버킷을 공개하면 보안 규정 위반이므로 부적합.
    
- **D. IAM 사용자와 자격 증명 복사**
	- EC2 인스턴스에 자격 증명을 저장하는 것은 보안 위험이 크며, IAM 역할을 통한 접근이 권장됨.
    
- **E. NAT 인스턴스 사용**
	- NAT를 통한 접근은 인터넷 경유를 허용하므로 보안 규정상 부적합하며 비용과 관리 부담이 증가함.'),
  (93, 93, '- Amazon Aurora MySQL의 **데이터베이스 클로닝(Database Cloning)** 기능은 프로덕션 데이터베이스의 스냅샷을 기반으로 **몇 초 만에 스테이징 환경을 생성**할 수 있습니다.
- 이를 통해 개발팀은 스테이징 데이터베이스를 지연 없이 사용 가능하며, 프로덕션 DB의 **읽기 성능에도 영향을 주지 않습니다.**
- Multi-AZ Aurora Replicas는 고가용성과 읽기 확장성을 제공하여 기존 문제였던 읽기 부하로 인한 지연도 완화됩니다.


오답 이유

- **A. mysqldump 기반 백업/복원**
	- 전체 덤프를 수행하면 프로덕션 DB에 읽기 부하가 증가하며, 스테이징 생성에도 시간이 오래 걸려 지연 문제 해결에 부적합.
    
- **C. RDS Multi-AZ 및 스탠바이 인스턴스 사용**
	- 스탠바이 인스턴스는 장애 조치(failover)용으로만 사용되므로 스테이징 DB로 직접 사용 불가.
    
- **D. RDS Multi-AZ + mysqldump**
	- mysqldump 사용은 A와 동일하게 **시간 소모와 부하 증가 문제**가 여전히 존재.'),
  (94, 94, '- 요구사항: **파일 업로드 직후 빠른 처리**, **변동적 수요**, **최소 운영 오버헤드**.
- **S3 이벤트 → SQS → Lambda** 조합은 서버리스 방식으로 **자동 확장(auto-scaling)**되며, 사용자가 적게 업로드하든 많이 업로드하든 Lambda가 처리량에 맞춰 자동으로 실행됩니다.
- EC2나 EMR처럼 서버를 운영하거나 관리할 필요가 없으므로 **운영 오버헤드가 최소화**됩니다.
- 처리 결과를 DynamoDB에 저장하면 JSON 데이터를 빠르게 조회할 수 있어 분석 용도로 적합합니다.

오답 이유

- **A. EMR + Aurora**
	- EMR 클러스터를 항상 켜야 하거나, 클러스터 시작/종료 오버헤드가 발생하여 단순 파일 처리에 과도함. 운영 오버헤드가 높음.
    
- **B. S3 → SQS → EC2 + DynamoDB**
	- EC2 인스턴스 관리, Auto Scaling 설정 필요. 서버리스보다 운영 부담이 큼.
    
- **D. EventBridge → Kinesis → Lambda + Aurora**:
	- Kinesis 스트림과 Lambda 조합은 처리량 제어 가능하지만, 스트림 관리와 Aurora 관리 비용이 있어 단순 처리 요구에 과도. 운영 오버헤드가 높음.'),
  (95, 95, '- 요구사항: 읽기 트래픽과 쓰기 트래픽 분리, 애플리케이션 성능 **즉시 최적화**.
- **RDS Multi-AZ**는 고가용성(HA)을 제공하지만 읽기 요청 분산에는 적합하지 않습니다. 보조 AZ는 읽기를 처리하지 않고 대기용 스탠바이입니다.
- 읽기 트래픽을 분리하려면 **읽기 전용 복제본(Read Replica)**을 생성해야 합니다.
- 복제본의 용량을 원본과 동일하게 설정하면 읽기 트래픽 급증 시에도 충분한 성능을 제공합니다.
- 따라서 D가 가장 신속하고 효과적인 성능 최적화 방법입니다.

오답 이유

- **A. Multi-AZ 기본 AZ 읽기**: 기본 AZ는 쓰기와 읽기 트래픽을 모두 처리하므로 읽기 분리 불가. 성능 개선 효과 없음.
- **B. Multi-AZ 보조 AZ 읽기**: 보조 AZ는 스탠바이이며, 읽기 요청 처리 불가. 읽기 트래픽 분리 목적과 맞지 않음.
- **C. 읽기 복제본, 용량 절반**: 복제본 용량을 줄이면 읽기 트래픽 분리 목적은 달성되지만, 읽기 트래픽 급증 시 성능이 부족할 수 있음. 최적화 효과가 제한적임.'),
  (96, 96, '- 정책 첫 번째 문: **Allow ec2:TerminateInstances**는 소스 IP가 10.100.100.0/24일 경우에만 허용.
- 정책 두 번째 문: **Deny ec2:***는 **us-east-1이 아닌 리전**에서 모든 EC2 작업을 거부.
- IAM 정책 평가 순서:
    1. **Explicit Deny**가 가장 강력함 → 허용보다 우선.
    2. Allow와 Deny 조건이 충돌하면 Deny가 우선.
    
- 따라서:
    - us-east-1 리전에서는 Deny 조건이 적용되지 않음.
    - 소스 IP가 10.100.100.0/24 범위이면 Allow 조건이 적용됨.
    - 예: 10.100.100.254는 해당 서브넷에 포함됨 → EC2 인스턴스 종료 가능.

오답 이유

- **A.** us-east-1 제외한 리전에서 종료 가능?
    - 잘못됨. 정책의 Deny 조건 때문에 us-east-1이 아닌 리전에서는 모든 EC2 작업이 명시적 거부됨.
    
- **B.** IP가 10.100.100.1일 때 종료 가능?
    - SourceIp는 인스턴스 IP가 아닌 사용자의 소스 IP
    
- **D.** IP가 10.100.100.254일 때 종료 불가?
    - 잘못됨. Allow 조건이 적용되어 종료 가능.'),
  (97, 97, '- Microsoft SharePoint는 **Windows 파일 시스템과 SMB 프로토콜** 기반의 파일 공유를 필요로 하며, Active Directory 통합이 필수적입니다.
- **Amazon FSx for Windows File Server**는 **SMB 프로토콜**, **Windows ACL**, **Active Directory 통합**, **멀티-AZ 고가용성**을 지원하여 SharePoint 워크로드와 완전히 호환됩니다.
- 따라서 SharePoint 마이그레이션 시 가장 적합하고 관리 부담이 적습니다.

오답 이유

- **A. Amazon EFS**
    - EFS는 **NFS 프로토콜**을 사용하며 Windows 기반 SMB/NTFS 액세스와 호환되지 않음.
    - Active Directory와 통합이 가능하지만, Windows 워크로드에는 적합하지 않음.
    
- **B. AWS Storage Gateway 파일 게이트웨이**
    - 파일 게이트웨이는 온프레미스와 클라우드 간 파일 캐싱을 위한 솔루션이며, **SMB 액세스를 제공하지만 완전 관리형 Windows 파일 서버와 달리 고가용성/AD 통합**은 제한적임.
    
- **C. Amazon S3 마운트**
    - Windows에서 S3를 볼륨으로 마운트하려면 서드파티 솔루션 필요.
    - S3는 객체 스토리지이며, SharePoint에서 요구하는 **SMB, NTFS, ACL, 고가용성**을 기본적으로 제공하지 않음.'),
  (98, 98, '- SQS **표준 큐**는 **최소 1회 이상 전달(At-Least-Once Delivery)**을 보장하므로, Lambda 함수가 동일한 메시지를 여러 번 처리할 수 있습니다.
- 이를 해결하려면 **SQS FIFO 큐**를 사용하고 **메시지 중복 제거 ID(Deduplication ID)**를 설정하면, 동일한 메시지가 여러 번 처리되지 않고 한 번만 Lambda로 전달됩니다.
- FIFO 큐는 **순서 보장(First-In-First-Out)**과 **중복 제거**를 지원하므로, 중복 이메일 문제를 가장 간단하게 해결할 수 있습니다.
- Deduplication ID (메시지 중복 제거 ID)
	- **목적**: **SQS FIFO 큐에서 동일 메시지가 중복으로 큐에 저장되는 것을 방지**
	- **동작 원리**:
	    1. FIFO 큐에 메시지 전송 시 MessageDeduplicationId 제공
	    2. SQS는 동일 ID의 메시지를 **5분 동안 중복으로 받지 않음**
	    3. 이 시간 동안 같은 ID 메시지는 **큐에 들어가지 않음**
	- **사용 예**:
	    - 중복 전송 방지: 예를 들어, 동일 결제 이벤트가 여러 번 발생해도 큐에는 한 번만 저장
	    - 메시지 전송 레벨에서 중복 방지 → 소비자 측에서도 중복 처리 최소화  
	- **한계**:
	    - FIFO 큐에서만 사용 가능
	    - 5분간만 중복 방지 → 장기 중복은 다른 방법 필요


오답 이유

- **A. 롱 폴링 설정**
    - 롱 폴링은 큐에서 메시지를 기다리는 시간을 늘려 불필요한 API 호출을 줄이는 기능입니다.
    - Lambda 중복 호출 문제 해결에는 직접적인 효과가 없습니다.
    
- **C. 가시성 타임아웃 증가**
    - 가시성 타임아웃은 Lambda가 메시지를 처리하는 동안 다른 소비자가 해당 메시지를 가져가지 못하도록 하는 시간입니다.
    - 현재 문제는 메시지가 중복 전달되는 것이므로, 단순히 타임아웃을 늘리는 것만으로는 중복 처리 문제를 완전히 해결할 수 없습니다.
    
- **D. Lambda에서 메시지를 즉시 삭제**
    - Lambda와 SQS 통합 시, **Lambda가 메시지를 성공적으로 처리하면 자동으로 삭제**됩니다.
    - 메시지를 처리하기 전에 삭제하면, 실패 시 메시지가 사라져 **데이터 유실 가능성**이 발생합니다.
    - 따라서 안전하지 않으며 문제 해결에는 적합하지 않습니다'),
  (99, 99, '- **Amazon FSx for Lustre**는 완전 관리형 Lustre 파일 시스템을 제공하며, **Lustre 클라이언트를 바로 연결**할 수 있습니다.
- 고성능 공유 스토리지를 제공하고, 게임 애플리케이션과 같이 **고속 읽기/쓰기와 낮은 지연 시간**이 필요한 워크로드에 적합합니다.
- 온프레미스 서버에서도 FSx for Lustre를 **Direct Connect 또는 VPN**을 통해 연결할 수 있습니다.

오답 이유

- **A. AWS Storage Gateway 파일 게이트웨이**
    - Storage Gateway는 NFS 또는 SMB 파일 공유를 온프레미스 애플리케이션과 연결할 수 있으나, **Lustre 프로토콜을 지원하지 않습니다**.
    
- **B. Amazon EC2 Windows 인스턴스**
    - 수동으로 Windows 파일 서버를 운영하는 것은 **완전 관리형이 아니며**, Lustre 클라이언트를 직접 지원하지 않습니다.
    - 관리 오버헤드가 높고 Lustre 지원 불가.
    
- **C. Amazon EFS 파일 시스템**
    - EFS는 NFS 기반 공유 스토리지이며, **Lustre 클라이언트를 직접 지원하지 않습니다**.
    - EFS와 FSx for Lustre는 서로 다른 프로토콜과 성능 특성을 가집니다.'),
  (100, 100, '- **AWS KMS**를 사용하면 인증서를 안전하게 암호화/복호화할 수 있고, EC2에서 실시간 접근이 가능합니다.
- **Amazon S3**는 **높은 내구성과 가용성**을 제공하며, 암호화된 데이터를 안전하게 저장할 수 있습니다.
- 이 조합은 **운영 오버헤드가 낮고 관리가 용이**하며, Secrets Manager처럼 인증서 회전이나 버전 관리가 필요한 경우 추가 기능과 통합이 가능합니다.

오답 이유

- **A. AWS Secrets Manager**
    - Secrets Manager는 시크릿 저장에 적합하지만, **수동으로 인증서를 업데이트해야 하는 경우 운영 부담이 증가**합니다.
    - 실시간 암호화/복호화와 직접 연결하기에는 KMS보다 효율이 떨어집니다.
    
- **B. Lambda + cryptography 라이브러리**
    - 암호화/복호화 로직을 직접 구현하면 **운영 오버헤드가 매우 높고**, 고가용성 스토리지에 대한 책임도 수동으로 관리해야 합니다.
    - S3에 Lambda 코드를 저장하는 것은 코드 배포일 뿐, 데이터 스토리지로 사용하기 적합하지 않습니다.
    
- **D. EBS에 암호화된 데이터 저장**
    - EBS는 AZ 내에서만 고가용성을 제공하므로, **다중 AZ 내 고가용성을 보장하지 않습니다**.
    - S3처럼 내구성과 확장성을 제공하지 못합니다.'),
  (101, 101, '- 프라이빗 서브넷의 IPv4 인스턴스가 인터넷에 접속하려면 퍼블릭 경로(인터넷 게이트웨이)를 통해 나가야함.
- 프라이빗 서브넷에서 직접 IGW로 나갈 수 없으므로 NAT가 필요
- NAT Gateway(관리형 NAT)를 각 AZ 퍼블릭 서브넷에 배치
	- AZ 장애가 발생해도 같은 AZ 내의 NAT가 살아 있으면 프라이빗 인스턴스의 아웃바운드가 유지되어 고가용성 확보
	- 프라이빗 인스턴스가 동일 AZ의 NAT를 사용하면 Cross-AZ 데이터 전송 요금과 지연을 피할 수 있음
	- NAT Gateway는 AWS가 관리하므로 운영 오버헤드가 적음

오답 이유

- **B (NAT 인스턴스)**
	- NAT 인스턴스(사용자 관리 EC2)는 동작하나, 관리(패치, 확장, 장애 처리)가 필요하므로 운영 오버헤드가 큽니다. 또한 단일 인스턴스 장애를 막으려면 추가 구성(Auto Scaling, 장애 조치 등)이 필요합니다. 오늘날 권장되는 방식은 관리형 NAT Gateway입니다.
    
- **C (두 번째 인터넷 게이트웨이)**
	- VPC에는 인터넷 게이트웨이(IGW)를 각 VPC당 **하나만** 연결할 수 있습니다. 게이트웨이는 서브넷에 직접 연결되는 개념이 아니며, “프라이빗 인터넷 게이트웨이”라는 것은 존재하지 않습니다. 따라서 이 옵션은 기술적으로 불가능합니다.
    
- **D (egress-only IGW)**
	- egress-only 인터넷 게이트웨이는 **IPv6 전용**으로, IPv4 트래픽에는 적용되지 않습니다. 문제에서 VPC와 서브넷은 **IPv4** CIDR을 사용하므로 이 옵션은 부적합합니다.'),
  (102, 102, '- 온프레미스의 SFTP(NFS 기반) 데이터를 AWS EFS로 자동화하여 안전하고 신뢰성 있게 전송하려면 AWS DataSync가 적합
	- AWS DataSync는 파일 시스템(NFS, SMB), SFTP 등에서 AWS 서비스(EFS, S3 등) 고속, 병렬 전송을 제공하며 자동 재시도와 검증 기능 포함
- B (DataSync 에이전트 설치) : 온프레미스에서 DataSync를 사용하려면 에이전트를 배포. 에이전트가 온프레미스 파일 시스템을 읽고 DataSync 서비스로 데이터를 전송
- E (DataSync 위치 구성 생성) : DataSync 콘솔/CLI에서 온프레미스 소스(SFTP/NFS 위치)와 대상(EFS)을 나타내는 위치(location)을 생성하고, 태스크를 생성하여 전송을 자동화. 스케줄링, 필터링, 전송 옵션 등을 설정해 자동화된 전송 작업 가능

오답 이유

- **A. EC2 인스턴스를 EFS와 동일 AZ에 시작**
	- 부분적으로 오해의 소지가 있음. EFS는 리전 서비스이며 각 AZ에 마운트 타깃(mount target)을 생성하여 여러 AZ의 EC2에서 접근하게 설계되어 있습니다. 반드시 **EC2를 특정 AZ에만** 시작해야 하는 것은 아니며, EFS 접근을 위해선 해당 AZ에 마운트 타깃이 있어야 합니다. 또한 이 선택만으로 전송 자동화가 되지 않으므로 정답 조합으로 적절하지 않습니다.
    
- **C. EC2에 보조 EBS 볼륨 생성**
	- EBS는 AZ-결정적(AZ-bound) 블록 스토리지로, EFS의 목적(공유 파일 시스템, 다중 인스턴스 접속, 다중 AZ 내 내구성)을 대체하지 않습니다. 질문 요구는 EFS에 데이터를 저장해야 하므로 EBS는 부적합합니다.
    
- **D. OS 복사 명령으로 수동 전송**
	- 수동 복사는 자동화가 되지 않으며 장애/재시도/검증/성능(병렬) 같은 DataSync의 장점을 제공하지 않습니다. 운영 오버헤드가 큽니다.'),
  (103, 103, '- AWS Glue Job Bookmarks는 ETL 작업이 이전 실행에서 처리된 데이터를 추적하도록 해줌
- 따라서 Glue가 매번 S3 버킷의 전체 데이터를 재처리하지 않고, 새로 추가된 데이터만 선택적으로 처리 가능


오답 이유

- **B. 데이터 삭제**
	- 데이터를 삭제하면 S3에 원본 데이터를 보관할 수 없게 되며, 이는 분석 및 재처리(필요 시) 요구를 방해합니다. 실무적으로 원본 데이터를 삭제하는 것은 일반적으로 잘못된 방법입니다.
    
- **C. NumberOfWorkers = 1**
	- 워커(worker) 수를 줄이는 것은 **병렬 처리 성능**만 조정할 뿐이며, Glue가 어떤 데이터를 처리할지에 영향을 주지 않습니다. 따라서 여전히 전체 데이터를 처리하게 됩니다.
    
- **D. FindMatches ML Transform**
	- 이는 AWS Glue의 머신러닝 기반 데이터 중복 제거/매칭 기능으로, reprocessing 방지와는 무관합니다. XML 데이터를 매일 새로 처리하는 시나리오와 맞지 않습니다.'),
  (104, 104, '- C - CloudFront 사용
	- CloudFront 같은 클로벌 CDN/엣지 네트워크는 트래픽을 전 세계 엣지 로케이션으로 분산시켜 오리진(EC2)으로 향하는 요청 부하는 크게 낮춰줌
	- 캐싱 가능한 정적 콘텐츠를 엣지에서 제공하면 원본 부하가 줄고 동적 요청도 엣지에서 일부 완화(최적화, 압축, TLS 종료, Lambda@Egde 등)할 수 있어 대규모 DDoS 공격에 대한 초기 흡수 능력이 크게 향상
	- 즉시 도입 가능하고 다운타임 없이 완화 효과 제공
- A - Shied Advanced 사용
	- Shield Advacned는 대규모 네트워크/존송계층(및 일부 애플리케이션 계층) DDoS 공격에 대해 AWS 차원에서 완화 기능 제공
	- CluodFront/ALB/ELB와 통합되어 공격 트래픽을 자동으로 흡수 및 완화
	- 24/7 DDoS 대응팀(DDOS Response Team, DRT) 지원과 DDoS 관련 비용 보호(일부 요금 보상) 제공


오답 이유

- **B. GuardDuty를 구성하여 공격자를 자동으로 차단**
	- GuardDuty는 이상 탐지/위협 인텔리전스 서비스로, 의심스러운 활동을 식별(탐지·알림)하지만 **자동으로 네트워크 트래픽을 차단하지 않습니다**. 차단을 자동화하려면 추가로 Lambda/Firewall Manager/Network ACL/SG 등과 연동해야 하고, 이 또한 대규모 IP 목록 차단에는 비효율적입니다.
    
- **D. Lambda로 공격자 IP를 네트워크 ACL에 자동 추가**
	- 네트워크 ACL은 상태 비저장이고 규칙 수(관리·성능) 제한이 있으며, 수천 개 IP를 실시간으로 추가/삭제하는 것은 **규모·속도·성능 면에서 비현실적**입니다. 또한 NACL 변경은 전파 지연과 관리 복잡성을 유발합니다. 더구나 대규모 공격을 NACL로 방어하면 오버헤드와 오류 위험이 큽니다.
    
- **E. 스팟 인스턴스를 Auto Scaling으로 사용**
	- 스팟 인스턴스는 **언제든 회수(중단)** 될 수 있으므로 가용성이 중요한 웹사이트의 DDoS 방어(특히 “다운타임 불허”)에 적합하지 않습니다. 스팟은 비용 절감에는 유리하지만 DDoS 방어 또는 안정성 확보용 솔루션으로 권장되지 않습니다.'),
  (105, 105, '- EventBridge 규칙이 람다 함수를 호출하려면, 람다 함수 리소스에 대한 리소스 기반 정책 (Resource-based policy) 을 추가해야 함
- 해당 정책에서 허용할 동작은 lambda:InvokeFunction, 호출 주체는 events.amazonaws.com (EventBridge)

오답 이유

- _A. 실행 역할에 lambda:InvokeFunction, Principal= 지정_*
    - 실행 역할은 Lambda가 다른 AWS 서비스에 접근할 때 사용하는 것임. EventBridge가 Lambda를 호출할 때는 **리소스 기반 정책**이 필요하지 실행 역할이 아님. 또한 Principal에 `*`을 지정하는 것은 최소 권한 원칙 위반.
    
- **B. 실행 역할에 lambda:InvokeFunction, Principal=lambda.amazonaws.com**
    - 마찬가지로 실행 역할은 EventBridge 호출 권한과 무관. Lambda 서비스 자체가 자기 자신을 호출하는 구조는 아님.
    
- _C. 리소스 기반 정책에 lambda: 과 Principal=events.amazonaws.com_*
    - 동작을 lambda:*로 지정하면 Lambda 함수에 대한 **모든 작업**을 허용하게 되며, 이는 최소 권한 원칙에 위배됨.'),
  (106, 106, '- 요구사항
	- 저장 시 암호화(at-rest encryption)
	- 키 사용 로깅(감사)
	- 연간 키 회전
	- 운영 효율성
- SSE-KMS는 S3와 통합되어 객체 저장 시 KMS로 키 기반 암호화를 수행
- KMS는 CloudTrail을 통해 키 사용 호출을 로깅하므로 감사 요구 충족
- 고객 관리형 KMS 키(CMK) 에서 자동 키 회전을 활성화 하면 AWS가 매년 (약1년 주기) 키를 자동으로 교체

오답 이유

- **A. SSE-C (고객 제공 키)**
    - 키를 고객이 직접 제공·관리해야 하므로 키 보관·회전·보안 책임이 전적으로 고객에게 있으며, **자동 회전 기능이 없고** 키 사용 로깅을 KMS 수준처럼 통합적으로 제공하지 않습니다. 운영 부담이 큽니다.
    
- **B. SSE-S3 (S3 관리 키)**
    - S3가 키를 관리하여 암호화는 제공하나 **키 사용을 KMS 수준에서 CloudTrail로 상세 로깅하지 못합니다**(KMS API 호출 로그가 없음). 또한 사용자가 키 회전 정책을 직접 제어할 수 없습니다. 감사·회전 요구를 충족시키기 어렵습니다.
    
- **C. SSE-KMS with manual rotation**
    - KMS 사용으로 로깅은 가능하지만, **수동 회전은 운영 오버헤드가 크고 사고 위험(사람 실수 등)** 이 존재합니다. 자동 회전에 비해 운영 효율성이 떨어집니다.'),
  (107, 107, '- 요구사항
	- 피크 시간 동안 대량의 실시간/근실시간(near-real-time) 위치 데이터 수집
	- 수집된 데이터가 기존 분석 플랫폼으로 전달
	- 데이터 포인트는 REST API를 통해 접근/전송 가능해야함
	- 멀티 티어 아키텍처를 선호
- API Gateway는 REST API 엔드포인트를 제공하여 모바일/디바이스가 위치 이벤트(위치 포인트)를 전송하게 해줌
- API Gateway를 통해 들어온 이벤트를 Kinesis Data Streams / Firehose로 전달하고, Kinesis Data Analytics를 사용하면 스트리밍 데이터를 SQL 스타일로 실시간 처리 및 집계할 수 있음
- 처리된 결과는 분석 플랫폼(ex. Redshift, S3, Elasticsearch)으로 실시간 전달하거나 상태 저장을 위해 DynamoDB에 쓸 수 있음

오답 이유

- **A. Amazon Athena + Amazon S3**
    - Athena/S3 조합은 **배치 쿼리(또는 저장된 데이터의 대화형 쿼리)** 에 적합합니다. 실시간 수집·처리에는 부적합하며, REST API를 통한 실시간 쓰기/읽기 시나리오를 직접적으로 지원하지 않습니다.
    
- **B. API Gateway + Lambda**
    - API Gateway + Lambda는 REST 기반 수집 및 소규모 처리에 적합하나, **피크 시간의 고빈도 스트리밍 데이터**를 대규모로 안정적으로 흡수하고 실시간 분석 플랫폼으로 파이프라인을 구성하는 데에는 확장성과 비용 측면에서 덜 적합합니다. (물론 설계에 따라 가능하나, 스트리밍/분석 연동에는 Kinesis가 더 적절)
    
- **C. QuickSight + Redshift**
    - QuickSight는 시각화 도구이고 Redshift는 데이터웨어하우스입니다. 둘은 분석·보고에는 적합하지만 **실시간 데이터 수집(REST API)·스트리밍 처리**를 직접 처리하거나 수집 계층을 대체하지 못합니다.'),
  (108, 108, '- RDS 이벤트는 직접 애플리케이션 레벨의 데이터 변경(INSERT, UPDATE, DELETE)을 감지할 수는 없지만, Amazon RDS 이벤트 구독을 통해 특정 이벤트를 SNS로 전달 가능
- SNS -> SQS 팬아웃 패턴은 다수의 구독자를 대상으로 동일 메시지를 전달하는 가장 일반적이고 확장 가능한 방식
- SQS 큐를 소비하는 람다를 연결하면 각 대상 시스템별 맞춤 업데이트 가능

오답 이유

- **A. Lambda + SQS (단일 큐)**
    - 단일 큐에만 데이터를 넣으므로, 다수의 대상 시스템에 팬아웃 전송하려면 각 소비자가 동일 큐를 풀링해야 함 → 운영 복잡도 증가.
    
- **B. Lambda + SQS FIFO 큐**
    - FIFO 큐는 순서 보장 및 중복 제거에 초점. 본 문제는 **순서 보장**이 아니라 **멀티 타겟 전송**이 요구사항이므로 불필요하게 제약이 있는 선택.
    
- **C. RDS 이벤트 → SQS → SNS → Targets**
    - 이벤트 흐름이 잘못됨. RDS 이벤트는 기본적으로 SNS로 전송 가능하나, 바로 SQS로 보내는 구조는 지원되지 않음. 즉, 아키텍처 상 부적절.'),
  (109, 109, '- S3 Object Lock의 Legal Hold 기능은 기간 제한 없이 객체를 변경/삭제할 수 없도록 보호하는 기능
- Legal Hold는 보유를 해제할 권한이 있는 사용자만 해제 가능 -> 특정 사용자만 삭제 가능 조건 충족
- 버전 관리를 활성화하면 객체 변경 시 이전 버전 복원 가능

오답 이유

- **A. S3 Glacier WORM**
    - Glacier Vault Lock은 **장기 보관용 아카이빙**에 적합하며, 삭제/수정 불가 WORM 정책은 기간 기반이며, S3 Object Lock처럼 실시간 접근 제어가 불가능.
    
- **B. Object Lock + Governance Mode + 100년 유지**
    - Governance 모드는 **특정 권한을 가진 사용자**가 객체를 덮어쓰거나 삭제할 수 있음 → “특정 사용자만 삭제 가능” 요구와 정확히 일치하지 않음.
    - Legal Hold가 아니라 Governance Mode를 사용하면 일부 권한 사용자도 제한 없이 삭제 가능.
    
- **C. CloudTrail + 복원**
    - 사후 복원 방식으로, **객체 변경 방지**를 실시간으로 보장하지 못함 → 규제 준수 요구사항 미충족.'),
  (110, 110, '- C : 사용자의 브라우저가 직접 S3에 업로드하도록 하면 EC2 웹 서버가 이미지 업로드 트래픽을 처리하지 않아도 되어 웹사이트 성능 개선
- D : S3 Event Notifications를 통해 람다가 이미지 크기 조정을 처리하면 웹 서버와 이미지 처리 로직의 결합도를 줄임

오답 이유

- **A. S3 Glacier**
    - Glacier는 장기 보관용 스토리지로, **즉시 액세스 불가** → 업로드 후 바로 사용해야 하는 이미지 처리에 적합하지 않음.
    
- **B. 웹 서버가 원본 이미지를 S3에 업로드**
    - 웹 서버가 여전히 업로드 트래픽을 처리 → EC2 부하 해소 불가.
    
- **E. EventBridge를 사용하여 예약된 Lambda 실행**
    - 예약 기반 처리 → 이미지를 업로드 직후 처리할 수 없음 → **사용자가 업로드 직후 이미지를 이용해야 하는 요구사항 불충족**.'),
  (111, 111, '- Amazon MQ with asctive/standby brokers -> 메시지 브로커의 고가용성 확보
- 오토 스케일링 그룹으로 EC2 컨슈머 인스턴스 -> 컨슈머가 가용 영역 장애 시 자동으로 복구되고 부하 분산 가능
- Amazon RDS for MySQL with Multi-AZ -> 데이터베이스 장애 시 자동 페일오버, 관리형 서비스로 운영 복잡도 최소화

오답 이유

- **A:**
    - ActiveMQ를 EC2에 직접 설치 → 브로커 관리 및 장애 복구 수동.
    - MySQL도 EC2 → 관리 복잡도 높음.
    - HA는 가능하지만 **운영 부담이 큼**.
    
- **B:**
    - 브로커를 Amazon MQ로 전환 → HA 확보, 관리 부담 감소.
    - 컨슈머는 단일 EC2 → 한 가용 영역 장애 시 메시지 처리 중단.
    - MySQL은 EC2 복제 → 운영 부담 여전히 높음.
    
- **C:**
    - 컨슈머는 여전히 단일 EC2 → 장애 시 처리 중단.
    - RDS Multi-AZ로 DB HA 확보 → 개선되었지만, 컨슈머 HA 부족.'),
  (112, 112, '- Fargate + ECS -> 서버를 관리할 필요 없이 컨테이너 실행 가능 : 최소 운영 부담
- Service Auto Scaling -> 요청 수에 따라 컨테이너 수를 자동 조정
- Application Load Balancer -> 들어오는 요청을 컨테이너에 분산, 기존 컨테이너 코드를 거의 변경하지 않고 사용 가능

오답 이유

- **B:**
    - EC2를 직접 관리해야 하며, 컨테이너 관리 및 확장 자동화 필요 → 운영 부담 높음.
    - 최소 코드 변경은 가능하지만, Auto Scaling 설정, OS/패치 관리 등 관리 필요.
    
- **C:**
    - 기존 컨테이너 코드를 Lambda로 전환 → **코드 변경 필요**, 언어 및 환경 제약 존재.
    - 운영 부담은 낮지만, 최소 개발 노력 요구사항을 만족하지 않음.
    
- **D:**
    - HPC 솔루션은 대규모 연산용으로 설계됨, 웹 요청 처리에는 과도함.
    - 운영 복잡도 높고, 기존 애플리케이션 코드 재작성 필요.'),
  (113, 113, '- Snowball Edge Storage Optimized -> 50 TB와 같은 대규모 데이터를 네트워크 없이 오프라인으로 안전하게 전송 가능
- 데이터가 AWS로 도착한 후 AWS Glue를 사용해 변환 작업 실행 -> 기존 데이터 변환 애플리케이션을 AWS Glue로 옮겨 최소한의 운영부담으로 클라우드에서 계속 실행 가능
- 네트워크 제약이 있으므로 DataSync는 적합하지 않음
- Snowcone은 용량이 충분하지 않아 50 TB 처리 불가
- Snowball Edge + EC2는 불필요하게 EC2를 별도로 관리해야하므로 운영 부담 증가

오답 이유

- **A:**
    - DataSync는 네트워크 기반 서비스이므로 데이터 센터에 충분한 네트워크 대역폭이 필요 → 조건 불만족.
    
- **B:**
    - Snowcone 장치 용량이 50 TB에 비해 부족 → 데이터 전체 이전 불가.
    
- **D:**
    - Snowball Edge의 EC2 기능을 사용하고 별도 EC2 인스턴스를 생성하는 것은 Glue 사용보다 운영 부담이 커짐.
    - Glue 사용(C)이 더 간단하고 서버리스 방식으로 운영 부담 최소화 가능.'),
  (114, 114, '- AWS Lambda -> 서버리스 방식으로 동시 사용자 수의 변동에 따라 자동으로 확장 가능
- 사진 저장은 Amazon S3 -> 대용량 데이터에 적합하며 내구성이 높고 비용 효율적
- DynamoDB -> 메타데이터 저장 용도로 계속 사용 가능

오답 이유

- **A:**
    - Lambda + DynamoDB만 사용하면 큰 파일(이미지)을 DynamoDB에 저장하게 되어 **비용이 매우 높고 성능 문제가 발생**할 수 있음.
    
- **B:**
    - Kinesis Data Firehose는 스트리밍 데이터 처리용으로 적합하며, 이미지 파일과 같은 **대용량 바이너리 데이터를 처리하기에는 부적합**.
    
- **D:**
    - EC2를 3개로 확장하고 EBS io2를 사용하면 수동으로 인스턴스를 관리해야 하고, 사용량 변동에 **자동 확장이 불가** → 운영 부담 증가.'),
  (115, 115, '- EC2를 프라이빗 서브넷으로 이동 -> 인터넷 게이트웨이를 사용하지 않음
- VPC 엔드포인트 (S3 Gateway Endpoint)를 사용하면 트래픽이 AWS 네트워크 내에서 직접 S3로 전달되며 인터넷을 거치지 않음
- 엔드포인트를 프라이빗 서브넷 라우트 테이블에 연결 -> EC2에서 S3 액세스 시 인터넷 사용 없음

오답 이유

- **A:**
    - NAT 게이트웨이를 사용하면 EC2가 퍼블릭 서브넷을 통해 인터넷으로 나가게 됨 → 트래픽은 여전히 인터넷을 통과. 요구사항 위반.
    
- **B:**
    - 보안 그룹는 트래픽 필터링만 가능 → 트래픽 경로를 제어할 수 없음. 트래픽은 여전히 인터넷을 통과.
    
- **D:**
    - Direct Connect는 온프레미스 → AWS 연결용. S3 액세스를 위해 별도로 구성할 수 있으나 **복잡하며 최소 운영 부담을 제공하지 않음**. 요구사항을 간단히 해결할 수 있는 방법 아님.'),
  (116, 116, '- 동적 콘텐츠 필요 없음 -> 정적 웹사이트 가능
- 연간 4회 업데이트 -> 빈번한 변경 X -> 정적 호스팅 적합
- 높은 확장성과 보안 -> CloudFront + S3 조합으로 제공 가능
- D: S3 정적 웹사이트 호스팅 -> 운영 부담 최소화, 서버 관리 불필요
- A: CloudFront 배포 -> 전 세계 사용자에게 빠른 콘텐츠 제공, HTTPS 지원, 보안 강화


오답 이유

- **B:**
    - AWS WAF는 웹 애플리케이션 방화벽 기능 제공.
    - HTTPS 제공 기능은 아니며, S3/CloudFront 없이 단독으로 HTTPS 지원 불가.
    
- **C:**
    - Lambda를 사용하면 서버리스 동적 처리 필요.
    - 단순 정적 사이트에는 불필요하며, 운영 부담 증가.
    
- **E:**
    - EC2 + ALB + Auto Scaling → 서버 관리 필요, 동적 트래픽 처리용.
    - 정적 사이트에서는 불필요하며, 운영 부담 증가.'),
  (117, 117, '- CloudWatch Logs 구독을 통해 바로 OpenSearch로 스트리밍 가능
- 서버리스 방식이며 운영 부담이 최소화
- 추가 인프라 관리나 람다, Kinesis 구성 필요 없음

오답 이유

- **B:**
    - Lambda를 사용하면 동작 가능하지만, 로그 처리량이 많으면 Lambda 관리 및 배포, 오류 처리 등 운영 부담 증가.
    
- **C:**
    - Firehose 사용 가능하지만, CloudWatch Logs를 직접 소스로 연결하려면 Firehose 설정이 필요하며, Lambda 없이도 A 옵션이 더 간단.
    
- **D:**
    - Kinesis Agent 설치 필요 → 서버마다 설치 및 관리 필요.
    - 운영 부담이 매우 높음.'),
  (118, 118, '- 요구사항
	- 900TB 규모의 텍스트 문서
	- 웹 애플리케이션 접근
	- 수요 변화 대응 가능
	- 비용 효율적
- Amazon S3는 페타바이트 수준까지 확장 가능하며 EC2에서 직접 액세스 가능
- EBS/EFS는 수백 TB 규모에서는 비용이 매우 높고 관리 부담도 큼
- OpenSearch는 검색 및 분석용으로 최적화, 단순 저장용으로는 비용 과다
- S3는 객체 스토리지로서 읽기/쓰기 성능과 확장성을 자동으로 제공하고 비용 효율적


오답 이유

- **A. Amazon EBS**
    - 단일 인스턴스 블록 스토리지. 여러 AZ에서 공유 불가 → 확장성 부족
    - 900TB 저장 시 비용 과다
    
- **B. Amazon EFS**
    - NFS 기반 파일 스토리지. 다중 AZ 지원 가능하지만, 대규모 데이터(900TB)에서는 비용 매우 높음
    
- **C. Amazon OpenSearch Service**
    - 검색과 분석 용도에 적합. 단순 대용량 객체 저장에는 부적합
    - 900TB 저장 시 비용 및 관리 부담 큼'),
  (119, 119, '- 요구사항
	- SQL 인젝션 및 XSS 공격 방지
	- 여러 계정 및 여러 리전
	- 관리 부담 최소화
- AWS WAF는 웹 애플리케이션 공격(SQLi, XSS 등) 방지 기능 제공
- AWS Firewall Manager를 사용하면 여러 계정 및 여러 리전에 걸쳐 WAF 규칙을 중앙에서 관리 가능
- 직접 각 리전과 계정에서 WAF를 구성하는 것보다 관리 편의성 및 일관성이 뛰어남

오답 이유

- **A. 두 리전에서 AWS WAF를 직접 설정**
    - 기능상 가능하지만, 여러 계정과 리전에서 개별 관리 → 관리 부담 큼
    
- **C,D. AWS Shield**
    - Shield는 DDoS 보호용 서비스
    - SQLi/XSS 공격 방지 기능 없음
    - Shield와 웹 ACL 연계는 불가능하며 요구사항에 부적합'),
  (120, 120, '- AWS Global Accelerator는 전 세계적으로 사용자를 가까운 리전의 엔드포인트(NLB, ALB, EC2)로 라우팅하여 지연 시간 최소화 및 가용성 향상
- 엔드포인트 그룹을 각 리전에 새엉하고 NLB를 엔드포인트로 추가하면, 미국과 유럽 사용자에게 가장 가까운 NLB로 자동 라우팅 가능
- Route 53 지리 위치 라우팅보다 자동 최적화 및 글로벌 Failvoer 기능 제공

오답 이유

- **A. Route 53 + CloudFront**
    - CloudFront는 콘텐츠 캐싱 중심이며, **동적 DNS 트래픽 라우팅 최적화 기능 부족**
    - NLB 대상 라우팅에는 적합하지 않음
    
- **C. Elastic IP + Route 53 지리 위치 + CloudFront**
    - EC2 개별 인스턴스 직접 라우팅은 **운영 부담 높음**, 장애 복구 기능 부족
    
- **D. ALB + Route 53 Latency + CloudFront**
    - ALB는 DNS 기반 라우팅 최적화 가능하지만, **글로벌 트래픽 최적화와 Failover 관리**는 Global Accelerator가 더 적합
    - 또한 기존 NLB를 ALB로 교체하면 TCP 수준 트래픽 처리에서 제한 가능'),
  (121, 121, '- RDS 인스턴스 자체는 기존에 암호화되지 않은 상태에서는 직접 암호화 설정이 불가
- 기존 스냅샷을 암호화된 스냅샷으로 복사하고, 그 스냅샷에서 새 DB 인스턴스를 복원하면 DB 인스턴스와 스냅샷이 모두 암호화됨
- 이후 생성되는 모든 스냅샷도 자동으로 암호화

오답 이유

- **B. EBS 볼륨 생성 후 복사**
    - RDS는 **EBS 직접 접근을 지원하지 않음**. EBS 볼륨을 만들고 스냅샷을 복사해도 RDS DB 인스턴스 암호화는 적용되지 않음
    
- **C. 스냅샷 복사 후 기존 인스턴스 복원**
    - **기존 DB 인스턴스는 직접 암호화 불가**. 스냅샷에서 새 DB 인스턴스를 만들어야 함. 기존 인스턴스를 그대로 복원하면 암호화되지 않음
    
- **D. S3로 스냅샷 복사 후 SSE-KMS 암호화**
    - RDS 스냅샷을 S3로 직접 옮겨도 **RDS에서 복원 가능한 암호화된 DB 인스턴스**를 만드는 방법이 아님. 운영 DB 암호화 요구 사항을 충족하지 않음'),
  (122, 122, '- AWS KMS는 완전관리형 키 관리 서비스로 개발자가 애플리케이션에서 쉽게 데이터를 암호화/복호화할 수 있는 확장 가능한 인프라를 제공
- 키 생성, 저장, 회전, 액세스 제어 등 운영 부담을 최소화
- IAM과 통합되어 세부적인 권한 관리도 가능

오답 이유

- **A. MFA 사용**
    - MFA는 키 보호의 일부 보안 조치일 뿐, **확장 가능한 키 관리 인프라 제공에는 부족**
    
- **C. ACM 사용**
    - ACM은 SSL/TLS 인증서 관리용으로 설계됨. **데이터 암호화 키 관리는 지원하지 않음**
    
- **D. IAM 정책만 사용**
    - 권한 제한은 키 접근을 제어할 수 있지만, **키 생성, 회전, 보관 같은 관리 기능은 제공하지 않음**'),
  (123, 123, '- 문제 : SSL 종료로 인해 각 EC2 인스턴스의 CPU가 포화 -> 성능 저하
- 해결방법
	- SSL 종료를 Application Load balancer(ALB)로 오프로드
	- ALB는 HTTPS 트래픽을 처리하며 EC2 인스턴스는 암호화/복호화 부담 없이 애플리케이션 로직만 수행
	- ACM과 통합하여 인증서 관리, 자동 갱신 가능

오답 이유

- **A. ACM 인증서를 각 인스턴스에 설치**
    - EC2가 여전히 SSL 종료를 수행 → CPU 부담 여전히 존재
    
- **B. S3로 인증서를 이동**
    - S3는 SSL 종료를 수행하지 않음 → 해결책 아님
    
- **C. 추가 EC2를 프록시 서버로 구성**
    - SSL 종료 부담이 다른 EC2로 이동될 뿐, **근본적인 문제(로드밸런서 없는 구조)는 해결되지 않음**'),
  (124, 124, '- 작업의 특성
	- 상태가 없고 언제든지 시작 및 중단 가능 -> Spot 인스턴스 중단 가능성 허용
	- 총 실행 시간 >= 60분 -> 람다 제한(최대 15분)을 초과 -> 람다 사용 불가
- 비용 효율성
	- EC2 Spot 인스턴스는 온디맨드 대비 최대 90% 저렴
- 확장성
	- 오토 스케일링 그룹이나 EC2 Fleet과 Spot을 함께 사용하여 수백~수천 인스턴스로 자동 확장 가능

오답 이유

- **B. EC2 예약 인스턴스**
    - 장기 사용에 적합, 배치 작업의 동적 요구에 맞지 않음
    
- **C. EC2 온디맨드 인스턴스**
    - 유연하지만 비용이 높음 → 비용 효율적 요구 불만족
    
- **D. AWS Lambda**
    - Lambda 최대 실행 시간 15분 → 60분 이상 작업 불가'),
  (125, 125, '- A: EC2 인스턴스 프라이빗 서브넷, RDS Multi-AZ DB 프라이빗 서브넷
	- EC2와 RDS 모두 공용 인터넷에 노출되지 않음
	- RDS Multi-AZ -> 고가용성 확보
- E: 퍼블릭 서브넷에 ALB, 프라이빗 서브넷에 EC2 + NAT 게이트웨이
	- ALB는 퍼블릭에서 접근 가능 -> 웹 트래픽 수신
	- EC2는 프라이빗 서브넷 -> 인터넷에서 직접 접근 불가
	- NAT 게이트웨이를 통해 EC2가 인터넷으로 결제 요청 전송 가능
	- 두 개의 AZ -> 고가용성 확보

오답 이유

- **B. ALB를 프라이빗 서브넷에 배포**
    - 퍼블릭 인터넷에서 접근 불가 → 사용자가 웹사이트에 접속 불가능
    
- **C. EC2를 퍼블릭 서브넷에 배포**
    - 요구 사항: EC2는 **공용 인터넷에 노출되지 않아야 함** → 불만족
    
- **D. 하나의 퍼블릭/프라이빗 서브넷만 사용**
    - 두 개의 AZ 필요 → 고가용성 요구 불만족'),
  (126, 126, '- 최근 2년간의 데이터는 즉시 접근 가능 -> Glacier Deep Archive로 이동시키면 안됨
- 2년 후의 데이터는 장기 보관 비용을 절감하기 위해 Glacier Deep Archive로 전환

오답 이유
- **A, D**
	- 객체를 즉시 Glacier Deep Archive 또는 One Zone-IA로 이동 → 최근 2년 데이터 즉시 접근 불가 → 요구사항 위반
        
- **C**
	- Intelligent-Tiering은 액세스 패턴 기반으로 아카이브 → 최근 2년 데이터의 즉시 접근 요구사항 보장 불가'),
  (127, 127, '- 비디오 처리를 위해 최대 I/O 성능이 필요하므로 블록 스토리지인 Amazon EBS (특히 io2 or gp3 볼륨)를 사용하는 것이 적합
- 300TB의 내구성이 중요한 미디어 콘텐츠 -> Amazon S3 : 99.999999999%의 내구성을 제공하며 대규모 데이터 저장에 적합
- 더 이상 사용하지 않는 900TB 아카이브 미디어는 비용 효율적인 장기 보관이 필요하므로 Amazon S3 Glacier 적합

오답 이유

- B
	- Amazon EFS는 내구성이 높지만, 300TB 규모의 대용량 객체 저장보다는 파일 시스템 형태의 접근에 적합하며, 비용이 S3보다 높습니다.
    
- C
	- EC2 인스턴스 스토어는 최대 I/O를 제공할 수 있지만 **인스턴스 종료 시 데이터가 손실**되므로 내구성 요구 사항을 충족하지 못합니다. 또한 아카이브를 S3로 설정하면 맞지만, 최대 성능용 스토리지 선택이 부적합합니다.
    
- D
	- EC2 인스턴스 스토어는 내구성이 없으므로 최대 성능 스토리지로 적합하지 않으며, S3는 300TB 저장에는 적합하지만 인스턴스 스토어로 최대 성능을 충족하는 부분이 부족합니다.'),
  (128, 128, '- 애플리케이션이 상태가 없고, 인프라 장애를 견딜 수 있으므로 스팟 인스턴스를 사용해 비용을 크게 절감
- EC2 오토 스케일링 그룹을 사용하면 인스턴스가 종료되거나 추가되는 상황에도 자동으로 컨테이너를 재배포할 수 있어 운영 오버헤드가 낮음
- EKS를 사용할 경우 쿠버네티스 클러스터 관리가 필요하며, 상태가 없는 단순 컨테이너 애플리케이션이라면 EKS를 도입하는 것은 불필요한 복잡성 추가

오답 이유
- B: EKS에서 스팟 인스턴스를 사용하는 것도 가능하지만, 관리형 Kubernetes 클러스터를 운영해야 하므로 불필요하게 운영 오버헤드가 증가합니다.
- C: 온디맨드 인스턴스를 사용하면 장애 시 안정적이지만, 비용이 높아지므로 최소 비용 요구사항을 충족하지 못합니다.
- D: EKS + 온디맨드는 가장 안정적이지만 비용과 운영 오버헤드가 모두 가장 높습니다.'),
  (129, 129, '- A: Aurora는 완전관리형 관계형 데이터베이스로, 자동 백업, 고가용성, 성능 튜닝, 스케일링을 제공하여 운영 오버헤드를 크게 줄일 수 있음. 기존 PostgreSQL과 호환되어 마이그레이션 비용이 적음
- E: AWS Fargate는 서버를 직접 관리할 필요 없이 컨테이너를 실행할 수 있는 완전관리형 서비스. 인프라 운영 및 용량 계획 부담을 제거하고, 컨테이너 기반 웹 애플리케이션에 적합

오답 이유

- B: EC2로 이전하면 서버 관리와 용량 계획 책임이 여전히 남아 있어 운영 오버헤드가 줄지 않습니다.
- C: CloudFront는 전세계 사용자에게 콘텐츠를 빠르게 제공하는 CDN이지만, 인프라 운영 부담을 줄이는 목적과 직접 관련이 없습니다.
- D: ElastiCache는 데이터베이스 캐싱을 통해 성능을 향상시킬 수 있지만, 운영 오버헤드 감소와 용량 계획 문제를 근본적으로 해결하지 않습니다.'),
  (130, 130, '- 대상 추적 정책(Target Tracking Policy)은 오토 스케일링 그룹이 지정한 메트릭(이 경우 CPU 사용률)을 기준으로 자동으로 인스턴스 수를 조정
- 애플리케이션이 CPU 사용륭 40% 근처에서 최적의 성능을 낸다고 명시되어 있으믈, 오토 스케일링 그룹을 이 목표값을 기준으로 자동 조정하면 모든 인스턴스가 원하는 성능 유지 가능

오답 이유

- A: 단순 스케일링 정책(Simple Scaling Policy)은 특정 임계값을 초과할 때만 동작하며, 목표 CPU 사용률 근처를 지속적으로 유지하는 데 적합하지 않습니다.
- C: Lambda로 원하는 용량을 업데이트하는 방식은 수동 트리거 방식에 가까워 실시간 자동 조정이 어렵고 운영 오버헤드가 증가합니다.
- D: 예약된 스케일링(Scheduled Scaling)은 시간 기반으로만 스케일링되므로, 트래픽 변화에 따른 실시간 CPU 사용률 조정에는 적합하지 않습니다.'),
  (131, 131, '- CloudFront를 통해서만 파일을 제공하고 S3 URL 직접 접근을 차단하려면 Origin Access Identity(OAI)를 사용하는 것이 정석적인 방법
- OAI를 CloudFront 배포에 연결하면, 해당 OAI만 S3 객체에 접근할 수 있고, 사용자는 반드시 CloudFront를 통해서만 파일에 접근할 수 있음
- 이 방법은 S3 URL을 통한 직접 접근을 원천적으로 차단하면서, CloudFront의 캐싱 및 보안 기능을 활용 가능

OAI(Origin Access Identity)
- CloudFront가 S3 버킷에 접근할 때 사용하는 가상의 IAM 사용자. S3
- S3 버킷 정책에서 오직 OAI만 접근 가능하도록 설정하면 S3 URL 직접 접근을 차단할 수 있음

오답 이유

- A: “각 S3 버킷에 개별 정책 작성”은 CloudFront 전용 권한을 주는 방식이지만, OAI 같은 인증 주체를 지정하지 않으면 여전히 S3 URL 직접 접근이 가능할 수 있습니다.
    
- B: IAM 사용자를 CloudFront에 직접 할당할 수는 없습니다. CloudFront는 IAM 사용자 개념을 사용하지 않습니다.
    
- C: CloudFront 배포 ID는 IAM Principal로 사용할 수 없습니다. 대신 OAI 또는 OAC(Origin Access Control)를 사용해야 합니다.'),
  (132, 132, '- Amazon S3에 정적 보고서 파일(예: PDF, CSV 등)을 저장하면 내구성과 화갖ㅇ성이 매우 높고 관리해야할 서버가 거의 없음
- CloudFront를 S3 오리진으로 구성하면 전 세계 엣지 로케이션에서 콘텐츠를 캐시하여 사용자에게 매우 낮은 지연 시간(가장 빠른 응답)을 제공. 또한 오리진의 부하를 크게 줄여 S3 비용/요청 부담도 완화

오답 이유

- **B. AWS Lambda 및 Amazon DynamoDB**
    - Lambda + DynamoDB는 서버리스로 관리 부담은 적지만, 다운로드용 대용량 정적 파일을 저장·전송하는 목적에는 부적합합니다. DynamoDB는 객체 스토리지로 설계되지 않았고 파일 전달 성능/비용 측면에서 비효율적입니다. 또 Lambda는 요청당 실행 비용·시간 한계가 있어 대용량 파일 제공엔 적절하지 않습니다.
    
- **C. Application Load Balancer와 Amazon EC2 Auto Scaling**
    - EC2 기반으로 파일을 서빙하면 직접 서버를 프로비저닝·운영해야 하므로 **인프라 관리 부담**과 비용이 크게 늘어납니다. 글로벌 사용자에게 낮은 지연을 주려면 여러 리전에 인스턴스/ALB를 배포해야 하며 복잡성과 비용이 증가합니다. 캐싱 계층(CloudFront)이 없으면 엣지 응답속도도 떨어집니다.
    
- **D. Amazon Route 53과 내부 Application Load Balancers**    
    - Route 53 + 내부 ALB 조합은 내부 라우팅 또는 리전 간 트래픽 분배 용도로만 적절하고, 전 세계 사용자에게 빠르게 정적 파일을 제공하기 위한 CDN 역할을 하지 못합니다. 또한 ‘내부’ ALB는 퍼블릭 다운로드 제공에 적합하지 않습니다.'),
  (133, 133, '- 요구사항
	- 최신 버전으로 업그레이드
	- DR(다른 리전) 구성
	- 정상 운영 및 DR 설정에서 운영 오버헤드 최소화
	- 데이터베이스 호스트의 기본 운영체제(OS)에 대한 접근 유지
- Amazon RDS for Oracle (표준)은 운영 부담을 줄여주지만 기본 운영체제에 대한 접근을 제공하지 않음
- EC2로의 마이그레이션(A)은 OS 접근을 완전히 제공하지만, 데이터베이스 패치, 백업, 복구, 모니터링, 고가용성/페일오버 구성 등 운영 오버헤드가 큼
- RDS Custom for Oracle은 RDS의 관리형 편의성(백업, 모니터링, 자동 패치 옵션 등)을 제공하면서 동시에 운영체제 수준의 접근(예: 운영 체제에서 실행되는 사용자 정의 도구 설치 및 실행, 특정 네이티브 구성 등)을 허용
- RDS Custom은 표준 RDS 기능과 통합되어 리전 간 복제(리드 레플리카) 또는 네이티브 복제 메커니즘을 통해 DR 시나리오를 구성할 수 있음
	- DR을 위해 RDS Custom 인스턴스의 리드 레플리카를 다른 리전에 생성하는 방법이 운영 부담을 줄이면서도 복구 목표 달성 가능

오답 이유

- **A. EC2로 마이그레이션하고 리전 간 복제 구성** — _불적합의 이유:_
    - 장점: 운영체제에 대한 완전한 접근 권한을 제공하므로 OS 수준 커스터마이제이션 및 네이티브 도구 사용 가능.
        
    - 단점: 데이터베이스 소프트웨어 패치, 백업/복구, 모니터링, 고가용성(페일오버) 구성, 용량 계획 등 모든 운영을 직접 관리해야 하므로 **운영 오버헤드가 매우 큼**. 질문에서 운영 오버헤드를 **최소화**하라는 요구와 충돌.
    
- **B. Amazon RDS for Oracle + 교차 리전 자동 백업 활성화** — _불적합의 이유:_    
    - 장점: RDS 표준은 관리형 기능(백업, 패치 옵션, 모니터링 등)을 제공하여 운영 burden이 적음. 교차 리전 자동 백업은 스냅샷을 다른 리전으로 복제하여 DR을 준비하는 데 도움.
        
    - 단점: RDS 표준은 **기본 운영체제에 대한 접근을 제공하지 않음**. 문제에서 OS 접근을 유지해야 하므로 요구사항 충족 불가.

- **D. Amazon RDS for Oracle + AZ 내 스탠바이(멀티-AZ)** — _불적합의 이유:_
    - 장점: Multi-AZ 스탠바이는 자동 페일오버로 가용성(내결함성)을 제공해 운영 편의성을 높임.
        
    - 단점: Multi-AZ는 같은 리전 내 고가용성(가용영역 장애 대비) 솔루션이며, **교차 리전 DR(리전 장애 대비)** 요건을 충족하려면 추가 복제/백업 설정이 필요. 또한 RDS 표준은 **운영체제 접근을 제공하지 않음**. 따라서 OS 접근 요구를 충족하지 못함.'),
  (134, 134, '- S3(오브젝트 저장) + Athena(S3 데이터 대상의 서버리스 SQL 쿼리 서비스) 조합은 완전히 서버리스이며, 운영(서버 패치, 스케일링 등) 부담이 거의 없음
- Athena는 S3의 데이터를 직접 SQL로 쿼리하므로 요구된 분석 방식과 정확히 일치
- S3 CRR은 객체를 한 리전에서 다른 리전으로 자동으로 복제
- SSE-KMS 다중리전키를 사용하면 KMS로 암호화된 객체를 리전 간에 복제할 때 키 관리 문제를 줄여줌

오답 이유

- **B (SSE-KMS + RDS)**
    - RDS는 관리형 DB 서비스지만 S3에 저장된 대규모 객체(특히 파일 레이크 성격)를 SQL로 쿼리하려면 데이터를 RDS로 ETL/로드해야 한다. 이는 추가적인 운영(데이터 로드·스키마 관리·관리형 데이터베이스 비용 등)과 복잡성을 초래한다. 또한 요구한 “서버리스로 분석” 관점에서 Athena를 쓰는 A보다 오버헤드가 크다.
    
- **C (SSE-S3 + Athena, 기존 버킷 사용)**
    - SSE-S3는 관리가 쉬워 운영 오버헤드가 더 적지만, **S3-CRR와의 보안·키 요건에서 일부 제약**이 있을 수 있다(예: SSE-KMS로 암호화한 객체는 KMS 키를 리전별로 준비해야 하고, 다중 리전 키 사용이 권장되는 시나리오에서 KMS 기반 로깅과 접근 제어 등 감사 요건이 중요할 때 SSE-S3는 세밀한 키 제어/감사를 제공하지 못함).
        
    - 문제 문장은 “데이터는 암호화되어야 하고 복제되어야 한다” — 보안/감사 요구가 강할 가능성이 높으므로 **SSE-KMS(특히 다중 리전 CMK)**를 선택하는 것이 기업 규정 준수와 감사/접근 제어를 만족시키는 더 올바른 선택이다.
        
    - 또한 C는 “기존 버킷”을 쓴다고 하지만, 기존 버킷에 이미 암호화 방식이 다르면 CRR나 KMS 구성에서 추가 작업(재암호화, 대상 리전 키 구성 등)이 필요할 수 있어 오히려 운영 부담이 늘 수 있다.
    
- **D (SSE-S3 + RDS)**
    - C와 B의 단점을 조합한 형태로, RDS 사용으로 인해 서버리스 분석 요건(운영 오버헤드 최소화)에 부합하지 않음.'),
  (135, 135, '- AWS PrivateLink(Interface VPC Endpoint)는 소비자 VPC(회사)가 공급업체가 제공하는 서비스에 대해 인터페이스 엔드포인트(ENI)를 생성하여, 트래픽을 AWS 네트워크 내에서 직접 서비스로 전달
	- 통신이 퍼블릭 인터넷을 경유하지 않고 AWS 네트워크로만 이루어지므로 비공개
	- 소비자는 특정 서비스(공급업체가 노출한 엔드포인트 서비스)에 대해서만 엔드포인트를 생성하므로 액세스가 서비스 수준으로 제한
	- 연결은 소비자 측에서 엔드포인트를 생성(회사의 VPC에서 요청 및 초기화)해야 하므로 회사 VPC에서만 시작되는 요건을 만족
- 공급업체 측에서는 Endpoint Service(보통 NLB 뒤에 서비스)를 설정해 회사가 그 서비스에 대해 PrivateLink로 연결할 수 있게 함

오답 이유

- **A. VPC 피어링**
    - VPC 피어링은 VPC 간 L3 라우팅을 통해 서브넷 간 임의 트래픽을 허용합니다. 피어링은 특정 서비스만 제한해서 연결하기 어렵고, 피어링으로 연결되면 양쪽 VPC에서 라우트로 상대 VPC의 서브넷을 접근할 수 있어 **접근 범위가 넓고 양방향**입니다. 또한 보안팀 요구처럼 “대상 서비스로만 제한”하고 “회사에서만 시작”하는 요구를 만족시키기 어렵습니다.
    
- **B. 공급업체가 가상 사설 게이트웨이(virtual private gateway)를 생성하고 PrivateLink 사용**
    - 가상 사설 게이트웨이(VGW)는 VPN/Direct Connect용 게이트웨이이며 PrivateLink와는 무관합니다. 문장 조합 자체가 기술적으로 일관되지 않으며, VGW가 PrivateLink를 대체하지 못합니다.
    
- **C. NAT 게이트웨이**
    - NAT 게이트웨이는 프라이빗 인스턴스가 인터넷으로 아웃바운드 접속할 때 사용하는 인터넷 경유 아웃바운드 장치입니다. 이 방식은 트래픽이 퍼블릭 인터넷(또는 NAT을 통한 인터넷 경유)으로 나갈 수 있으므로 **비공개 연결 요건을 충족하지 못합니다**. 또한 대상 서비스가 공급업체 VPC에 있는 경우 라우팅/보안상 적합하지 않습니다.'),
  (136, 136, '- 요구사항 : 온프레미스 PostgreSQL -> Aurora PostgreSQL 마이그레이션 중에도 실시간 동기화가 필요하다는 것
- AWS DMS를 사용해야 하며, 지속적인 복제(Ongoing replication)를 통해 데이터가 계속 동기화
- DMS를 사용하려면 복제 서버를 반드시 생성해야 함

오답 이유

- **B. 데이터베이스 백업 생성** → 백업은 한 번에 옮기는 경우에는 사용 가능하지만, 문제에서 요구하는 **실시간 동기화**를 지원하지 않음.
    
- **D. AWS SCT 스키마 변환** → 스키마 변환은 DB 엔진 간 마이그레이션(예: Oracle → PostgreSQL) 시 필요. 여기서는 **PostgreSQL → Aurora PostgreSQL** 이므로 동일 엔진이며 SCT 불필요.
    
- **E. EventBridge 규칙 생성** → 단순 모니터링일 뿐, 실시간 동기화 기능을 제공하지 않음. 문제 요구사항을 충족하지 못함.'),
  (137, 137, '- AWS에서는 계정 루트 사용자 이메일은 반드시 존재해야 하며 삭제 불가
- AWS Organizations에서 Alternate Contacts (Builling, Operations, Security 연락처)를 설정할 수 있어 루트 이메일 대신 관리자들이 알림을 받도록 구성 가능
- 문제의 요구사항 -> 알림이 계정 관리자에게만 제한되어야 한다 이므로 조직 전체가 아닌, 특정 관리자 그룹이 받아야 함
- 따라서 루트 이메일을 distribution list로 관리 + Alternate Contacts를 통해 AWS가 직접 관리자에게 알림 전달하도록 구성

오답 이유

- **A. 모든 사용자에게 전달** → 보안 문제. 알림을 모든 조직 사용자에게 전달하면 관리자 한정 조건을 위반.
    
- **C. 한 명의 관리자만 설정** → SPOF(Single Point of Failure). 한 명이 놓치면 다시 알림 누락 가능.
    
- **D. 모든 계정이 동일한 루트 이메일 사용** → 모범 사례 위반. 각 계정은 별도 루트 이메일을 가져야 하며, 동일 이메일 사용은 보안 및 관리 위험 증가.'),
  (138, 138, '- Amazon MQ (관리형 RabbitMQ)
	- 관리형 브로커 서비스로서 가용영역에 걸친 active/standby 구성(또는 서비스에서 제공하는 HA)을 제공
	- 브로커 운영(패치, 패치 적용, 스케일링, 패치/백업 등)을 AWS에 위임하여 운영 부담을 크게 줄임
- 오토 스케일링 그룹(멀티 AZ)으로 애플리케이션 호스트
	- 소비자 애플리케이션은 상태 없는 처리 혹은 재시도 로직을 갖고 있으므로 여러 AZ에 걸쳐 오토스케일링을 구성하면 인스턴스 장애 시 자동 교체 및 확장으로 가용성 확보
- Amazon RDS for PostgreSQL (Multi-AZ)
	- 데이터 계층을 관리형 RDS Multi-AZ로 옮기면 자동 페일오버, 백업, 패치 일부 자동화 등을 통해 운영 오버헤드가 크게 줄면서도 데이터베이스 수준의 고가용성을 보장

오답 이유

- **A (DB를 EC2 Auto Scaling으로 운영)**
    - 브로커를 Amazon MQ로 옮긴 점은 적절하나 **PostgreSQL을 EC2에 Auto Scaling으로 운영**하면 데이터베이스의 상태 유지·동기화·스토리지 관리·백업·복제·복구 등을 직접 관리해야 하므로 운영 오버헤드가 큽니다. DB는 일반적으로 Auto Scaling으로 처리할 수 없고, 상태 저장 DB에는 관리형 Multi-AZ RDS가 더 적합합니다.
    
- **C (RabbitMQ를 EC2 Auto Scaling으로 운영)**
    - 큐를 EC2 기반의 RabbitMQ로 유지하면 브로커의 HA/패치/운영을 직접 해야 하므로 운영 오버헤드가 큽니다. Amazon MQ로 이전하는 편이 운영 부담을 줄일 수 있습니다.
    
- **D (모든 구성요소를 EC2 Auto Scaling으로 운영)**
    - 메시지 브로커와 DB까지 EC2 Auto Scaling에 맡기면 **운영 오버헤드가 가장 큼**. 또한 데이터베이스를 Auto Scaling으로 운영하는 것은 설계상 적절하지 않습니다(데이터 일관성/스토리지 문제).'),
  (139, 139, '- "S3 복제"는 관리형 기능으로, 초기 버킷에 객체가 업로드될 때 운영자가 작성한 코드 없이 AWS가 자동으로 분석 버킷으로 복사해줌 -> 람다로 직접 복사하는 방식보다 유지관리가 훨씬 편함
- 분석 버킷에서 EventBridge로 이벤트를 보낸 뒤, EventBridge 규칙의 대상으로 람다와 SageMaker Pipelines를 구성하면, 이벤트 기반으로 자동으로 처리가 연계
- EventBridge는 람다를 직접 대상으로 실행할 수 있고 AWS 서비스 호출을 규칙 대상으로 구성할 수 있어 SageMaker Pipelines 시작을 자동화 가능
- 결과적으로
	- 파일 복사는 AWS 관리형 기능으로 처리
	- -> 분석 버킷의 ObjectCreated 이벤트는 EventBridge로 라우팅
	- -> EventBrdige가 람다와 SageMaker 파이프라인 실행을 트리거
오답 이유

- **A (Lambda로 복사 + S3 이벤트 직접 Lambda/SageMaker 대상 구성)**
    - S3 이벤트 알림은 **Lambda, SQS, SNS, EventBridge** 등을 대상으로 보낼 수 있습니다(일반적 대상). 하지만 **S3 이벤트 알림에서 직접 SageMaker Pipelines를 대상**으로 지정하는 것은 지원되지 않습니다. 따라서 SageMaker를 직접 대상에 넣을 수 없고, Lambda로 복사 관리와 추가 로직(재시도, 오류 처리)을 유지해야 하므로 운영 부담이 커집니다.
    
- **B (Lambda로 복사 + EventBridge 규칙으로 Lambda 및 SageMaker 대상)**
    - 이 구성은 EventBridge를 사용해 SageMaker를 호출할 수 있으므로 기능적으로 가능하지만, **파일 복사를 Lambda가 담당**하므로 복사용 Lambda 함수의 운영(코드, 권한, 예외 처리)이 필요합니다. S3 복제를 사용하면 이 복사 관리를 AWS에 위임할 수 있어 운영 오버헤드가 더 작습니다.
    
- **C (S3 복제 + S3 이벤트 직접 Lambda/SageMaker 대상)**
    - S3 복제는 적절하지만, **S3 이벤트에서 SageMaker를 직접 대상**으로 지정할 수 없기 때문에 SageMaker 파이프라인 트리거링을 위해서는 EventBridge를 중간에 두어야 합니다. 따라서 C는 기술적으로 불완전/지원되지 않는 구성이 포함되어 있습니다.'),
  (140, 140, '- A - Spot Instances for dta ingestion
	- 데이터 수집 레이어의 EC2 사용이 산발적이고 예측 불가능하며 워크로드가 언제든지 중단되어도 문제없음
	- 때문에 Spot 인스턴스의 장점(최대 절감율, 중단 가능)을 그대로 활용할 수 있는 이상적인 상황
	- Spot은 온디맨드 대비 매우 저렴하므로 비용 최적화에 가장 적합
- C - 1 year Copmute Savings Plan for front end and API layer
	- 프런트 엔드는 Fargate, API 계층은 람다로 실행되며 둘 다 향후 1년간 예층 가능
	- Compute Savings Plans는 EC2 뿐만 아니라 Fargate와 람다 사용량에도 적용되어(약정 사용량에 따라) 비용을 절감
		- 예측 가능한 사용량에 대해 1년 약정을 걸면 비용을 크게 낮출 수 있음
		- 참고로 EC2 인스턴스 Savings Plan은 EC2 전용이며 Fargate와 람다에는 적용되지 않음

오답 이유

- **B (On-Demand for data ingestion)**
    - 온디맨드는 유연하지만 Spot보다 비용이 높음. 워크로드가 중단 가능하고 사용량이 산발적이며 비용 최적화를 목표로 할 때 온디맨드는 최선의 선택이 아닙니다.
    
- **D (1-year All Upfront Reserved Instances for data ingestion)**
    - Reserved Instances는 장기·지속적이고 예측 가능한 용량에 적합합니다. 문제에서는 EC2 사용이 **산발적·예측 불가**하고 워크로드는 **중단 가능**하므로 RI(특히 All Upfront)는 자원 낭비 가능성이 큼.
    
- **E (1-year EC2 instance Savings Plan for front end and API layer)**
    - EC2 인스턴스 Savings Plan은 **EC2 전용** 약정으로, **Fargate와 Lambda에는 적용되지 않음**. 본 시나리오의 프런트 엔드(Fargate)와 API(Lambda)에 적용 가능한 것은 **Compute Savings Plan**이므로 E는 부적합.'),
  (141, 141, '- CloudFront는 글로벌 엣지 로케이션을 활용하여 전 세계 사용자에게 정적 및 동적 콘텐츠를 빠르게 제공
- ALB를 오리진으로 지정하면 정적 콘텐츠와 동적 API 응답 모두 CloudFront를 통해 캐싱되고 전달되므로 지연 시간이 최소화
- 단일 리전에서 CloudFront를 활용하면, 전 세계 사용자에게 최소한의 추가 운영 부담으로 빠른 콘텐츠 전달 가능
- 다중 리전 배포(B와 D)는 인프라 복잡성을 증가시키고, 라우팅 정책과 데이터 동기화 문제를 발생시켜 운영 부담을 늘림
- C는 동적 콘텐츠를 ALB에서 직접 제공하므로 전 세계 사용자에게는 지연이 발생

오답 이유

- **B. 두 개 리전 + Route 53 지연 시간 라우팅**
    - 동적/정적 콘텐츠를 각 리전에 배포해야 하며, 데이터 동기화, 세션 관리, 운영 복잡성이 증가합니다.
    - CloudFront를 사용하면 지연 시간 문제를 더 적은 운영 부담으로 해결할 수 있음.
    
- **C. 단일 리전 + CloudFront 정적, ALB 동적**
    - 정적 콘텐츠는 CloudFront에서 빠르게 전달되지만, 동적 콘텐츠는 ALB에서 직접 제공되므로 전 세계 사용자에게는 지연 발생 가능.
    
- **D. 두 개 리전 + Route 53 지리 위치 라우팅**
    - B와 유사하게 인프라 복잡성 증가, 데이터 동기화 및 운영 부담 발생.'),
  (142, 142, '- 요구사항
	- UDP 트래픽
	- 낮은 지연시간
	- 엣지 로케이션 기반 라우팅
	- 정적 IP 제공
- AWS Global Accelerator는 글로벌 네트워크 백본을 통해 사용자의 요청을 가장 가까운 AWS 엣지 로케이션으로 전달하며 정적 Anycast IP 주소를 제공
- NLB(Network Load Balancer)는 UDP 트래픽을 지원하며, EC2 오토스케일링 그룹과 함께 사용하면 확장성과 고가용성을 제공

오답 이유

- **A. Route 53 + ALB + Lambda**
    - ALB는 **UDP 트래픽을 지원하지 않음**.
    - Lambda는 UDP 서버 역할을 직접 수행할 수 없으며, Application Auto Scaling과는 맞지 않음.
    
- **B. CloudFront + NLB + Lambda**
    - CloudFront는 **HTTP/HTTPS 트래픽**만 지원. UDP 트래픽 라우팅 불가.
    - Lambda는 UDP 서버를 호스팅할 수 없음.
    
- **D. API Gateway + ALB + EC2**
    - API Gateway는 **HTTP/HTTPS 트래픽만 지원**, UDP 트래픽 불가.
    - ALB 역시 UDP를 지원하지 않음.'),
  (143, 143, '- 요구사항
	- 기존 코드 최대한 활용
	- 모놀리식 -> 마이크로서비스
	- 팀별 관리
	- 높은 확장성 및 운영 부담 최소화
- Amazon ECS는 컨테이너 기반 애플리케이션을 호스팅, 기존 애플리케이션을 컨테이너화하여 분리된 서비스로 실행 가능
- ALB를 ECS와 연결하면 각 서비스별로 트래픽 분리 가능, 오토스케일링 정책을 적용해 자동 확장 가능
- 운영 부담이 EC2 기반 호스팅보다 낮으며, 람다보다 기존 코드를 많이 재사용 가능'),
  (144, 144, '- 문제 상황 : 월간 보고서 실행 시 오로라 인스턴스의 ReadIOPS와 CPU 사용률이 급증 -> 주 데이터베이스 성능 저하 발생
- 가장 비용 효율적인 방법은 읽기 전용 복제본을 사용해 보고서 쿼리를 오프로드하는 것
- 오로라 레플리카를 사용하면 기존 마스터 인스턴스의 부하를 줄이고, 별도의 읽기 트래픽을 처리할 수 있음

오답 이유

- **A. Amazon Redshift로 마이그레이션**
    - Redshift는 데이터 웨어하우스용으로 적합하며, ETL과 분석에 최적화됨.
    - 월간 보고서용만 옮기면 데이터 동기화 및 운영 오버헤드가 커지므로 비용과 운영 부담이 증가.
    
- **C. 더 큰 인스턴스로 마이그레이션**
    - 단순 인스턴스 업그레이드는 마스터 인스턴스 성능을 높이지만, 지속적인 비용 증가.
    - 비용 효율적이지 않음.
    
- **D. Provisioned IOPS 증가**
    - IOPS 증가만으로 CPU 문제 해결 불가.
    - 읽기 트래픽이 많다면 CPU와 I/O 모두 영향을 받으므로 근본 해결책이 아님.'),
  (145, 145, '- 오로라 데이터베이스로 분리해 MySQL 부하를 완화
- 웹 서버를 AMI + 런치 템플릿 + 오토스케일링 그룹으로 배포 -> 트래픽 증가 시 자동으로 EC2 인스턴스 확장
- ALB로 트래픽 분산 및 헬스 체크 -> 고가용성 확보
- Spot Fleet 사용 -> 비용 효율성 극대화

오답 이유

- **A**: ALB를 사용하지만 EC2 인스턴스 수를 수동으로 관리 → 자동 확장 불가, 트래픽 증가 시 성능 저하 가능
    
- **B**: Route 53 가중 라우팅은 실시간 트래픽 분산에 적합하지 않음 → “원활하게 확장” 요구사항 미충족
    
- **C**: EC2 중지 후 인스턴스 유형 변경 방식 → 확장 시 다운타임 발생, 실시간 대응 불가'),
  (146, 146, '- 애플리케이션에는 기본 사용량(baseline usage)이 있으며, 이는 매일 일정 시간 동안 반복되는 예측 가능한 사용량
- 예측ㄱ 가능한 기본 사용량에는 Reserved Instances를 사용하면 비용을 상당히 절감 가능
- 추가 사용량은 변동적이므로 Spot Instances를 활용하면 가용성을 유지하면서 비용을 최소화

오답 이유

- **A**: Spot 인스턴스는 저렴하지만, 중단 가능성이 있어 **가용성을 요구하는 전체 워크로드**에 사용하면 안정성을 보장할 수 없습니다.
    
- **C**: On-Demand 인스턴스는 비용이 높아, 반복적이고 예측 가능한 기본 사용량에 사용하면 비용 효율성이 떨어집니다.
    
- **D**: Dedicated 인스턴스는 하드웨어 전용 배정을 의미하며, 비용이 매우 높습니다. 변동 용량을 On-Demand로 처리해도 전체 비용이 비효율적입니다.'),
  (147, 147, '- 요구사항
	- 월 10TB 이상의 대규모 로그 장기(10년) 보관
	- 최근 1개월치에만 즉시 접근, 그 이후는 거의 접근 X -> 비용 최적화 측면에서 S3 Standard(또는 필요시 S3 Intelligent-Tiering 단기간)
	- S3 수명 주기 규칙은 S3 자체 기능으로 자동,저비용,정책 기반 전환을 제공 -> 운영 오버헤드가 거의 없음
	- S3 -> Glacier Deep Archive 전환은 비용 면에서 가장 유리'),
  (148, 148, '- SNS -> Lambda 직접 연동 시 일시적인 네트워크/처리 오류가 발생하면 알림 메시지 유실
- SQS를 SNS와 람다 사이에 추가하면 메시지가 내구성 있게 저장
- 람다에서 장애가 발생하더라도 메시지를 재처리 가능
- SQS는 at-least-once delivery 보장 -> 모든 알림이 결국 처리되도록 보장

오답 이유

- **A. Lambda 함수를 여러 가용 영역에 배포하도록 구성한다.**
    → Lambda는 본래 고가용성과 다중 AZ 지원을 제공하므로, 문제의 근본 원인(메시지 유실) 해결책이 아님.
    
- **B. Lambda 함수의 CPU 및 메모리 할당을 늘린다.**
    → 성능 최적화에는 도움이 될 수 있으나, 네트워크 오류로 인한 실패/메시지 유실 문제를 해결하지 못함.
    
- **C. SNS 주제의 재시도 전략을 구성한다.**    
    → SNS는 일정 횟수까지만 재시도를 수행하며, 그 후에는 메시지를 유실할 수 있음. 메시지를 보존하는 내구성 있는 큐가 필요함.'),
  (149, 149, '- 요구사항 : 데이터의 순서를 반드시 유지해야 함
- SQS Standard 큐는 높은 처리량을 지원하지만 순서를 보장하지 않음
- SQS FIFO 큐는 메시지 순서 보장과 정확히 한 번 처리를 제공
- 람다와 통합 시 자동으로 메시지를 순차적으로 처리할 수 있어 운영 오버헤드 최소화

오답 이유

- **B. SNS + Lambda**
    → SNS는 순서를 보장하지 않으며, 다중 구독자 환경에서 메시지가 비순차적으로 처리될 수 있음.
    
- **C. SQS Standard Queue + Lambda**
    → Standard Queue는 메시지 순서를 보장하지 않음. 따라서 “특정 순서 유지” 요구사항을 만족하지 못함.
    
- **D. SNS + SQS**
    → SNS 자체는 순서 보장이 없고, SQS Standard Queue로 연결 시에도 순서 보장이 불가능. FIFO 보장이 필요하므로 적합하지 않음.'),
  (150, 150, '- 요구사항
	- 두 조건이 동시에(AND) 만족될 때만 알람
	- 짧은 순간의 CPU 버스트에는 알람을 발생시키지 않음
- CloudWatch 복합 알람(Composite Alarm)은 여러 개의 하위 알람(child alarms)을 논리식(AND, OR, NOT)으로 결합할 수 있으므로 CPU > 50% AND ReadIOPS가 높음 과 같은 다중 조건 논리를 바로 표현 가능
- 권장 구현 방법
	1. 하위 알람 1 - CPU 알람: CPU 사용률 임계값을 50%로 설정하되, 짧은 버스트를 무시하도록 Period와 EvaluationPeriods 또는 datapoints to alarm을 적절히 설정(예: 1분(period) 데이터 3개 중 2개 초과 등)하여 순간적인 스파이크를 필터링
	2. 하위 알람 2 - ReadIOPS 알람 : Read IOPS 임계값과 유효 기간을 설정
	3. 복합 알람 : 하위 알람 1 && 하위 알람 2 로 구성.


오답 이유

- **B. CloudWatch 대시보드 생성**
    - 대시보드는 모니터링/시각화에는 유용하지만 **알람 트리거를 자동화하는 기능이 아님**. 요구사항은 자동 알람/조치가 필요하므로 대시보드만으로는 불충분합니다.
    
- **C. CloudWatch Synthetics 캐너리**
    - Synthetics는 엔드투엔드(웹 페이지, API) 가용성·응답성 테스트에 적합한 서비스로, OS 수준의 CPU/IO 메트릭 결합 조건을 모니터링하는 데 적절하지 않습니다.
    
- **D. 단일 CloudWatch 단일 메트릭 알람 (여러 임계값)**
    - 단일 메트릭 알람은 **하나의 메트릭** 또는 메트릭 수식(metric math)에 기반할 수는 있지만, 서로 다른 메트릭 간의 논리적 AND(동시에 두 알람 상태를 요구)를 표현하고 거짓 알람을 줄이는 데는 **복합 알람보다 덜 직관적이고 유연**합니다. 또한 짧은 버스트을 무시하려면 개별 메트릭 알람의 평가기간/데이터포인트를 조정하는데, 이렇게 만든 하위 알람들을 복합 알람으로 조합하는 것이 권장되는 패턴입니다.'),
  (151, 151, '- C. AWS Organizations + Service Control Policies(SCPs)
	- 리전 제한(리전 허용/거부) 및 리소스 생성 제한(예: 인터넷 연결 관리 API 차단)을 계정 전체에 강제 적용하려면 Organizations의 SCP가 적합
	- SCP를 사용하면 특정 계정·조직 단위(OU)에 대해 aws:RequestedRegion 같은 조건을 이용해 ap-northeast-3 이외의 리전에서의 API 호출을 거부할 수 있고, ec2:CreateInternetGateway, ec2:AttachInternetGateway, ec2:CreateNatGateway 등 인터넷 연결을 만들거나 구성하는 API 호출을 차단하는 정책을 적용 가능
	- SCP는 관리자가 의도적으로 권한을 부여하더라도(계정 수준의 IAM 권한보다 상위에서) 정책을 강제하므로 **“관리자는 VPC를 인터넷에 연결할 수 없음”** 요구사항을 기술적으로 강제
- E. AWS Config의 관리형 규칙(탐지 및 경보)
	- 예방(차단) 정책과 결합하여 탐지/감사 체계를 갖추는 것은 규정 준수에서 중요
	- AWS Config는 리소스가 생성되면 규칙과 비교하여 비준수(Noncomplicant) 를 보고하고 알림(SNS 등)을 트리거할 수 있음
		- 인터넷 게이트웨이(IGW)가 생성되거나 서브넷에 퍼블릭 라우트가 추가되는지 감지하는 규칙, 리소스가 ap-northeast-3 이외의 리전에 생성되었는지 감지하는 규칙을 활성화하여 **빠른 감사·교정**
	- 탐지 규칙은 운영팀에게 알림을 주고 자동으로 remediation(예: 람다를 통한 삭제/태깅 등)을 트리거할 수 있어 거버넌스 자동화에 도움


오답 이유

**A. AWS Control Tower로만 처리**
- Control Tower는 조직 초기 설정과 표준 계정 구조(OU)·가드레일 적용을 쉽게 해주며, 일부 가드레일은 SCP/Config 등에 의해 구현됩니다. 그러나 Control Tower는 이미 계정이 Control Tower 관리 하에 있어야 하고 환경 구축이 추가적이며, 질문의 핵심(정책 강제 + 규정 준수 모니터링)을 바로 해결하려면 **직접 Organizations의 SCP와 Config 규칙을 구현**하는 것이 명확하고 경량입니다. Control Tower는 유용하지만 필수 요소는 아니고, 단독 선택지가 가장 간단한 해법이라고 보기 어렵습니다(또한 Control Tower는 모든 경우에 원하는 동일한 예방 정책을 자동으로 제공하지 않을 수 있음).

**B. AWS WAF + 계정 설정에서 리전 거부**
- AWS WAF는 웹 애플리케이션 계층(HTTP/HTTPS)에 대한 필터링 도구로, VPC 수준의 인터넷 연결(IGW, NAT 등)을 차단할 수 없음. 따라서 VPC가 인터넷에 연결되는 것을 차단하려는 목적에 적합하지 않습니다. 계정 설정에서 리전 거부도 표준 기능으로 제공되지 않으며, 리전 차단은 Organizations의 SCP로 구현해야 합니다.

**D. 네트워크 ACL 아웃바운드 차단 + IAM 정책으로 리전 제한(각 사용자)**
- 네트워크 ACL(네트워크 ACL)은 VPC 수준에서 트래픽을 제어할 수 있지만 **수작업으로 모든 VPC 및 서브넷에 적용**해야 하고, 관리자가 변경 가능하므로 정책 강제성(유효한 규정 준수 강제력)이 약합니다.
    
- IAM 정책으로 리전 사용을 제한하는 것은 가능할 수 있으나(조건 키 사용) **SC P가 아닌 개별 사용자/역할 수준에서 관리**하면 누락이나 운영 복잡성이 커집니다. 또한 NACL 차단은 관리자가 변경하면 우회 가능하므로 규정 준수 강제 수단으로는 취약합니다.'),
  (152, 152, '- 애플리케이션은 하루 12시간만 사용되므로 비용을 절감하려면 사용하지 않는 시간에 RDS 인스턴스 중지해 인스턴스 운영 요금을 줄이는 것이 효과적
- 람다 + EventBridge(예약) 조합은 운영 오버헤드가 매우 낮고 완전 관리형
	- 람다 함수(예: boto3의 start_db_instance/stop_db_instance 호출)는 간단하고 관리가 쉬우며, 실행 환경을 운영할 필요가 없음
	- EventBridge 예약 규칙(크론 또는 rate 표현식)으로 자동적이고 정확하게 시작/중지 스케줄을 트리거할 수 있음

오답 이유

- **A. Systems Manager Session Manager용 IAM 정책 + 자동 시작/중지**
    - Session Manager(원격 쉘/세션 접속)는 RDS 인스턴스의 스케줄 제어와 직접 관련이 없습니다. 자동 시작/중지는 별도의 실행 메커니즘(예: Lambda+EventBridge)을 필요로 하며, 단순히 Session Manager 권한을 추가하는 것으로는 스케줄링이 되지 않습니다.
    
- **B. ElastiCache로 캐시 제공 후 DB 중지**
    - 캐시는 일시적 복제본이며 **정확한 영구 저장소를 대체할 수 없음**(데이터 일관성, 초기 로드 문제, 캐시 미스 처리 등). 또한 로그인이력/트랜잭션이 필요한 교육 애플리케이션에는 캐시만으로는 적절치 않습니다. DB를 중지한 상태에서 캐시로만 운영하려면 복잡한 동기화·무결성 구현이 필요하여 오히려 운영 부담과 위험이 커집니다.
    
- **C. EC2 인스턴스와 cron으로 EC2 시작/중지 제어**
    - EC2를 별도로 띄워 cron으로 RDS 시작/중지를 제어하면 **추가 인프라(EC2 비용, 관리, 보안 패치 등)** 가 발생하고 내결함성이 떨어집니다. Lambda+EventBridge는 관리형으로 훨씬 단순하고 비용·운영 부담이 적습니다.'),
  (153, 153, '- 요구사항
	- 저장 비용 절감
	- 가장 자주 액세스되는 파일은 즉시 사용 가능
- S3 Intelligent-Tiering은 객체 접근 패턴을 자동으로 모니터링하여 자주 접근되는 객체는 Frequent tier에 유지하고 접근이 드문 객체는 Infrequent/Archive 계층으로 자동 이동 -> 운영자가 일일이 규칙을 관리하지 않아도 되며, "가장 많이 액세스되는 파일은 바로 사용가능" 요구 만족
- 수백만 개 객체처럼 규모가 큰 경우, Intelligent-Tiering은 수동 규칙 관리/분류 부담과 실수 가능성을 줄여주고 장기적으로 비용 절감 효과

오답 이유

- **A. 초기 저장을 S3 Standard-IA로 구성**
    - Standard-IA는 접근 빈도가 낮은 객체에 대해 비용이 유리하지만, 초기 저장 계층으로 모든 객체를 Standard-IA로 두면 **새로 업로드되는(최근) 인기 파일들이 즉시 접근되어야 할 때** 불필요한 조회 요금과 지연(최소 저장 기간 등)이 발생할 수 있습니다. 문제는 “가장 자주 액세스되는 파일은 바로 사용 가능”이어야 하므로 모든 파일을 처음부터 IA로 저장하는 것은 부적절합니다.
    
- **C. S3 인벤토리로 관리 후 90일 뒤에 Standard-IA 이동**
    - S3 Inventory는 객체 목록/메타데이터 보고에 유용하지만, 비용 절감 목적의 자동 계층화는 **Lifecycle 규칙 또는 Intelligent-Tiering**이 더 적합합니다. Inventory는 운영·분석용이며 매일/주기적 처리·추가 로직 필요로 하여 운영 오버헤드를 증가시킬 수 있습니다.
    
- **D. S3 Lifecycle 규칙으로 90일 후 Standard-IA로 이동**
    - Lifecycle 정책은 예측 가능한 액세스 패턴(모든 객체 90일 이후 드물게 접근됨)에 잘 맞는 저비용 옵션입니다. 그러나 문제에서 요구한 “가장 자주 액세스되는 파일은 즉시 사용 가능”을 **동적으로** 보장하려면, 일부 오래된 파일이 가끔 액세스될 경우 수동으로 예외를 관리해야 하거나 조회 시 비용/지연이 발생할 수 있습니다. 반면 Intelligent-Tiering은 빈번히 접근되는 오래된 객체를 자동으로 Frequent tier에 유지하므로 운영 부담 없이 사용자 경험을 보장합니다.'),
  (154, 154, '- S3 Object Lock Compliance Mode는 모든 사용자(심지어 루트 사용자 포함)도 보존 기간 동안 객체를 수정/삭제할 수 없도록 강제
- 365일 동안 Retention Period를 설정하면, 설정된 기간 동안 객체가 자동으로 보호
- 일부 과학자만 새 파일을 추가하도록 권한을 부여하는 것은 IAM 정책과 버킷 정책으로 제어 가능

오답 이유

- **A. Governance mode + Legal Hold 1년**
    - Governance 모드는 객체 삭제/수정을 제한할 수 있지만, **특정 권한을 가진 사용자(예: 루트 또는 s3:BypassGovernanceRetention 권한 보유자)**는 이를 우회할 수 있습니다.
    - 요구사항에서는 어떤 사용자도 1년 동안 삭제/수정을 못하도록 해야 하므로 Compliance Mode가 적합합니다.
    
- **C. IAM 역할과 버킷 정책만 사용**
    - IAM 정책과 버킷 정책은 권한 기반으로 제어할 수 있지만, **S3 Object Lock와 달리 우회 가능한 루트 사용자 또는 버킷 소유자에 의해 삭제 가능**하며, 객체 생성 후 최소 보관 기간을 보장하지 않습니다.
    
- **D. Lambda 함수로 해시 추적**
    - Lambda로 객체 변경을 감지하고 표시할 수는 있지만, **삭제/수정 자체를 방지할 수 없으며**, 1년 보존 기간을 강제할 수 없습니다. 운영 복잡성도 크게 증가합니다.'),
  (155, 155, '- Amazon CloudFront는 글로벌 엣지 네트워크를 사용해 S3 버킷의 콘텐츠를 캐싱하고, 사용자 요청에 가장 가까운 엣지 위치에서 콘텐츠를 제공하여 지연 시간을 최소화
- S3와 CloudFront를 연동하면 기밀 콘텐츠도 Signed URLs 또는 Signed Cookies를 통해 안전하게 배포 가능

오답 이유

- **A. AWS DataSync**
    - DataSync는 대량 데이터를 온프레미스와 AWS 또는 AWS 간에 **동기화/마이그레이션**하는 서비스입니다.
    - 실시간 캐싱이나 글로벌 사용자에게 콘텐츠를 빠르게 제공하는 기능은 제공하지 않습니다.
    
- **B. AWS Global Accelerator**
    - Global Accelerator는 정적 IP를 통해 애플리케이션 트래픽을 **가장 가까운 AWS 리전으로 라우팅**합니다.
    - S3 버킷과 직접 연결해 캐싱을 제공하지 않으며, CDN 기능이 없기 때문에 글로벌 콘텐츠 배포에는 부적합합니다.
    
- **D. Amazon SQS**
    - SQS는 메시지 큐 서비스로 **비동기 메시징**을 제공하며, 콘텐츠 캐싱이나 지연 시간 최적화 기능과 관련이 없습니다.'),
  (156, 156, '- A: S3에 스테이징 된 데이터를 Athena로 서버리스 SQL 쿼리 실행 가능하며, QuickSight와 연동해 대시보드 생성이 가능. 서버나 클러스터 관리가 필요 없음
- E: AWS Lake Formation + Glue를 사용하면 데이터 레이크로 쉽게 데이터 수집, 변환(ETL), Apache Parquet 같은 효율적인 컬럼 기반 포맷으로 S3에 저장할 수 있어 운영 오버헤드 최소화

오답 이유

- **B. Kinesis Data Analytics**
    - Kinesis Data Analytics는 **실시간 스트리밍 분석**에 적합하지만, 일회성 쿼리나 BI 대시보드 생성 용도로는 과도하고 운영 부담이 있음.
    
- **C. 사용자 지정 Lambda + Redshift**
    - 레코드 단위 이동은 **운영 오버헤드가 크고, 배치/실시간 데이터 처리 시 확장성이 낮음**.
    
- **D. Glue ETL + OpenSearch**
    - OpenSearch는 검색 최적화용이며, **BI 분석/일회성 쿼리에는 적합하지 않음**.'),
  (157, 157, '- 요구사항
	- 데이터는 5년 보관 후 삭제 -> 장기 보관과 삭제 정책 필요
	- 감사 로그는 무기한 보관 -> 로그 수집 및 장기 보관 필요
- E: AWS Backup을 사용하면 Aurora 클러스터의 백업을 관리하고, 5년 보관 후 삭제하도록 정책 설정 가능 -> 데이터 보존/삭제 요구사항을 충족
- D: Aurora PostgreSQL의 감사 로그를 CloudWatch Logs로 내보내기 설정하면, 로그를 무기한 저장 가능

오답 이유

- **A. 수동 스냅샷**
    - 수동 스냅샷은 **무기한 보관**되며 자동 삭제되지 않음. 따라서 5년 후 데이터를 삭제해야 하는 요구사항에 부적합.
    
- **B. 자동 백업 수명 주기(lifecycle) 정책 생성**
    - Aurora는 **자동 백업 수명 주기를 직접 설정할 수 없음**, 최대 보존 기간은 35일. 따라서 5년 보관 요구사항 충족 불가.
    
- **C. 자동 백업 보존 기간 5년**
    - Aurora 자동 백업의 최대 보존 기간은 35일로 제한되어 5년 요구사항 충족 불가.'),
  (158, 158, '- Amazon CloudFront는 전 세계 엣지 로케이션을 통해 콘텐츠를 캐싱하고 제공하므로 실시간 및 주문형 비디오 모두 성능 개선 가능
- CloudFront는 HTTP(S) 기반 스트리밍과 MediaStore, S3 등의 오리진과 연동되어 대규모 글로벌 트래픽 처리에 적합

오답 이유

- **B. AWS Global Accelerator**
    - 전 세계 사용자에게 고정 IP와 최적 경로 제공, **TCP/UDP 트래픽 지연 최소화**에 효과적.
    - 하지만 **HTTP 기반 스트리밍 콘텐츠 캐싱과 성능 최적화 기능은 제공하지 않음**, 실시간/온디맨드 비디오 성능 향상에는 제한적.
    
- **C. Amazon Route 53**
    - 도메인 이름 해석(DNS) 서비스.
    - 지연 기반 라우팅(latency-based routing) 제공 가능하지만, **스트리밍 콘텐츠 전송 최적화 기능은 없음**.
    
- **D. Amazon S3 Transfer Acceleration**
    - S3 업로드 속도 향상을 위해 전용 CloudFront 엣지 로케이션 사용.
    - **실시간 스트리밍 성능 개선 불가**, 주로 S3 업로드 최적화용.'),
  (159, 159, '- A. Usage Plan + Key
	- API Gateway의 사용량 계획과 API 키를 사용하면 인증된 사용자에게만 API 사용 권한을 부여할 수 있음
	- 봇이나 비인가 사용자의 접근을 제한하여 트래픽 급증을 방지
- C. AWS WAF 규칙
	- IP 주소, 요청 패턴, 헤더 등을 기반으로 악성 트래픽을 필터링
	- 봇넷이나 사기성 요청을 실시간으로 차단 가능

오답 이유

- **B. Lambda 함수 내 필터링**
    - 가능은 하지만, 모든 요청이 Lambda까지 도달해야 하므로 이미 **트래픽 비용 발생** 및 Lambda 실행 시간 소모.
    - 사전 필터링(WAF)보다 비효율적임.        
    
- **D. 프라이빗 API 변환**
    - 외부 사용자 접근을 원천 차단하지만, 일반 사용자가 접근할 수 없게 됨.
    - 공개 API 사용 요구와 상충.
    
- **E. IAM 역할 부여**
    - 모든 사용자별 IAM 역할 관리는 **운영 오버헤드가 매우 큼**.
    - 공개 서버리스 API에 적용하기 어렵고 실무적으로 비효율적임.'),
  (160, 160, '- Amazon S3 Standard는 밀리초 단위로 접근 가능
- JSON 데이터와 같은 작용 용량(월 300MB)에 대해 매우 비용 효율적인 스토리지 솔루션
- S3 Glacier나 Deep Archive는 액세스 시 몇 분~시간 정도의 지연이 있어, 즉시 접근 요구에 충족하지 못함
- Amazon RDS는 관리 오버헤드가 있고, 데이터 용량이 작아 비용 효율적이지 않음
- OpenSearch는 검색 및 분석 목적이 아니라 단순 백업용에는 과도한 비용이 발생

오답 이유

- **A. Amazon OpenSearch Service**
    - 검색 및 분석 목적의 서비스. 백업용으로는 불필요하게 비용이 높음.
    
- **B. Amazon S3 Glacier**
    - 매우 저렴하지만, 데이터 접근 시 수 분~수 시간 지연 발생. 즉시 접근 요구사항 불충족.
    
- **D. Amazon RDS for PostgreSQL**
    - 관리 오버헤드가 크고, 300MB 데이터에는 과도한 비용.'),
  (161, 161, '- AWS Lambda는 서버리스 컴퓨팅으로 높은 가용성과 자동 확장성을 제공, 운영 오버헤드가 거의 없음
- S3 이벤트를 트리거로 람다를 실행하면 문서가 도착할 때마다 자동 처리 가능, 수천 번의 호출도 람다가 자동으로 확장 처리
- 결과를 Aurora DB 클러스터에 저장하면 관리형 관계형 데이터베이스를 사용하여 고가용성과 확정성을 확보
- EC2나 ECS 기반 솔루션(A, C, D)은 관리해야 할 인스턴스가 많고, 오버헤드와 확장성 측면에서 람다 대비 불리

오답 이유

- **A. EC2 여러 대 사용 + S3 → Aurora**
    - 수천 번 실행 시 EC2 인스턴스 관리, 스케일링, 모니터링 부담 증가. Lambda 대비 운영 오버헤드 높음.
    
- **C. EBS Multi-Attach + EC2 → RDS**
    - EBS Multi-Attach는 일부 제한이 있고, EC2 관리 필요. 서버리스 요구사항 불충족.
    
- **D. SQS + ECS(EC2) → RDS**
    - ECS 클러스터 관리 필요, EC2 인스턴스 운영 오버헤드 존재. Lambda 대비 확장과 관리 효율성 낮음.'),
  (162, 162, '- Amazon FSx for Lustre는 HPC 워크로드에 적합한 고성능 POSIX 호환 파일 시스템 제공
- S3와 통합하면 온프레미스 데이터를 S3로 업로드하고, FSx for Lustre를 통해 EC2 인스턴스가 빠른 읽기/쓰기 성능으로 데이터 처리 가능
- Lustre 파일 시스템은 단기 HPC 작업에서 수천 개의 출력 파일 처리와 연계하여 데이터를 S3에 다시 저장하는 영구 스토리지 통합 기능 지원
- Spot 인스턴스를 사용하는 단기 워크로드에도 적합하며, EC2와 밀접하게 통합되어 HPC 요구사항 충족

오답 이유

- **B. FSx for Windows File Server + S3**
    - Windows 기반 전용 파일 시스템, HPC Linux 워크로드에는 적합하지 않음.
    
- **C. S3 Glacier + EBS**
    - Glacier는 **저비용 장기 아카이브용**, HPC 처리에 필요한 **실시간 고성능 읽기/쓰기** 불가.
    
- **D. S3 + EBS(gp2) 볼륨**
    - EBS는 단일 인스턴스에 연결된 블록 스토리지, 수백 EC2 인스턴스에서 공유 불가. HPC 워크로드에서 요구되는 **공유 고성능 파일 시스템** 조건 미충족.'),
  (163, 163, '- AWS Fargate 런치 타입은 컨테이너 실행을 위한 서버 관리 및 패치 작업을 필요로 하지 않으므로 운영 부담 최소화
- ECS 클러스터 + Fargate 조합은 컨테이너를 고가용성으로 여러 AZ에 배포 가능
- 타겟 트래킹을 통해 CPU나 메모리 관리 사용률에 따라 자동으로 스케일링 가능, 수천 명 사용자가 갑자기 증가해도 대응 가능
- 서버 프로비저닝, OS 관리, 패치 등 관리가 필요 없으므로 대규모 컨테이너 배포에 적합

오답 이유

- **B. ECS + EC2 런치 타입**
    - EC2 인스턴스를 직접 관리해야 하므로 운영 부담 증가.
    - 고가용성 확보와 스케일링 가능하지만, 서버 관리 필요성이 Fargate보다 높음.
    
- **C. EC2에서 리포지토리와 컨테이너 실행**
    - EC2 인스턴스와 리포지토리를 직접 관리해야 하므로 운영 부담이 매우 큼.
    - 스케일링 자동화 및 고가용성 구성도 복잡.
    
- **D. EC2 AMI + Auto Scaling**
    - 컨테이너를 AMI로 포함시켜 EC2에서 직접 실행하는 방식은 Fargate 대비 운영 부담이 큼.
    - 이미지 업데이트, 패치 관리, 인스턴스 관리 필요.'),
  (164, 164, '- SQS 큐와 DLQ를 사용하면 세미지를 유지하고 재처리할 수 있어, 실패 메시지가 다른 메시지 처리에 영향을 주지 않음
- 메시지는 최대 14일간 보관 가능, 따라서 메시지가 최대 2일 동안 처리되어야 한다는 요구 사항 충족
- 서버 관리를 필요로 하지 않아 운영 효율성이 높음
- 시간당 약 1,000개의 메시지를 처리할 수 있으며, FIFO 큐를 사용하면 메시지 순서를 보장 가능

오답 이유

- **A. EC2 + Redis**
    - 서버 관리 필요, 운영 부담이 큼.
    - 메시지 유지, 실패 처리, 재처리 로직을 직접 구현해야 함.
    
- **B. Kinesis Data Streams**
    - 실시간 스트리밍 처리에 적합하지만, 최대 2일 지연 처리 요구에는 과도함.
    - 운영 오버헤드가 SQS보다 높음.
    
- **D. SNS**
    - SNS는 **푸시 기반**으로 메시지를 즉시 전달함.
    - 실패 시 메시지 유지 및 재처리 기능이 제한적임.'),
  (165, 165, '- OAI(Origin Access Identity)를 사용하면 CloudFront를 통해서만 S3 콘텐츠에 접근 가능하도록 제한할 수 있어 보안을 강화
- AWS WAF는 CloudFront 배포에 직접 연결하여 모든 웹 요청을 검사할 수 있음
- 이 방식은 트래픽이 WAF를 통과해야만 하는 회사의 보안 정책을 준수하면서 CloudFront + S3 정적 웹사이트를 안전하게 호스팅 가능

오답 이유

- **A. S3 버킷 정책에서 WAF ARN 허용**
    - WAF는 리소스에 접근하는 주체가 아니므로, ARN을 사용해 직접 허용하는 것은 불가능합니다.
    
- **B. CloudFront를 WAF로 요청 전달**
    - CloudFront는 이미 WAF와 통합 가능하며, 별도의 전달 단계는 필요하지 않습니다.
    
- **C. CloudFront IP를 허용하는 보안 그룹**
    - S3는 보안 그룹을 지원하지 않습니다. (EC2, RDS 등과 달리)
    - 따라서 이 방법은 불가능합니다.'),
  (166, 166, '- Amazon CloudFront는 전 세계에 분산된 엣지 로케이션을 사용하여 S3 콘텐츠를 캐싱하고 제공하므로, 수백만 건의 글로벌 조회에도 **낮은 지연 시간과 높은 처리량**을 제공합니다.
- S3를 오리진으로 사용하면 정적 HTML 페이지를 빠르게 배포하면서 운영 비용도 최소화할 수 있습니다.
- CloudFront는 자동으로 콘텐츠를 캐싱하고 전 세계 사용자에게 최적화된 경로로 제공하므로 가장 효율적입니다.

오답 이유

- **A. 사전 서명된 URL 생성**
    - 인증된 접근 제어용이며, 전 세계 수백만 사용자에게 빠른 전송을 보장하지 않습니다.
    
- **B. 교차 리전 복제**
    - 여러 리전에 복제하면 비용이 증가하고 관리 오버헤드가 커지며, 캐싱과 전송 최적화를 제공하지 않습니다.
    
- **C. Route 53 지리 근접 기능**
    - DNS 수준에서 사용자를 특정 리전으로 라우팅하지만, 콘텐츠 캐싱이나 전송 가속을 제공하지 않습니다.'),
  (167, 167, '- SQS 메시지 처리량이 불규칙하고 간헐적이므로 최대 용량을 항상 온전히 Reserved Instances로 준비하면 비용 낭비가 발생
- Reserved Instances를 사용하여 안정적인 기본 용량을 확보하고, Spot Instances를 사용해 추가 트래픽이 발생할 때 유연하게 확장하면 비용을 최소화
- Spot Instances는 최대 용량을 처리할 수 있지만, 중단될 수 있으므로 기본 용량을 Reserved Instances로 유지함으로써 다운타임 없이 메시지 처리

오답 이유

- **A. Spot 인스턴스만 사용**
    - 중단 가능성이 있으므로 다운타임이 발생할 수 있습니다.
    
- **B. Reserved 인스턴스만 사용**
    - 간헐적 트래픽을 위해 최대 용량을 항상 유지해야 하므로 비용이 비효율적입니다.
    
- **D. Reserved + On-Demand**
    - On-Demand는 Spot보다 비싸므로, 비용 효율성이 떨어집니다.'),
  (168, 168, '- AWS Organizations의 서비스 제어 정책(SCP)은 조직 내 모든 계정에 적용되며, 중앙에서 관리할 수 있음
- SCP를 사용하면 계정 단위로 특정 서비스나 작업에 대한 허용/거부를 일괄 관리할 수 있음
- 루트 조직 단위에 적용하면 모든 계정에 자동으로 적용되어 확장성과 단일 관리 지점 요구사항 충족

오답 이유

- **A. ACL 생성**
    - ACL은 주로 S3 같은 리소스 수준 접근 제어에 사용되며, 계정 전체 권한 관리에는 적합하지 않습니다.
    
- **B. 보안 그룹 생성**
    - 보안 그룹은 네트워크 트래픽 제어용이며, 서비스/작업 권한을 제어하지 못합니다.
    
- **C. 각 계정에 교차 계정 역할 생성**
    - 계정마다 별도로 설정해야 하므로 중앙 관리가 어렵고 확장성이 떨어집니다.'),
  (169, 169, '- AWS Shield Advanced는 DDoS 공격으로부터 애플리케이션을 보호하도록 설계된 서비스
- ALB를 포함한 AWS 리소스를 자동으로 보호하며, 웹 애플리케이션을 대상으로 한 공격을 환화
- 표준 Shield(Standard)는 모든 AWS 고객에게 기본 제공되지만, 고급 기능과 알림/대응을 위해 Shield Advanced를 사용해야함

오답 이유

- **A. Amazon Inspector**
    - Inspector는 EC2와 컨테이너 이미지의 취약점 평가 도구이며, DDoS 방어 기능이 없습니다.
    
- **B. Amazon Macie**
    - Macie는 S3 데이터의 민감정보 탐지와 보호를 위한 서비스이며, 웹 공격 방어와는 관련이 없습니다.
    
- **D. Amazon GuardDuty**
    - GuardDuty는 위협 탐지 서비스로 로그 기반 이상 활동을 감지하지만, **DDoS 공격을 방지하지는 않습니다**.'),
  (170, 170, '- AWS WAF는 웹 애플리케이션 방화벽으로, 요청을 국가 단위로 필터링 가능
- ALB에 WAF를 적용하면 특정 국가에서 들어오는 요청만 허용하거나 차단할 수 있어, 정책 요구사항 충족
- 보안 그릅이나 네트워크 ACL은 IP 주소 범위를 기준으로만 트래픽을 제어하며, 국가 기반 필터링은 지원 X

오답 이유

- **A. EC2 인스턴스 보안 그룹**
    - 보안 그룹은 포트와 IP 주소 단위 트래픽 제어 가능, 국가 기반 필터링은 불가
    
- **B. ALB 보안 그룹**
    - 보안 그룹도 IP 주소 기반 제어만 가능, GeoIP 기반 차단 불가
    
- **D. 네트워크 ACL**
    - 서브넷 레벨에서 IP 주소 기반 트래픽 제어 가능, 국가 단위 필터링은 불가'),
  (171, 171, '- API Gateway + Lambda 조합은 서버리스 아키텍처로, 트래픽이 많아지는 시점에도 자동으로 확장
- 람다는 이벤트 기반으로 실행되며, 필요할 때만 컴퓨팅 리소스를 사용하므로 비용 효율적
- 연휴 시즌과 같은 트래픽 급증에도 탄력적으로 처리할 수 있어 요청 지연을 최소화

오답 이유

- **A. EC2에서 API 호스팅**
    - 단일 인스턴스이므로 트래픽 급증 시 확장이 어렵고, 탄력성이 부족합니다.
    
- **C. ALB + EC2 인스턴스 2개**
    - 두 인스턴스로만 처리 가능하며, 트래픽 급증 시 확장이 제한적이고 운영 오버헤드가 발생합니다.
    
- **D. API Gateway + EC2**
    - EC2를 사용하므로 트래픽 급증 시 확장 관리가 필요하며, 서버리스의 탄력성을 활용하지 못합니다.'),
  (172, 172, '- CloudFront 필드 수준 암호화는 사용자가 제출한 민감 정보를 CloudFront를 통해 전송할 때, 지정된 필드만 선택적으로 암호화할 수 있음
- 데이터가 애플리케이션 스택 전체를 통과하는 동안 암호화되어 보호
- 접근 권한을 특정 애플리케이션(즉, 해당 필드의 암호화 키를 가진 애플리케이션)으로 제한할 수 있음

오답 이유

- **A. 서명된 URL**
    - 콘텐츠 접근 제어는 가능하지만, 필드 수준의 민감 정보 보호에는 적합하지 않습니다.
    
- **B. 서명된 쿠키**
    - 특정 사용자 또는 그룹에 대한 접근 제한에는 유용하지만, 개별 데이터 필드 암호화는 제공하지 않습니다.
    
- **D. HTTPS 전용 설정**
    - HTTPS만 사용하면 전송 중 데이터는 암호화되지만, 애플리케이션 스택 전체에서의 민감 정보 보호는 보장되지 않습니다.'),
  (173, 173, '- **Amazon CloudFront**는 전 세계에 분산된 엣지 로케이션을 통해 정적 콘텐츠(S3에 저장된 이미지, 비디오)를 캐싱하고 제공할 수 있습니다.
- 모든 사용자가 동일한 콘텐츠를 소비하므로 캐싱 효율이 높으며, 오리진 S3에 대한 부하를 크게 줄입니다.
- 비용 효율적이며, 글로벌 사용자에게 낮은 지연 시간으로 콘텐츠를 제공할 수 있습니다.


오답 이유

- **A. AWS Global Accelerator**
    - 글로벌 사용자에 대한 네트워크 레이어 지연 시간을 줄여주지만, S3 콘텐츠 캐싱 기능은 제공하지 않습니다.
- **C. ElastiCache for Redis**
    - 웹 서버 기반 데이터 캐싱에는 유용하지만, 전 세계 수백만 사용자에게 S3 정적 콘텐츠를 제공하는 데에는 효율적이지 않습니다.
- **D. ElastiCache for Memcached**
    - Redis와 동일하게 동작하며, 웹 서버 캐싱에는 적합하지만 S3 정적 파일 글로벌 배포에는 적합하지 않습니다.'),
  (174, 174, '- 현재 환경은 단일 AZ에서 실행되므로 AZ 장애 시 전체 웹 계층이 다운될 수 있음
- 두 개 이상의 AZ에 오토 스케일링 그룹을 배포하면 AZ 중 하나가 실패해도 다른 AZ에서 인스턴스가 트래픽을 처리
- ALB는 이미 트래픽을 오토 스케일립 그룹의 인스턴스로 분산할 수 있으므로 애플리케이션 수정 없이 고가용성 달성 가능

오답 이유

- **A. 두 개 리전에서 인스턴스를 배포**
    - 리전 간 배포는 고가용성을 제공할 수 있으나, 다중 리전 환경에서 ALB는 기본적으로 리전 내에서만 작동합니다. 애플리케이션을 수정하지 않고 두 리전에서 동작하게 하려면 Route 53 기반 글로벌 로드 밸런싱이 필요합니다.
- **C. Auto Scaling 템플릿 생성**
    - 템플릿은 인스턴스 생성을 단순화하지만, 고가용성을 자동으로 제공하지 않습니다.
- **D. ALB를 라운드 로빈으로 변경**
    - ALB는 기본적으로 라운드 로빈 또는 최적화된 분산을 사용하며, 단일 AZ 환경에서는 AZ 장애 시 고가용성을 제공하지 못합니다.'),
  (175, 175, '- 문제의 핵심 원인 = 람다 함수의 병렬 호출로 인해 Aurora PostreSQL 데이터베이스에 열리는 연결 수가 급증
- RDS Proxy를 사용하면 데이터베이스 연결 풀링(Connection Pooling)과 재사용을 통해 데이터베이스에 대한 연결 수를 제한할 수 있음
- 람다 함수 코드는 최소한만 수정하여 RDS Proxy 엔드포인트를 사용하도록 변경하면 되므로 운영 변경이 적음
- 이는 갑작스러운 트래픽 급증에도 데이터베이스 연결 문제를 완화하고, 시간 초과를 방지하는 가장 비용 효율적이고 최소 변경 솔루션

오답 이유

- **A. 프로비저닝된 동시성 + 글로벌 데이터베이스**
    - 글로벌 데이터베이스는 다중 리전에서 읽기 성능 향상에 적합하지만, **연결 수 폭증 문제를 직접 해결하지 않음**.
    - Lambda 프로비저닝 동시성은 Lambda 실행 지연을 줄이지만, 데이터베이스 연결 수 문제를 해결하지 못함.
- **C. 리드 리플리카 + 쿼리 매개변수 라우팅**
    - 읽기 요청 분산에는 도움이 되지만, Aurora PostgreSQL은 **쓰기 작업은 기본 인스턴스에서만 처리**되므로 주문 처리(write-heavy)에 대한 연결 폭증 문제를 해결하지 못함.
- **D. Aurora → DynamoDB 마이그레이션**
    - 애플리케이션 변경이 크고, 문제 해결에 과도하며 **즉각적 해결책이 아님**.'),
  (176, 176, '- VPC 엔드포인트는 AWS PrivateLink를 사용하여 프라이빗 서브넷에서 인터넷을 거치지 않고 DynamoDB에 직접 연결할 수 있는 방법
- 이를 사용하면 트래픽이 AWS 네트워크 내부에서만 흐르므로, 보안성이 가장 높음
- NAT 게이트웨이/인스턴스 또는 인터넷 게이트웨이를 사용하는 경우 트래픽이 퍼블릭 인터넷을 통해 나가게 되므로 보안상 취약

오답 이유

- **B. NAT 게이트웨이**
    - 트래픽이 퍼블릭 서브넷을 통해 인터넷으로 나가므로 AWS 네트워크 내부에만 머무르는 것이 아님.
- **C. NAT 인스턴스**
    - NAT 게이트웨이와 동일하게 인터넷을 통해 트래픽이 나가므로 보안 요구사항 불충족.
- **D. 인터넷 게이트웨이**
    - 직접 인터넷으로 나가야 하므로 가장 보안에 취약하고 요구사항에 부합하지 않음.'),
  (177, 177, '- DynamoDB Accelerator(DAX)는 DynamoDB에 대한 완전 관리형 인-메모리 캐시
- 애플리케이션 코드를 거의 변경하지 않고, 읽기 중심 워크로드의 성능을 수 밀리초에서 수 마이크로초 수준으로 개선 가능
- 추가적인 운영 부담이 없으며 애플리케이션 재구성이 최소화

오답 이유

- **A. ElastiCache for Redis**
    - 별도의 캐시 계층을 도입해야 하며, 애플리케이션 코드 수정이 필요합니다.
    - 운영 부담이 증가합니다.
- **C. DynamoDB 글로벌 테이블**
    - 다중 리전 데이터 복제용이며 성능 최적화보다는 **글로벌 가용성 및 읽기 분산** 목적.
    - 단순 읽기 성능 향상에는 적합하지 않습니다.
- **D. ElastiCache for Memcached**
    - Redis와 동일하게 별도의 캐시 계층 도입 및 애플리케이션 코드 수정 필요.
    - Auto Discovery가 있어도 운영 부담은 존재합니다.'),
  (178, 178, '- AWS Backup은 EC2, RDS, EBS, EFS 등 다양한 AWS 리소스의 백업과 복원을 중앙에서 관리할 수 있는 서비스
- 별도의 리전으로 자동 복사(Cross-Region Backup)를 구성할 수 있어 운영 부담이 최소화
- 별도 스크립트나 수동 복사 없이도, EC2와 RDS 모두 통합 관리 가능

오답 이유

- **B. Amazon Data Lifecycle Manager (DLM)**
    - DLM은 **EBS 볼륨과 AMI의 라이프사이클 관리**에만 사용 가능.
    - RDS 백업은 지원하지 않으므로 요구사항에 부합하지 않습니다.
- **C. AMI 복사 + RDS 읽기 리플리카**
    - 작동은 가능하지만, 수동 관리가 필요하고 운영 오버헤드가 높습니다.
    - AWS Backup 대비 자동화 및 통합 관리가 어렵습니다.
- **D. EBS 스냅샷 + RDS 스냅샷 + S3 CRR**
    - 지나치게 복잡하며 불필요한 단계가 많아 운영 오버헤드가 증가합니다.'),
  (179, 179, '- AWS Systems Manager Parameter Store에서 SecureString 타입을 사용하면 KMS 키로 암호화된 파라미터를 안전하게 저장 가능
- EC2 인스턴스가 해당 파라미터를 읽을 수 있도록 IAM 역할을 생성하고, Parameter Store 읽기 권한과 KMS Decrypt 권한을 역할에 부여해야 함
- EC2에 IAM 역할을 연결하면, 애플리케이션이 안전하게 파라미터 조회 가능
- 정책을 직접 EC2 인스턴스에 붙이는 것보다 역할을 사용하는 방식이 AWS 모범 사례이며, 보안과 운영 효율성을 모두 제공

오답 이유

- **B. IAM 정책을 EC2 인스턴스에 직접 할당**
    - EC2 인스턴스에는 정책을 직접 붙일 수 없습니다. 대신 **IAM 역할**을 사용해야 합니다.
- **C. Parameter Store와 EC2 간 IAM 신뢰 관계**
    - Parameter Store는 IAM 역할 기반 접근을 사용하며, 신뢰 관계를 설정하지 않습니다.
- **D. DB 인스턴스와 EC2 간 IAM 신뢰 관계**
    - DB 인스턴스는 IAM 리소스가 아니므로 신뢰 관계를 생성할 수 없고, Systems Manager 접근과도 관련이 없습니다.'),
  (180, 180, '- AWS WAF(Web Application Firewall)
	- 웹 애플리케이션 공격(SQL 인젝션, XSS 등) 차단
	- API Gateway에 적용 가능 -> 외부 API 요청 보호
- AWS Shield Advanced
	- 대규모, 정교한 DDoS 공격 감지 및 완화
	- NLB와 통합하여 TCP/UDP 계층 공격 보호

오답 이유

- **A. WAF를 NLB에 적용**
    - AWS WAF는 **ALB, API Gateway, CloudFront**만 지원
    - NLB 직접 보호 불가
- **D. GuardDuty + Shield Standard**
    - GuardDuty는 위협 탐지 서비스, Shield Standard는 기본 DDoS 보호
    - 정교한 공격 완화 및 웹 공격 보호는 불충분
- **E. Shield Standard + API Gateway**
    - 기본 DDoS 보호만 제공
    - 정교한 대규모 공격 대응에는 Shield Advanced 필요'),
  (181, 181, '- Amazon SQS는 메시지 큐로서 생상자와 소비자를 완전히 분리(decoupling)하고, 메시지 내구성, 재시도(Visibility Timeout + DLQ), 자동 확장성 등을 제공하여 마이크로서비스 간 안정적인 비동기 처리에 적합
- 결과 순서 보장이 필요하지 않으므로 표준 SQS(또는 필요시 FIFO)를 선택할 수 있으며, 서비스 운영 오버헤드가 적고 설계가 단순

오답 이유

- **B. Amazon SNS (오답)**
    - SNS는 퍼블리시/서브스크라이브(pub/sub)용으로 _브로드캐스트_에 적합합니다. 다수 소비자에게 동시에 메시지를 전달해야 할 때 유리하지만, 개별 소비자의 재시도/내구성(특히 실패 시 재처리 보장)은 SQS만큼 간단하게 보장되지 않습니다. 또한 메시지 처리가 느린 소비자가 전체 플로우에 영향을 줄 수 있어 비동기 처리 제어에 부적합할 수 있습니다.
- **C. AWS Lambda 브로커 (오답)**
    - Lambda를 메시지 중개자로 사용하면 호출/비용과 연결 관리가 복잡해지고, 대량 메시지(높은 처리량·버스트)에서 Lambda 동시성/한계에 걸릴 수 있습니다. 또한 내구성(메시지 영속성)과 재시도 로직을 직접 구현해야 하므로 운영·관리 부담이 커집니다.
- **D. DynamoDB + Streams (오답)**
    - DynamoDB 스트림은 이벤트 기반 처리에 사용 가능하지만, 메시지 큐로서의 목적(명확한 ack/visibility/재시도/DLQ 등)을 제공하지 않으며, 데이터 모델(테이블) 유지·비용이 추가되고 소비자 설계가 복잡해집니다. 단순 메시지 전달/비동기 작업 분배에는 과도한 솔루션입니다.'),
  (182, 182, '- Amazon RDS MySQL의 Multi-AZ 배포는 쓰기 가능한 기본(Primary) 인스턴스와 하나의 동기 복제된 대기(Standby) 인스턴스를 다른 가용 영역에 두어 운영 장애 시 자동 페일오버를 제공
- 멀티 AZ 구성에는 트랜잭션이 기본 인스턴스에 커밋될 때 스탠바이에도 동기적으로 적용되므로 데이터 손실 위험이 최소화
- RDS Multi-AZ는 관리형 서비스로 자동화된 백업, 소프트웨어 패치, 모니터링, 자동 페일오버를 제공하므로 운영 부담을 줄이면서 고가용성 보장

오답 이유

- **A. “세 개 AZ에 세 노드로 동기 복제된 RDS DB 인스턴스”**
    - 옵션 A는 모호합니다. 표준 **RDS MySQL**은 기본적으로 두 노드(Multi-AZ: primary + standby)로 동기 복제됩니다. RDS(표준 MySQL 엔진)에서 “세 노드로 동기 복제”를 제공한다는 것은 일반적인 구성과 일치하지 않습니다. (Aurora는 스토리지를 여러 AZ에 분산하고 복제본을 여러 노드에 유지하지만, 표현이 애매합니다.) 따라서 문제 문맥에서 신뢰할 만한 표준 솔루션으로 보기 어렵습니다。
- **C. RDS + 리드 리플리카(다른 리전) — 동기 복제라고 되어 있음**
    - **리전 간 리플리카는 일반적으로 비동기 복제**입니다(특히 RDS for MySQL의 리전 간 리플리카). 비동기 복제는 네트워크 지연과 장애 시 데이터 손실 위험이 있으므로 “모든 트랜잭션을 최소 두 노드에 동기적으로 저장”하려는 요구에는 부합하지 않습니다.
- **D. EC2 MySQL + Lambda로 RDS 동기 복제**
    - 이 접근은 복잡하고 신뢰성·운영상의 문제가 큽니다. 직접 동기 복제를 구현하는 것은 오류가 발생하기 쉽고 관리 오버헤드가 높으며 자동 페일오버 같은 관리형 기능을 제공하지 않습니다. 또한 구현 자체가 본래 요구(관리 최소화, 신뢰성 보장)와 상충합니다.'),
  (183, 183, '- 서버 유지관리 및 패치를 최소화해야 하므로 서버리스 서비스(API Gateway, Lambda, S3, CloudFront, DynamoDB)를 사용하면 운영 부담이 거의 없음
- 읽기, 쓰기 용량을 가장 신속하게 자동 확장하려면 DynamoDB 온디맨드가 가장 적합. 온디맨드 모드는 사전 용량 프로비저닝 없이 트래픽 변화에 즉시 대응하며 짧은 시간에 급격히 증가하는 읽기/쓰기에도 자동으로 스케일
- S3 + CloudFront는 정적 콘텐츠를 전 세계에 빠르게 제공하고, API Gateway + Lambda는 동적 요청을 관리하는 완전관리형(서버리스) 패턴으로, 고가용성/무관리 운영 측면에서 최적

오답 이유

- **B. (Aurora + Lambda/API Gateway + S3/CloudFront)**
    - Aurora는 관리형 RDB로 읽기 확장(리더 복제)은 가능하고 Aurora Auto Scaling(리더 추가)은 제공하지만, **쓰기 스케일(클러스터의 쓰기 처리량)은 인스턴스 및 스토리지 설계의 제약**을 받습니다. 또한 RDS(및 Aurora)는 자동 패치가 있더라도 관리형 DB 인스턴스 운영(백업/모니터링/튜닝 등) 필요성이 서버리스보다 큽니다. 요구한 “서버 유지관리 및 패치 최소화”와 “읽기·쓰기 용량을 가능한 한 빨리 확장”을 동시에 만족시키는 면에서 DynamoDB 온디맨드만큼 즉시성과 무관리성을 제공하지 않습니다.
- **C. (EC2 호스팅 + ALB + DynamoDB 프로비저닝)**
    - EC2 기반은 서버(운영체제) 유지·관리 및 패치가 필요하여 운영 부담이 큽니다. 또한 DynamoDB를 프로비저닝 모드로 사용하면 급증하는 트래픽에 대해 사전 용량 조정이 필요하여 자동 즉시 확장성 측면에서 불리합니다(프로비저닝·오토스케일링 설정이 가능하나 온디맨드보다 운영 개입 필요).
- **D. (EC2 호스팅 + Aurora Auto Scaling)**
    - 마찬가지로 EC2 기반 호스팅은 서버 유지관리와 패치 부담 존재. Aurora는 관리형 DB지만 앞서 언급한 쓰기 확장성과 운영 부담 측면에서 DynamoDB 온디맨드 대비 요구사항에 덜 적합합니다.'),
  (184, 184, '- 람다 함수가 온프레미스에 있는 프라이빗 데이터베이스에 접근하려면 람다를 VPC 내부에서 실행하도록 구성해야함
- 람다에 VPC 서브넷(프라이빗 서브넷 권장)과 적절한 보안 그룹을 지정하면 AWS가 함수 실행을 위해 ENI(탄력적 네트워크 인터페이스)를 생성하고 그 ENI를 통해 VPC 라우팅을 사용
- 이미 구성된 Direct Connect + 가상 프라이빗 게이트웨이(VGW) 경로가 있고 서브넷의 라우트 테이블에 온프레미스 대상으로 향하는 경로가 있다면, 람다의 트래픽은 VPC 라우팅을 통해 VGW -> Direct Connect로 전달되어 온프레미스 데이터베이스에 도달

오답 이유

- **B. VPN 연결을 설정**
    - 이미 Direct Connect가 존재하므로 반드시 필요한 조치는 아닙니다. VPN을 추가하면 이중 연결이 될 수는 있으나(재해복구용) 문제에서 요구한 “Lambda가 온프레 DB에 접근”을 위해 반드시 새 VPN을 설정할 필요는 없습니다. 또한 VPN을 설정하더라도 Lambda가 VPC와 연동되지 않으면 VPC 라우팅을 통해 온프레로 나갈 수 없습니다.
    
- **C. 라우트 테이블만 업데이트**
    - VPC의 라우트 테이블에 온프레로 가는 경로를 추가하는 것은 필요 조건이지만 **Lambda가 VPC에 연결되어 있지 않다면** 해당 라우팅을 사용하지 못합니다. 즉, 라우트 테이블 변경만으로는 충분하지 않습니다. Lambda를 VPC에 연결하여 ENI가 생성되어야 라우팅이 적용됩니다.
    
- **D. Elastic IP를 Lambda에 사용**
    - Lambda 함수는 콘솔에서 VPC에 연결하지 않는 한 고정 퍼블릭 EIP를 직접 갖지 않습니다. “탄력적 네트워크 인터페이스 없이 EIP를 통해 트래픽을 보낸다”는 구성은 불가능하거나 비표준적입니다. 또한 EIP를 통해 인터넷 경유로 온프레에 접근하면 트래픽이 인터넷을 통과할 수 있어 보안/요구사항에 맞지 않습니다.'),
  (185, 185, '- ECS에서 실행되는 컨테이너(Task)가 AWS 리소스(S3 등)에 접근할 수 있도록 하려면, IAM 역할을 생성하고 taskRoleArn에 지정
- 이렇게 하면 컨테이너 내에서 실행되는 애플리케이션이 AWS SDK/API를 사용할 때 자동으로 임시 자격 증명(STS)을 받아서 S3 API 호출 가능

오답 이유

- **A. IAM 역할 업데이트 후 컨테이너 재실행**
    - ECS 자체는 “ECS 서비스 역할”을 사용하지만, 컨테이너(Task)가 직접 S3를 호출하려면 **taskRoleArn**을 지정해야 합니다. 단순히 IAM 역할만 업데이트한다고 컨테이너 애플리케이션이 권한을 가지지 않습니다.
    
- **C. 보안 그룹 생성**
    - S3는 보안 그룹으로 제어할 수 있는 서비스가 아닙니다(보안 그룹은 VPC 내부 인스턴스 간 트래픽 제어용). S3 접근은 IAM 권한으로 제어해야 합니다. 따라서 잘못된 접근 방식입니다.
    
- **D. IAM 사용자 생성 후 EC2 인스턴스에서 로그인**
    - ECS 컨테이너가 IAM 사용자 자격 증명을 직접 쓰도록 하는 것은 비권장 방식이며 보안적으로 위험합니다. 또한 ECS 클러스터에 로그인 계정이 영향을 주는 구조가 아닙니다.'),
  (186, 186, '- Amazon FSx for Windows File Server는 네이티브 Windows 파일 서버(SMB 프로토콜)를 완전관리형으로 제공하며, Active Directory 통합, 파일 권한(NTFS ACL) 지원, 고가용성(Windows 파일 서버의 멀티-AZ 배포 옵션)을 제공
- 따라서 여러 Windows 인스턴스가 동일한 SMB 파일 공유를 마운트하여 사용해야 하는 시나리오에 적합

오답 이유

- **A. AWS Storage Gateway (볼륨 게이트웨이 모드)**
    - 볼륨 게이트웨이는 iSCSI 블록 볼륨을 온프레/VM에 제공하고 스냅샷을 S3/EBS에 저장하는 용도입니다. 여러 EC2 인스턴스가 동일 블록 장치를 동시에 마운트해 공유 파일시스템처럼 사용하는 것은 데이터 손상 위험이 있어 적합하지 않습니다. 또한 Windows 네이티브 SMB 공유를 제공하지 않습니다.
    
- **C. Amazon EFS**
    - EFS는 NFS 기반의 파일 시스템으로 Linux/Unix 워크로드에 적합합니다. Windows에서는 기본적으로 NFS 클라이언트를 통해 접근하는 방법이 복잡하고(Windows에서 NFS는 비권장/제한적), NTFS ACL과 같은 Windows 파일 시스템 기능을 제공하지 않으므로 Windows 애플리케이션용 공유 파일시스템 요구를 충족하지 못합니다.
    
- **D. EBS 볼륨을 여러 인스턴스에 연결**
    - EBS 볼륨(일반적)은 단일 EC2 인스턴스에만 읽기/쓰기 방식으로 연결 가능합니다. 여러 인스턴스가 동시에 동일 EBS를 마운트하면 데이터 손상 발생하므로 불가(다중-attach io2/volume의 경우도 제한적이고 Windows 파일 서버 공유 시나리오에 적합하지 않음). 또한 AZ 간 공유가 불가합니다.'),
  (187, 187, '- A - Amazon RDS Multi-AZ
	- RDS의 멀티-AZ 배포는 관리형으로 동기적 스탠바이 복제를 제공하며 기본 인스턴스에 장애가 발생하면 자동 페일오버 수행
	- 백업/패치/모니터링 등 운영 작업도 RDS가 관리하므로 수동 개입이 최소화
	- 관계형 데이터베이스의 고가용성을 가장 적은 운영 부담으로 제공하는 표준적인 방법
- D - Amazon ECS on AWS Fargate
	- Fargate 런치 타입을 사용하면 컨테이너를 실행하기 위한 EC2 인스턴스의 프로비저닝/패치/용량 관리를 사용자가 직접 할 필요가 없음
	- ECS 서비스 및 Fargate는 필요 시 컨테이너 인스턴스를 자동으로 재시작/스케일링하고, ALB와 통합해 고가용성 구성을 쉽게 만들 수 있음
	- 따라서 수동 개입을 크게 줄이면서 컨테이너 기반 애플리케이션을 안정적으로 운영 가능

오답 이유

- **B — RDS + 리플리카(다른 AZ)**
    - 읽기 확장을 위해 리플리카는 유용하지만, RDS 읽기 리플리카는 **일반적으로 비동기 복제**이며 자동 페일오버(마스터 장애 시 자동 승격)를 보장하지 않습니다. 프로덕션 쓰기 장애 시 자동 무중단 전환이 필요하면 Multi-AZ가 더 적합합니다. 리플리카는 읽기 분산 또는 리전 간 복제 용도로는 좋지만 “최소 수동 개입으로 고가용성” 요구에는 Multi-AZ가 더 적절합니다.
    
- **C — EC2 인스턴스 기반 Docker 클러스터**
    - EC2 기반으로 컨테이너를 운영하면 인스턴스의 패치, 용량 계획, AMI/OS 관리 등 **운영 오버헤드가 증가**합니다. 문제 요구는 “가능한 한 적은 수동 개입”이므로, EC2 관리형 솔루션은 부적합합니다.
    
- **E — ECS with EC2 launch type**
    - ECS(EC2 런치 타입)는 컨테이너 오케스트레이션을 제공하지만 **호스트 인스턴스(EC2)의 패치·스케일·용량관리**를 사용자가 수행해야 합니다. 운영 오버헤드를 최소화하려면 Fargate(서버리스 컨테이너)가 더 적합합니다.'),
  (188, 188, '- AWS Transfer Family (SFTP)는 S3를 대상으로 하는 완전관리형 SFTP 서비스로, SFTP/FTPS/FTP를 지원하며 엔드포인트는 AWS가 관리하므로 고가용성이 기본 제공
- 운영자가 서버 패치/가용성/스케일링을 직접 관리할 필요가 없어 운영 오버헤드 최소화
- Transfer Family는 S3 버킷을 직접 대상(데이터 레이크)로 설정할 수 있고, 사용자 인증(서비스 관리형, IAM, LDAP/Active Directory 연동 등), 로깅(Amazon CloudWatch, S3 액세스 로그) 및 VPC엔드포인트(프라이빗 연결) 옵션을 제공해 보안/감사 요건 충족이 쉬움

오답 이유

- **B. S3 File Gateway를 SFTP 서버로 사용**
    - S3 File Gateway는 온프레/애플리케이션에서 S3에 액세스하도록 NFS/SMB 파일 인터페이스(파일 게이트웨이) 또는 볼륨 게이트웨이 등을 제공하지만, **SFTP 프로토콜을 네이티브로 제공하지 않습니다**. 따라서 파트너가 SFTP로 업로드하려면 별도의 SFTP 서버가 필요하며 본 요구사항(운영 최소화·관리형 고가용성)을 충족하지 못합니다.
    
- **C. EC2 + VPN + cron 스크립트**
    - 동작은 가능하나 **고가용성·확장성·운영 부담**(인스턴스 패치, 모니터링, VPN 관리, 스크립트 오류 처리 등)이 큽니다. 또한 파트너가 VPN으로 연결해야 하는 운영·관리 제약이 있고 관리 부담이 증가합니다.
    
- **D. EC2 + NLB + cron 스크립트**
    - NLB는 TCP 레벨로 트래픽을 전달할 수 있지만, **SFTP 서버의 고가용성·스케일링·패치와 데이터 전송 신뢰성(재시도, 무결성 등)**을 직접 운영해야 합니다. 또한 cron 기반 반복 업로드/정리 로직과 장애 복구를 직접 관리해야 하므로 운영 오버헤드가 큽니다.'),
  (189, 189, '- 문서를 5년동안 절대 삭제/덥어쓰지 못하게 -> S3 Object Lock의 컴플라이언스 모드 사용
	- 컴플라이언스 모드는 보관 기간 동안 어떤 사용자(루트 포함)도 객체를 삭제하거나 버전 취소(누락)할 수 없도록 하며, 규정 준수 요구를 충족하는 가장 강력한 보호 제공
	- 거버넌스 모드는 권한을 가진 사용자가 삭제를 우회할 수 있으므로 요구사항에 부합하지 않음
- 암호화 키를 매년 자동회전 -> AWS KMS 고객 관리형 키(CMK) 사용
	- KMS CMK는 키 회전 옵션(enableKeyRotation)을 활성화하면 AWS가 연간 자동으로 키를 롤(over)하도록 지원
	- SSE-KMS(즉, S3의 서버사이드 암호화에 KMS CMK 사용)는 S3 객체를 암호화하면서 KMS의 자동 키 회전을 활용할 수 있어 최소 운영 오버헤드 요구조건 충족

오답 이유

- **A. S3 Object Lock — 거버넌스 모드**
    - 거버넌스 모드는 보통 삭제를 방지하지만, 특정 IAM 권한을 가진 사용자(예: s3:BypassGovernanceRetention 권한)가 보관 기간을 우회할 수 있습니다. 문제 요구는 “5년 동안 문서를 덮어쓰거나 삭제하지 못하도록 보장”하는 것으로, 완전한 불변(immutable) 보장을 원하므로 컴플라이언스 모드가 더 적합합니다.
    
- **C. SSE-S3(아마존 S3 관리형 키) + 키 회전 구성**
    - SSE-S3는 AWS가 키를 관리(백그라운드에서 키를 교체)하지만 고객이 연 단위 자동 회전 정책을 직접 구성·제어하는 메커니즘을 제공하지 않습니다. 또한 문제에서 ‘키를 매년 자동으로 회전’이라는 요구는 고객이 키 회전 정책을 직접 활성화·관리할 수 있는 KMS CMK가 더 적합합니다.
    
- **E. KMS 고객 제공(임포트) 키(Imported keys)**
    - 가져온 키(CMK 외부에서 업로드한 키)는 자동 회전 기능을 AWS KMS에서 제공하지 않습니다. 키 로테이션을 자동으로 수행하려면 KMS가 자체적으로 관리하는 고객 관리형 키(CMK)를 사용해야 합니다. 수동으로 키를 교체·업로드하면 운영 오버헤드가 커집니다.'),
  (190, 190, '- Elastic Beanstalk는 Java, PHP와 같은 런타임을 기본 지원하는 완전 관리형 PaaS 서비스
- 인프라 관리(오토 스케일링, 로드 밸런싱, 패치 등)를 자동으로 처리하여 운영 오버헤드가 최소화
- URL 스와핑을 통해 Blue/Green 배포 방식처럼 새로운 기능을 손쉽게 테스트하고 트래픽을 전환할 수 있어, 문제의 "새로운 사이트 기능을 자주 테스트" 요구에 적합

오답 이유

- **A. S3 + Lambda**
    - Java/PHP 기반의 동적 애플리케이션을 S3 정적 웹 호스팅으로는 직접 실행할 수 없습니다. Lambda로 모든 동적 처리를 하는 것도 복잡하고 관리 오버헤드가 커짐.
    
- **C. EC2 + Auto Scaling + ALB**
    - 고가용성은 제공되지만, 인스턴스 구성/운영/패치 관리가 필요해 **운영 오버헤드가 커짐**. 또한 새 기능을 자주 테스트하려면 배포 파이프라인을 직접 관리해야 함.
    
- **D. EC2 + 컨테이너 + Load Balancer Controller**
    - 컨테이너화는 가능하지만, ECS나 EKS 같은 관리형 컨테이너 서비스가 아닌 EC2에 직접 배포하면 인프라 관리 부담이 큼. 문제에서 요구하는 “최소 운영 오버헤드”와 맞지 않음.'),
  (191, 191, '- 문제 요점 : 보고용 쿼리가 RDS MySQL 기본 인스턴스의 성능을 방해하여 주문 처리 타임 아웃 발생
- 읽기 전용 복제본(Read Replica)은 쓰기 지연 없이 읽기 전용 쿼리를 별도의 DB 인스턴스에서 실행할 수 있음
- 직원들은 복제본에서 보고 쿼리를 실행할 수 있고, 주문 처리 트랜잭션은 기본 인스턴스에서 영향을 받지 않음

오답 이유

- **B. 읽기 전용 복제본 + 애플리케이션 분산**
    - 주문 애플리케이션까지 복제본에서 처리하도록 분산하면 **쓰기 트랜잭션은 복제본에서 처리되지 않음** → 주문 처리에는 도움이 되지 않음.
    
- **C. DynamoDB로 마이그레이션**
    - 기존 MySQL 기반 애플리케이션을 DynamoDB로 마이그레이션하는 것은 **대규모 변경**이 필요하며, 운영 오버헤드가 큼. 문제 요구사항과 맞지 않음.
    
- **D. 보고 쿼리를 비피크 시간에 예약**
    - 임시 해결책일 뿐 **실시간 보고 쿼리를 방지**하지 않으면 타임아웃이 계속 발생 가능.'),
  (192, 192, '- B. S3 + Athena
	- S3는 무제한 스토리지 확장성 제공
	- Athena는 S3에 저장된 데이터를 대상으로 SQL 쿼리를 실행할 수 있어 운영 효율성 극대화
- E. Lambda + Textract + Comprehend Medical
	- Lambda로 서버리스 이벤트 기반 처리 구현 -> 새 문서가 업로드될 때 자동 실행
	- Textract: 문서를 원시 텍스트로 변환
	- Comprehend Medical: 외료 관련 정보 추출
	- Ec2 기반 수동 처리보다 높은 확장성과 운영 효율성 제공

오답 이유

- **A. EC2 + MySQL**
    - 문서 데이터 양이 매우 많아지면 EC2/관계형 DB로 처리하는 것은 **확장성 부족**. 운영 오버헤드 큼.
    
- **C. EC2 Auto Scaling 그룹**
    - 맞춤 애플리케이션으로 스캔 및 분석 가능하지만 **관리/운영 오버헤드**가 크고, 서버리스 대비 확장성이 떨어짐.
    
- **D. Rekognition + Transcribe Medical**
    - Rekognition은 이미지/비디오 객체 인식 서비스이고, 텍스트 추출에는 적합하지 않음.
    - 문서 내 의료 정보 추출에는 **Textract + Comprehend Medical**이 올바른 조합임.'),
  (193, 193, '- 읽기 전용 복제본을 추가하면 읽기 요청을 여러 DB 인스턴스에 분산 가능 -> 일기 부하 감소
- Multi-AZ 구성 시, 장애가 발생해도 데이터베이스 가용성을 보장 -> 높은 가용성 확보
- 기존 애플리케이션을 거의 변경하지 않고 배포 가능 -> 운영 오버헤드 최소화

오답 이유

## **4. 오답 이유**

- **B. ElastiCache for Redis**
	- 정답 선택률 39%
    - 캐시를 추가하면 읽기 요청 부하를 줄일 수 있으나, 애플리케이션 코드를 캐시를 활용하도록 수정해야 함 → 운영 오버헤드 증가
    - 문제 조건에서 “최소한의 운영 오버헤드”와 “높은 가용성”을 동시에 고려하면 RDS 읽기 복제본이 더 적합
    
- **C. Route 53 DNS 캐싱**
    - DNS 캐시는 IP 주소만 캐싱하므로 DB 읽기 요청 부하 감소와 무관
    
- **D. ElastiCache for Memcached**
    - Memcached는 읽기 캐시로 사용할 수 있으나 고가용성 기능이 제한적이며, 캐시 사용을 위해 애플리케이션 코드 변경이 필요'),
  (194, 194, '- 동일 리전 내 서로 다른 가용 영역(AZ)에 데이터베이스를 클러스터로 구성하고 복제하면 AZ 장애 시 자동으로 다른 인스턴스로 장애 조치 가능 -> 고가용성 + 자동 장애 조치 충족
- 데이터베이스 복제를 통해 데이터 손실 최소화
- EC2 기반으로 직접 HA 구성 가능 -> 요구사항 충족'),
  (195, 195, '- SQS는 메시지를 안전하게 보관하고, 수신자가 처리할 때까지 삭제되지 않음 -> 시스템 장애 발생 시에도 주문 손실 없음
- EC2 인스턴스가 오토 스케일링 그룹으로 구성되면, 가용성을 높이고 장애 시 자동 복구 가능

오답 이유

- **A. EventBridge → ECS**
    - EventBridge는 스케줄 또는 이벤트 기반 트리거용
    - 기존 주문 시스템이 EC2에서 바로 처리하는 구조와 잘 맞지 않고, 주문 재처리 내결함성 보장 어려움
    
- **B. ALB 뒤 Auto Scaling EC2**
    - ALB는 **실시간 요청 라우팅용**
    - 주문 메시지가 손실되면 재처리 불가 → 내결함성 요구사항 미충족
    
- **D. SNS + Lambda + Run Command**
    - SNS는 **발행-구독(pub/sub) 모델**
    - EC2에서 Run Command로 처리하면, 장애 발생 시 메시지가 처리되지 않을 가능성이 있음
    - **자동 재처리 보장 어려움**'),
  (196, 196, '- DynamoDB는 TTL 속성이 설정된 항목을 자동으로 만료 처리
- 항목 삭제가 자동으로 백그라운드에서 수행 -> 운영 및 개발 부담 최소
- 비용 효율적, 서버리스 방식으로 관리 필요 없음

오답 이유

- **A. CloudFormation 스택 30일마다 재배포**
    - 스택 삭제/재배포는 전체 테이블를 삭제해야 하므로 데이터 손실 가능
    - 관리 복잡도 높음, 비용 효율적 아님
    
- **B. EC2 + DynamoDB Streams + 스크립트**
    - EC2 인스턴스 항상 실행 → 추가 비용 발생
    - 스크립트 유지관리 필요 → 개발 부담 ↑
    
- **C. DynamoDB Streams + Lambda**
    - Lambda로 오래된 항목 삭제 가능하지만,
    - 테이블 규모가 커지면 Lambda 호출 수 증가 → 비용 상승
    - 개발/운영 부담 있음'),
  (197, 197, '- B - Elastic Beanstalk .NET Multi-AZ
	- 기존 .NET 애플리케이션을 거의 수정하지 않고 그대로 AWS로 호출 가능
	- 멀티-AZ 배포로 고가용성 제공
	- 관리형 환경 -> 운영 부담 최소화
- E - AWS DMS로 Oracle -> RDS Oracle Multi-AZ
	- 기존 오라클 데이터베이스 구조 유지 가능 -> 개발 변경 최소
	- Amazon RDS Multi-AZ 배포 -> 데이터베이스 고가용성 제공
	- AWS DMS를 이용하면 다운타임 최소화 마이그레이션 가능

오답 이유

- **A. 서버리스 Lambda로 리팩터링**
    - 개발 변경이 매우 크고, 기존 .NET 애플리케이션 구조 변경 필요
    - “개발 변경 최소화” 요구사항 위반
    
- **C. Amazon Linux EC2로 재플랫폼**
    - 기존 Windows 기반 .NET 애플리케이션과 호환되지 않음
    - OS 변경 → 개발/운영 부담 ↑
    
- **D. Oracle → DynamoDB 마이그레이션**
    - 기존 SQL 기반 애플리케이션과 호환되지 않음
    - 개발 변경이 크고, 데이터 모델 변경 필요 → 요구사항 위반'),
  (198, 198, '- EKS + Fargate + DocumentDB(MongoDB 호환)
	- EKS -> 기존 쿠버네티스 기반 배포 그대로 운영 가능 -> 코드/배포 방식 변경 불필요
	- Fargate -> 서버 관리, 워커 노드 관리 필요 없음 -> 운영 부담 최소화
	- DocumentDB -> MongoDB 호환 데이터베이스 제공 -> 기존 애플리케이션 코드를 변경하지 않고도 사용 가능

오답 이유

- **A. ECS + EC2 + MongoDB on EC2**
    - MongoDB를 직접 EC2에서 운영 → 관리 부담 크고 고가용성 설정 필요
    - 코드 변경은 없지만 운영 부담이 높음
    
- **B. ECS + Fargate + DynamoDB**
    - DynamoDB 사용 시 기존 MongoDB 코드 변경 필요 → “코드 변경 불가” 요구사항 위반
    
- **C. EKS + EC2 + DynamoDB**
    - DynamoDB 사용 시 기존 MongoDB 코드 변경 필요 → 요구사항 위반
    - EC2 운영 부담 존재 → 최소 운영 부담 요구사항 위반'),
  (199, 199, '- Amazon Transcribe
	- 음성에서 텍스트 전사 가능
	- 여러 화자(Speaker) 인식 가능 -> 멀티스피커 전사 지원
	- 전사 파일을 S3에 저장 가능
- Amazon Athena : S3에 저장된 전사 파일을 쿼리하여 분석 가능
- 7년 보관 -> S3 객체 수명 주기 또는 표준 스토리지로 장기 보관 가능'),
  (200, 200, '- API Gateway + Amazon Cognito user poll authorizer는 AWS 관리형 접근 제어 솔루션
- 개발자가 직접 람다를 구현하지 않아도 Cognito 토큰 기반 인증 및 권한 부여가 자동 처리
- 최소한의 운영 부담으로, 로그인한 사용자가 REST API에 접근할 수 있도록 쉽게 구성 가능
- 추가적인 사용자 관리 로직이나 API 키 발급, Lambda authorizer 코드 작성 필요 없음


오답 이유

- **A. Lambda authorizer 사용**
    - 맞춤형 접근 제어 가능하지만 **개발 및 유지보수 부담이 큼** → 운영 부담 증가
    
- **B. API 키 + Lambda 검증**
    - API 키 관리와 검증 로직 필요 → 개발 및 운영 부담 높음
    
- **C. 이메일 헤더 + Lambda 검증**
    - 이메일 전송, Lambda 검증 로직 필요 → 보안, 개발, 유지보수 부담 증가'),
  (201, 201, '- Amazon Pinpoint는 SMS로 메시지를 보낼 수 있고, 사용자의 회신(reply)도 처리할 수 있는 관리형 서비스
- Pinpoint는 분석 및 마케팅 캠페인 관리에 특화되어 있어, 이벤트 데이터를 Amazon Kinesis Data Streams 또는 Amazon Kinesis Data Firehose로 전송하여 장기 보관 및 분석 가능

오답 이유

- **A. Amazon Connect**
    - Amazon Connect는 콜센터/컨택센터 솔루션으로 전화/채팅 기반입니다. SMS 대량 발송이나 회신 처리 기능은 본질적으로 제공하지 않습니다. 따라서 SMS 기반 마케팅 커뮤니케이션 요구사항에 적합하지 않습니다.
    
- **C. Amazon SQS**
    - SQS는 메시지 큐 서비스로 SMS 발송 기능을 제공하지 않습니다. SMS를 직접 보낼 수 없으므로 요구사항을 충족할 수 없습니다.
    
- **D. Amazon SNS FIFO**
    - SNS는 SMS 발송을 지원하지만 **사용자 회신(reply) 처리 기능**은 제공하지 않습니다. 또한 SNS FIFO 주제를 이용한 이벤트 저장은 가능하지만, 마케팅 캠페인 분석이나 장기 아카이빙에는 적합하지 않습니다.
    - Pinpoint처럼 마케팅 데이터 분석 기능과 회신 수집을 지원하지 않기 때문에 부적합합니다.'),
  (202, 202, '- 요구사항: 1. S3에 저장 시 암호화, 2. 매년 자동 키 로테이션
- AWS KMS 고객 관리형 키(CMK)는 자동 키 로테이션(연 1회) 기능을 제공하며, S3 버킷의 기본 암호화를 SSE-KMS(해당 CMK) 로 설정하면 신규 업로드 객체가 자동으로 해당 키로 암호화

오답 이유

- **A. SSE-S3**
    - S3 관리형 키는 키 관리를 S3가 알아서 처리하지만, **고객이 명시적으로 “매년” 로테이션을 보장/구성할 수 없습니다.** 시험 맥락에서는 “연 1회 자동 로테이션”의 명확한 보증이 필요한 경우 **KMS 고객 관리형 키 + 자동 로테이션**이 정답입니다.
    
- **C. KMS CMK + 수동 로테이션**
    - 기능적으로 요구사항을 만족할 수 있으나, **매년 수동 로테이션**은 운영 오버헤드가 큽니다. 문제는 “LEAST operational overhead(최소 운영 오버헤드)”를 묻고 있으므로 부적합합니다.
    
- **D. 가져온 키 자료(Imported key material)**
    - KMS에 **가져온 키 자료**를 사용하는 키는 **자동 키 로테이션이 지원되지 않습니다.** 가져온 키는 로테이션을 직접 설계/실행해야 하므로 요구사항(자동 로테이션)과 모순됩니다. 또한 사전 암호화 및 키 자료 수명 관리까지 필요해 오버헤드가 큽니다.
    - KMS에 가져온 키 자료 = 온프레미스 키를 KMS로 가져와 사용'),
  (203, 203, '- 지연은 "초대장 발송" 단계에서 발생 -> 이 단계의 작업은 SQS 큐에 적재된 메시지를 처리하는 EC2 기반 워커 애플리케이션이 수행
- 회사가 확장되면서 수요 급증 -> 큐 적체 증가 -> 워커 처리 지연
- SQS 큐의 깊이(대기 메시지 수, 지연 시간 등)를 지표로 오토 스케일링을 구성해 워커 인스턴스를 자동으로 수평 확장

오답 이유

- **A. DAX 추가**
    - DAX는 **DynamoDB 읽기 지연**을 줄이는 인메모리 캐시입니다. 문제의 지연은 “초대장/이메일 발송”까지 도달하기 전 **큐 처리 병목**이 원인입니다. 데이터 저장(스케줄 성공 후) 단계의 읽기/쓰기 최적화가 핵심이 아니므로 효과가 미미합니다.
    
- **B. API Gateway 앞단 추가**
    - API Gateway는 **프런트엔드 엔드포인트 관리**와 통합/보안/스로틀링에 유용하지만, 현재 병목은 “요청 수락”이 아니라 **백엔드의 큐 소비자 처리량**입니다. 앞단을 바꿔도 초대장 발송 지연은 해소되지 않습니다.
    
- **C. CloudFront 배포 추가**
    - CloudFront는 **정적/캐시 가능한 콘텐츠**의 전송 가속에 유리합니다. 약속 요청은 동적 트래픽이며, 병목은 캐시로 해결할 수 없는 **백엔드 비동기 처리**입니다. 따라서 지연 감소에 직접적 도움이 되지 않습니다.'),
  (204, 204, '- 요구사항
	- S3와 RDS 전반의 데이터 분석 접근
	- 세분화된 권한 관리(테이블/열/행 수준 등)
	- 운영 오버헤드 최소화
- AWS Lake Formation은 S3 기반 데이터 레이크에 대해 중앙집중적 권한 관리(컬럼 수준 권한, LF-Tags 기반 권한, 크로스어카운트 위임 등)를 제공
- Glue Data Catalog를 통해 스키마를 관리하여 Athena/EMR/Redshift Spectrum/Glue 등과 통합되어 일관된 접근 제어를 적용 가능
- Glue JDBC 연결을 통해 RDS 메타데이터를 카탈로그화하거나 ETL 경로로 S3에 적재하여 동일한 거버넌스 모델 하에 제공할 수 있어, 분석 팀별 미세 권한 제어를 일관되게 적용하면서 운영 부담을 낮춤

오답 이유

- **A. RDS로 일원화**
    - RDS는 OLTP에 적합하며 대규모 분석 워크로드/다양한 팀 공유에 비효율적입니다. 세분화된 데이터 거버넌스를 여러 엔진/툴 전반에서 일관되게 제공하기 어렵고, 기존 S3 기반 구매 데이터 이동 자체가 큰 마이그레이션/운영 부담입니다.
    
- **B. RDS→S3 주기 복사 + Athena + S3 정책**
    - 작동은 가능하나, **세분화된 권한 관리**를 S3 버킷/프리픽스 정책만으로 구현하기는 어렵고(특히 **컬럼 수준** 등), 팀/데이터셋 증가 시 정책 복잡도가 급상승합니다. 또한 **복사 잡 관리** 등 운영 오버헤드가 큽니다. Lake Formation의 중앙 거버넌스 기능이 부재합니다.
    
- **D. Redshift로 집계(복사)하고 Redshift 권한 사용**
    - 전용 DW 운영(클러스터/워크로드 관리/용량 계획)이 필요하여 **운영 오버헤드가 큼**. 또한 S3·RDS 원천으로부터 **주기적 복사/동기화 파이프라인** 관리가 필요하며, 모든 팀이 Redshift를 통해서만 접근해야 하는 제약도 생깁니다. S3 데이터 레이크 전반의 **중앙 거버넌스** 요구에는 Lake Formation이 더 적합합니다.'),
  (205, 205, '- 정적 콘텐츠를 드물게 업데이트 & CloudFront 사용을 전제
- 이 상황에서 가장 비용 효율적이고 탄력적인 오리진은 비공개 S3 버킷 + CloudFront OAI(OAC) 패턴
- 서버를 운영할 필요가 없어 운영 오버헤드와 비용이 최소화, S3의 내구성과 가용성으로 탄력성도 높음
- CloudFront에서만 S3에 접근하도록 구성하면 퍼블릭 노출 없이 보안 강화

오답 이유

- **A. Lightsail 가상 서버**
    - 단일 서버 운영(패치/스케일/장애 조치) 부담이 생기며, S3보다 탄력성과 내구성이 낮습니다. 정적 사이트에 서버를 유지하는 것은 비용·운영 측면에서 비효율적입니다.
    
- **B. EC2 Auto Scaling + ALB**
    - 정적 문서 제공에 과도한 아키텍처입니다. 인스턴스/ALB 비용과 관리 복잡도가 증가하며, S3+CloudFront 대비 비용 효율이 떨어집니다.
    
- **D. 퍼블릭 S3 + AWS Transfer for SFTP + S3 웹사이트 호스팅**
    - Transfer Family를 추가하면 불필요한 비용이 늘고, 버킷을 퍼블릭으로 열고 S3 웹사이트 엔드포인트를 구성할 필요가 없습니다(CloudFront가 오리진으로 직접 S3를 사용). 보안·비용 측면에서 C보다 열등합니다.'),
  (206, 206, '- CloudTrail은 관리 이벤트를 EventBridge로 실시간 전달할 수 있고 EventBridge 규칙에서 CreateImage(EC2의 AMI 생성) API 호출 이벤트 패턴을 매칭해 바로 SNS로 알림 전송 가능
- 풀링/배치 쿼리/저장소 관리가 필요 없고, 완전관리형 서비스 간 이벤트 라우팅 만으로 동작하므로 운영 오버헤드 최소화

오답 이유

- **A. CloudTrail 로그를 Lambda로 주기 쿼리**
    - S3/CloudWatch Logs에 적재된 로그를 **주기적으로 스캔**해야 하며, 지연과 비용, 운영 복잡도가 증가합니다. 실시간성도 C보다 떨어집니다.
    
- **B. CloudTrail→S3+SNS 알림 후 Athena 쿼리**
    - S3 적재, Glue/스키마 관리, Athena 쿼리 트리거링 등 **구성 요소가 많아 운영 오버헤드가 큼**. 단순 알림 목적에 과도합니다.
    
- **D. CloudTrail 로그의 대상으로 SQS FIFO 구성**
    - CloudTrail은 로그 배송 대상으로 **S3/CloudWatch Logs**를 지원하며, **직접 SQS로 로그를 전달하지 않습니다**. 이벤트 기반 실시간 알림은 EventBridge를 통해 처리하는 것이 표준 패턴입니다. 또한 FIFO까지 요구할 이유가 없습니다.'),
  (207, 207, '- SQS를 수신(ingest) 경로와 DynamoDB 사이의 버퍼로 두면, 트래픽 스파이크로 인한 DynamoDB 쓰기 제한(프로비저닝/온디맨드 상관없이)에도 요청을 내구성 있게 적재하고 자동 재시도와 배치 쓰기로 백엔드 압력을 완화
- 람다(소비자)는 SQS를 이벤트 소스로 사용해 배치 크기/가시성 타임아웃/최대 동시성을 조정하여 테이블 쓰기 처리량에 맞춰 탄력적으로 처리율 조절
- 필요시 DLQ로 실패 메시지를 보존해 추가 손실을 방지

오답 이유

- **A. API Gateway 스로틀링 추가**
    - 스로틀링은 백엔드 보호에는 유용하지만 **요청 자체를 제한/거절**하여 **유실**을 유발할 수 있습니다. 문제의 핵심은 **버퍼링과 내구성**이며, 스로틀링만으로는 유실 방지 불가.
    
- **B. DAX로 버퍼링**
    - DAX는 **읽기 지연을 줄이는 인메모리 캐시**로, **쓰기 버퍼링이나 쓰기 처리량 문제를 해결하지 않습니다**. DynamoDB에 대한 **쓰기** 병목 및 유실 방지와 무관.
    
- **C. 보조 인덱스(GSI) 생성**
    - GSI는 **추가 쓰기 용량을 소비**하여 오히려 쓰기 병목을 악화시킬 수 있습니다. 인덱스는 조회 패턴 최적화용이지, **유실 방지/버퍼링** 솔루션이 아닙니다.'),
  (208, 208, '- 인터페이스 VPC 엔드포인트(PrivateLink for S3)를 사용하면 S3 API 트래픽이 VPC 내부의 프라이빗 ENI를 통해 이루어져 공용 인터넷을 경유하지 않음
- S3 버킷 정책에서 Principal을 EC2 인스턴스의 IAM 역할로 제한하고, 필요하면 aws:SourceVpce 조건으로 특정 인터페이스 엔드포인트에서만 접근하도록 제한해 "오직 EC2 인스턴스만 업로드"를 강제 가능

오답 이유

- **B. 게이트웨이 VPC 엔드포인트 + 보안 그룹 연결**
    - **게이트웨이 VPC 엔드포인트(S3, DynamoDB)** 는 **보안 그룹을 연결하지 않습니다**(라우팅 테이블에 엔드포인트 대상으로 경로를 추가). 또한 “가용 영역 단위”로 만들지 않습니다(라우팅 테이블/서브넷 범위). 기술적으로 틀린 설명이 포함되어 부적절합니다.
    - (참고) 게이트웨이 엔드포인트 자체는 요건을 충족할 수 있지만, 보기의 서술이 잘못되어 정답으로 보기 어렵습니다.
    
- **C. nslookup으로 프라이빗 IP 확인 후 라우팅**
    - S3는 **가상 호스팅/퍼블릭 엔드포인트** 형태이며, 특정 “프라이빗 IP”를 조회해 VPC 라우트에 수동 등록하는 방식은 지원되지 않습니다. S3에 사설로 접근하려면 **VPC 엔드포인트**를 사용해야 합니다.
    
- **D. ip-ranges.json으로 프라이빗 IP 얻어 라우팅**
    - ip-ranges.json은 **퍼블릭** IP 범위를 제공합니다. S3에 사설 경로를 만들 목적으로 라우팅 테이블에 직접 추가하는 방식은 동작하지 않습니다. 역시 **VPC 엔드포인트**가 정식 방법입니다.'),
  (209, 209, '- EC2 인스턴스가 수시로 스케일 인/아웃 되는 환경에서는 세션 데이터를 인스턴스 로컬 메모리에 저장하면 인스턴스 종료 시 데이터 유실
- 분산 세션 관리를 위해 세션 데이터를 중앙에서 관리 가능한 저장소에 두는 것이 필요
- Amazon ElastiCache (Redis/Memcached) 는 빠른 인메모리 캐시 저자이소로서 세션 데이터를 저정하고 여러 EC2 인스턴스에서 공유 가능
- 코드에서 세션 저장 위치를 ElastiCache로 변경하면, 어떤 인스턴스가 요청을 처리하더라도 동일한 세션 데이터를 참조

오답 이유

- **B. ALB 스티키 세션(Session Affinity)**
    - 특정 사용자를 항상 같은 인스턴스로 라우팅하지만, **인스턴스 종료/축소 시 세션 데이터 유실** 문제가 발생합니다. 인스턴스 수명이 짧고 빈번히 변경되는 환경에서는 적절하지 않습니다.
    
- **C. Systems Manager Session Manager**
    - 이는 **운영자가 EC2 인스턴스에 접속**하기 위한 도구로, 애플리케이션 사용자 세션 관리와는 무관합니다.
    
- **D. AWS STS GetSessionToken**
    - STS는 **IAM 인증 토큰 발급**을 위한 서비스로, 애플리케이션의 웹 세션 관리에는 사용되지 않습니다'),
  (210, 210, '- 단계가 분리된 비동기 처리(수집 -> 이행)에서는 SQS로 디커플링하여 내구성 있게 버퍼링
- 처리 시간이 더 긴 이행 단계는 백로그(대기 메시지) 규모에 맞춰 탄력적으로 스케일
- 인스턴스당 백로그(Backlog per instance) 지표(예: ApproximateNumberOfMessagesVisible / 현재 소비자 인스턴스 수)를 만들어 타깃 추적 스케일리 적용
- SQS는 최소 1회 전달, 가시성 타임아웃, DLQ로 데이터 손실 방지 보장

오답 이유
- **A. CPU 기반 + 최소 용량 피크 고정**
    - CPU는 큐 백로그와 직접 상관이 없고, 피크에 맞춘 **과잉 프로비저닝**으로 비용이 증가합니다. 워크로드 변화에 따른 탄력적 확장이 어렵습니다.
    
- **B. SNS로 추가 Auto Scaling 그룹 생성**
    - Auto Scaling 그룹을 **여러 개 동적으로 추가**하는 방식은 불필요하게 복잡하고 운영 오버헤드가 큽니다. 또한 CPU 기반 모니터링은 큐 적체를 직접 반영하지 못합니다.
    
- **C. 큐 알림 기반 스케일링**
    - SQS는 **본질적으로 알림을 “푸시”하지 않으며**(별도 설정 없이), 표준적인 스케일 트리거는 **CloudWatch 큐 지표**입니다. “알림”만으로는 정교한 스케일 기준(백로그/인스턴스)을 구현하기 어렵습니다.'),
  (211, 211, '- AWS Resource Groups Tag Editor는 태그 기반으로 여러 리전과 서비스 전반의 리소스를 검색할 수 있는 도구
- "application"이라는 키로 태깅된 리소스를 빠르게 전역 조회할 수 있으며, EC2, Lambda, RDS, SNS, SQS 등 주요 서비스가 지원
- 추가적인 로그 분석이나 수동 반복 쿼리 없이도 콘솔/CLI에서 바로 태그 기반 검색이 가능

오답 이유

- **A. CloudTrail**
    - CloudTrail은 **API 호출 기록**을 남기는 서비스이지, 태그된 리소스 자체 목록을 생성하지 않습니다. 태그 쿼리를 위한 솔루션이 아님.
    
- **B. AWS CLI**
    - 각 서비스/리전을 반복적으로 호출해 태그 정보를 수집할 수는 있지만, **시간과 운영 오버헤드가 크다**는 문제가 있습니다. “가장 빠른 방법” 조건에 맞지 않음.
    
- **C. CloudWatch Logs Insights**
    - 이는 **로그 분석 도구**로, 태그 기반 리소스 검색을 지원하지 않습니다. 태그된 리소스 보고 목적과 맞지 않습니다.'),
  (212, 212, '- 데이터 엑세스 패턴이 가변적이고 빠르게 변함 -> 어떤 날은 자주 읽고, 어떤 날은 거의 읽지 않을 수도 있음
- Intellignet-Tiering은 자동으로 자주 액세스되는 객체는 Frequent Access 티어에, 드물게 액세스 되는 객체는 Infrequent Access 티어로 이동
- 추가적인 운영 오버헤드 없이 비용 최적화가 가능하며 모든 티어에서 즉시 접근 가능
- Glacier Instant Retrieval은 저비용이지만 장기간 보관 및 드문 액세스에 적합하며, 빠르게 변하는 액세스 패턴에는 적합하지 않음
- Standard는 무조건 빠르지만 비용 최적화 측면에서 불리하고, Standard-IA는 최소 스토리지 기간(30일)과 접근 비용이 있으므로 빠르게 변하는 액세스 패턴에 적합하지 않음

오답 이유

- **B. S3 Glacier Instant Retrieval**
    - 즉시 액세스 가능하긴 하지만 **주 용도는 장기 보관 + 드문 액세스 데이터**. 매일 내보낸 후 팀들이 자주/불규칙적으로 접근할 수 있는 데이터에는 적합하지 않음.
    
- **C. S3 Standard**
    - 항상 즉시 접근 가능하지만, **비용 최적화** 요구사항을 만족하지 못함. Intelligent-Tiering이 더 저렴하게 동일 성능 제공.
    
- **D. S3 Standard-IA**
    - 드문 액세스에는 좋지만, **액세스 패턴이 자주 바뀌는 경우**(즉, 빈번히 접근하는 날이 있으면) retrieval 비용이 증가해 비용 최적화 실패.'),
  (213, 213, '- AWS WAF는 ALB와 네이티브 통합되며, SQLi/XSS 등 애플리케이션 계층(L7) 공격을 차단하는 관리형 규칙(Managed Rule Groups) 을 제공해 운영 부담을 최소화
- 서버를 직접 운영/패치할 필요가 없는 완전관리형 서비스로 회사의 "서버 관리 책임을 줄이는" 요구에 충족
- 규칙 업데이트(서명/패턴)는 AWS가 관리하므로 지속적인 보안 업데이트를 손쉽게 적용 가능

오답 이유

- **B. S3 정적 호스팅**
    - 정적 웹 호스팅용이며, 모바일 앱 백엔드(동적 API)를 대체하지 못합니다. 또한 **애플리케이션 레벨 방어** 기능(규칙 기반 필터링)을 제공하지 않습니다.
    
- **C. AWS Shield Advanced**
    - 주로 **DDoS 보호**(L3/L4 및 일부 L7 가용성 보호)에 특화. SQLi/XSS 같은 **애플리케이션 취약점 악용** 차단은 **WAF의 역할**입니다. 요구사항과 다릅니다.
    
- **D. 서드파티 방화벽 EC2**
    - 별도 EC2/ALB/라우팅 구성으로 **운영·패치·확장 책임이 증가**합니다. “운영 부담 최소화, 서버 관리 책임 축소” 요구에 반합니다.'),
  (214, 214, '- AWS Glue는 서버리스 ETL 서비스로 Glue Studio/워크플로 마법사를 통해 CSV -> Parquet 변환 파이프라인을 거의 코드 없이 구성 가능 => 최소 개발 노력
- Glue Crawler가 S3의 CSV를 스캔해 스키마를 자동으로 추론하여 Data Catalog에 등록 => 스키마 자동 인식
- Glue ETL(Job/Built-in transform)에서 출력 포맷을 Parquet로 지정하고 압축 코덱(snappy 등)도 선택 가능 => 내장 변환 & 출력 포맷 선택
- 서버/클러스터 관리가 필요 없고, 스케줄/트리거로 일단위 실행을 쉽게 자동화 => 운영 부담 낮음

오답 이유

- **A. EMR + Spark 애플리케이션**
    - 가능은 하지만 **클러스터 관리(프로비저닝/스케일/패치)** 와 **코드(스파크 잡) 작성**이 필요해 개발·운영 부담이 큼. “가장 적은 개발 노력” 조건에 부적합.
    
- **C. AWS Batch + Bash 스크립트**
    - 컨테이너 이미지 준비, 스크립트 작성, 실패 재시도/로깅 등 **파이프라인 구성 요소를 직접 관리**해야 함. CSV→Parquet 변환을 Bash로 처리하려면 별도 툴 설치가 필요해 구현 복잡도↑.
    
- **D. S3 이벤트 → Lambda 변환**
    - Parquet 변환에는 **파서/라이브러리 번들링**이 필요하고, **메모리/실행 시간(최대 15분)/패키지 크기** 제약으로 대용량 파일(2–5GB) 처리에 부적합. 멀티파트/스트리밍 처리 구현도 복잡하여 개발 노력이 큼.'),
  (215, 215, '- 전송 기한 1개월 vs 500Mbps 회선: 500 Mbps(약 62.5MB/s)로 30일 풀 가동시 전송 가능한 용량은 대략 ~160TB 수준으로 700TB를 1개월 내 전송하기에는 현저히 부족
- 대용량/단기간 마이그레이션에는 AWS Snowball(오프라인 전송)이 표준 해법
	- 여러 대의 Snowball Edge 디바이스를 병렬 사용해 700TB를 물리적으로 반출입해 한달 내 완료
- 저장 비용 최소화 요구에는 S3에 적재 후 라이프사이클 정책으로 S3 Glacier Deep Archive 전환이 최적(장기 보관, 드문 액세스, 최저 스토리지 비용, 필요 시 복구 가능)

오답 이유

- **B. VPN 통해 인터넷 전송 + S3 Glacier로 직접 복사**
    - 500 Mbps로는 1개월 내 **700 TB 전송 불가**. 또한 “S3 Glacier로 직접 업로드”라는 개념은 S3의 스토리지 클래스 지정일 뿐이며, 네트워크 병목 문제를 해결하지 못합니다.
    
- **C. 신규 500 Mbps Direct Connect 구축**
    - DX 신규 회선은 **개통 리드타임이 길어** 1개월 내 마이그레이션 완료가 현실적으로 어렵습니다. 또한 500 Mbps 대역폭 자체도 **용량/기간 제약**을 해소하지 못합니다(여전히 700 TB에 부족).
    
- **D. AWS DataSync로 온라인 전송**
    - DataSync는 관리형 전송 서비스지만 **기반 대역폭 한계(500 Mbps)** 는 동일합니다. 1개월 내 700 TB 전송 요건을 충족하지 못합니다. (또한 일반적으로 DataSync는 S3 버킷으로 전송 후 필요 시 수명 주기로 Glacier 계열로 전환하는 패턴이 보편적입니다.)'),
  (216, 216, '- 미래 객체 : 버킷의 기존 암호화를 켜면 이후 업로드되는 모든 객체가 자동으로 서버측 암호화(SSE-S3 또는 SSE-KMS)
- 기존 객체 : 이미 업로드된 객체는 기본 암호화를 켜도 소급 적용되지 않음
	- 따라서 S3 인벤토리로 암호화되지 않은 객체 목록을 생성
	- S3 Batch Operations의 Copy(자기 자신으로 복사) 작업을 실행해 메타데이터/암호화 재지정을 통해 암호화를 적용

오답 이유

- **A. 새 버킷 생성 후 다운로드/재업로드**
    - 대량(수백만 객체)의 **다운로드/재업로드는 비효율적**이며 비용·시간·운영 오버헤드가 큼. CloudFront 오리진 변경 등 부수 작업도 증가.
    
- **C. SSE-KMS로 버킷 설정 변경 + 버저닝**
    - **기존 객체는 여전히 암호화되지 않은 상태**로 남습니다. 버저닝은 목적과 무관. 기존 객체에 암호화를 적용할 별도 처리(복사)가 없으므로 미완.
    
- **D. 콘솔에서 수동 수정**
    - 수백만 객체에 대해 **수작업은 현실적으로 불가능**. 또한 “Modify”만으로 기존 객체의 암호화를 일괄 소급 적용할 수 없습니다(복사/재쓰기 필요).'),
  (217, 217, '- 요구사항 : 1. 최대 30분 RTO/RPO 허용, 2. 평소에는 보조 리전이 부하를 처리할 필요 없음
- 액티브-패시브 + 교차 리전 Aurora 리플리카(프로모션 가능)는 수분~수십 분 내 애플리케이션과 DB를 승격하여 RTO≈30분 이내 달성이 현실적
- 리플리카의 비동기 복제 특성상 일정 수준의 데이터 손실(RPO)도 허용 범위에 부합
- EC2, ALB, 보조 리전에 필요한 구성요소를 미리 준비하고 Route 53 헬스체크/페일오버로 전환하면 운영 간소성과 전환 속도를 동시 확보 가능

오답 이유

- **B (액티브-액티브 + 축소 배포)**: 액티브-액티브는 **불필요한 비용/복잡도**. 문제에서 “프라이머리가 건강할 때 보조가 부하를 처리할 필요가 없다”고 했으므로 **액티브-패시브**가 맞습니다.
    
- **C (완전 복제 + 액티브-액티브 + 스냅샷 복원)**: 스냅샷 복원은 **RTO가 길어질 가능성**이 높고, 액티브-액티브 요구도 아님.
    
- **D (AWS Backup 복구 + 패시브)**: 백업에서 **인프라와 DB를 새로 띄우는 콜드 스타트**는 보통 **30분 RTO 충족이 어려움**. 또한 “Aurora 두 번째 프라이머리 인스턴스”라는 개념은 부정확.'),
  (218, 218, '- 보안 그룹: 웹 서버는 인바운드 HTTPS(443) 트래픽을 허용해야 하므로 0.0.0.0/0 소스에서 TCP 443을 허용하는 규칙 필요
- 네트워크 ACL: NACL은 stateless이므로 인바운드와 아웃바운드 규칙을 각각 명시
	- 인바운드: 포트 443 허용 (소스 0.0.0.0/0)
	- 아웃바운드: 응답 트래픽은 클라이언트의 임시 포트(ephemeral ports: 클라이언트 측에서 응답을 받을 때 사용하는 임시 포트, 32768-65535 범위)를 사용하므로 해당 범위를 허용

오답 이유

- **B. SG에 “대상 0.0.0.0/0” 규칙**
    - 보안 그룹 규칙은 **대상(destination)** 이 아닌 **소스(source)** 기준으로 정의합니다. 잘못된 옵션.
    
- **C. NACL 인바운드만 허용**
    - NACL은 **stateless**라서 아웃바운드 응답이 없으면 연결 성립 불가. 불완전한 설정.
    
- **D. NACL에서 인/아웃 모두 443 허용**
    - 아웃바운드 응답 트래픽은 클라이언트의 임시 포트를 사용하므로 단순히 443 허용으로는 **응답 불가**. 올바른 방법은 ephemeral 포트 범위 허용(E).'),
  (219, 219, '- 문제의 핵심은 stateful + in-memory 작업으로 CPU보다 메모리 용량/대역이 병목일 가능성이 큼
- 따라서 범용(M5)보다 메모리 최적화형(R5)로 변경하는 것이 직접적인 성능 개선책
- 동시에 운영 효율성을 요구하므로 CloudFormation 템플릿 수정으로 IaC 기준을 유지하고, CloudWatch Agent를 배포해 메모리/애플리케이션 지연(custom matric)을 수집하면 이후 데이터 기반 용량 계획 가능
- Ec2의 메모리 지표는 기본 내장되어 있지 않기 때문에(Agent 필요), D 항목처럼 에이전트를 통한 수집이 맞음

오답 이유

- **A. T3로 교체 + 콘솔 변경**
    - T3는 **버스터블 인스턴스**로 지속 고부하/메모리 집약 워크로드에 부적합하며 버스트 크레딧 소진 시 성능 저하. 또한 콘솔 수동 변경은 **운영 효율성(IaC)** 측면에서 부정적.
    
- **B. ASG로 수평 확장 + 수동 증설**
    - 애플리케이션이 **stateful**이라 수평 확장이 쉽지 않을 수 있고, **수동으로 용량 조절**은 운영 부담이 큼. in-memory 병목 자체 해결책이 아님.
    
- **C. R5 교체 + “기본 제공” 메모리 지표 사용**
    - EC2에는 **기본 메모리 지표가 제공되지 않습니다.** 메모리/애플리케이션 지표는 **CloudWatch Agent** 등으로 **커스텀 수집**해야 하므로 전제 자체가 틀렸습니다.'),
  (220, 220, '- 요청이 드물게 발생하고 몇 시간 동안 0 트래픽일 수 있으므로 유휴 시간에 비용이 들지 않는 서버리스, 스케일-투-제로 모델이 최적
- AWS Lambda는 초당 과금(밀리초 단위)과 자동 확장으로 비용 효율이 높고, 비동기 처리에서도 수 초 내 완료가 가능한 필요한 짧은 작업에 적합
- API Gateway와의 네이티브 통합으로 간단히 연동되고 필요 시 비동기 호출(Invoke async) 또는 SQS 이벤트 기반으로 버퍼링 가능

오답 이유

- **A. AWS Glue 작업**
    - Glue는 서버리스 ETL 배치 중심으로 **초 단위 응답** 요구에 부적합하며, **작업 기동 지연**과 최소 실행 시간 과금이 있어 비용/지연 모두 불리합니다.
    
- **C. Amazon EKS 컨테이너 서비스**
    - 강력한 오케스트레이션이 장점이나, **클러스터 제어 플레인 및 노드 유지 비용/운영 오버헤드**가 존재합니다. 몇 시간 무트래픽 상황에서 **상시 비용**이 발생할 수 있습니다.
    
- **D. Amazon ECS on EC2**
    - EC2 기반은 **인스턴스 상시 기동 비용**이 들며, 0 트래픽 구간에도 비용이 발생합니다. 요구사항의 “최저 비용” 및 **변동 트래픽**에 덜 적합합니다. (참고: Fargate였다면 상시 비용은 줄지만 보기에는 EC2와 함께라고 명시)'),
  (221, 221, '- 7년 장기 보관 + 높은 내구성/가용성 + 대규모 동시 접근 요구는 S3가 최적
- S3는 객체 단위로 무제한 병렬 읽기가 가능해 리포팅 도구의 동시 접근 요구 충족
- 저비용(특히 S3 Standard -> 수명주기 정책으로 IA/Glacier 계열 전환)으로 장기 보관 비용 크게 절감 가능

오답 이유

- **A. Amazon EBS**
    - 개별 EC2 인스턴스에 종속되며, 여러 인스턴스가 **동시에 동일 볼륨을 마운트하여 읽기**하는 데 제약이 큼(멀티어태치도 한계). 장기 보관 비용도 S3 대비 불리.
    
- **B. Amazon EFS**
    - 다중 EC2 동시 접근에는 적합하지만, **GB당 비용이 S3보다 높음**. 7년 장기 보관 요건에서는 비용 비효율적.
    
- **C. EC2 인스턴스 스토어**
    - **비영구(ephemeral)** 스토리지로 인스턴스 중지/종료 시 데이터 손실. 7년 보존 불가.'),
  (222, 222, '- 크로스 계정 액세스의 올바른 방식은 신뢰 정책을 사용해 다른 계정(벤더 계정)에서 역할을 AssumeRole 할 수 있도록 허용하는 것
- 회사 계정에서 역할을 생성하고, 벤더 계정의 IAM 주체(역할/사용자)를 신뢰 주체로 지정하면 벤더의 자동화 도구가 해당 역할을 Assume 하여 필요한 권한을 위임받을 수 있음
- 이 방식은 비밀번호/액세스 키 공유 불필요, 세분화된 권한 위임 가능, 중앙화된 관리가 가능하므로 AWS 모범 사례

오답 이유

- **B. IAM 사용자 생성 후 비밀번호 공유**
    - 벤더에 직접 IAM 사용자 자격 증명을 제공하는 것은 **보안 위험**이며 AWS 모범 사례 위배. 액세스 키/비밀번호 관리 부담도 증가.
    
- **C. IAM 그룹에 외부 사용자 추가**
    - **외부 AWS 계정의 사용자/역할을 직접 그룹에 추가할 수 없음.** IAM 그룹은 동일한 AWS 계정 내 사용자만 가능.
    
- **D. ID 공급자로 “AWS 계정” 사용**
    - ID 공급자 방식은 **SAML/OIDC** 연동용이며, 단순한 **AWS 계정 간 권한 위임**에는 사용하지 않음. 불필요하게 복잡.'),
  (223, 223, '- IAM 역할을 파드에 연결: EKS에서는 IRSA(IAM Roles for Service Accounts)를 사용해 쿠버네티스 서비스 어카운트에 IAM 역할을 바운딩함으로써 파드에 임시 자격 증명을 안전하게 주입 가능
	- 이 역할에 DynamoDB에 대한 최소 권한(예: dynamodb:PutItem, UpdateItem 등)을 부여하면 애플리케이션이 안전하게 테이블 접근 가능
- DynamoDB용 VPC 엔드포인트 생성: DynamoDB는 게이트웨이 VPC 엔드포인트를 지원
	- 프라이빗 서브넷의 라우트 테이블에 엔드포인트 대상으로 경로를 추가하면 트래픽이 NAT 게이트웨이/인터넷 게이트웨이 없이 VPC 내부 경로로 DynamoDB에 도달하므로 인터넷 노출 없음

오답 이유

- **B. IAM 사용자 연결**: 파드에 IAM 사용자를 “연결”하는 개념은 없고, 장기 키(Access key/Secret) 사용은 보안상 비권장입니다. EKS에는 **IRSA**가 모범 사례입니다.
    
- **C. NACL 아웃바운드 허용**: NACL만 열어도 **라우팅이 인터넷(예: NAT GW)으로 나가면** 여전히 공용 엔드포인트로 통신합니다. 요건은 “인터넷 노출 없이”이므로 **게이트웨이 VPC 엔드포인트**가 필요합니다. 또한 NACL 기본 허용 상태라면 별도 변경이 필수도 아닙니다.
    
- **E. 코드에 키 임베드**: 하드코딩된 액세스 키는 유출 위험이 크고 롤오버/감사도 어렵습니다. AWS 베스트 프랙티스에 위배되며 요건(보안/운영 효율)에도 부적합합니다.'),
  (224, 224, '- Route 53의 다중값 응답 라우팅은 레코드마다 헬스 체크를 붙여 건강한 여러 IP(인스턴스)를 응답으로 반환하고, DNS 리졸버가 무작위로 선택하도록 해 "실행 중인 모든 인스턴스로 무작위 분산" 요구 충족
- 두 개의 가용 영역에 대칭(2+2)로 배치하면, 단일 AZ 장애 시에도 각 AZ에 적어도 한 대 이상이 남아 고가용성과 장애 허용을 극대화

오답 이유

- **A. Failover 라우팅**: 1차(프라이머리)와 2차(세컨더리) 엔드포인트 간 **전환**에 초점이 있어, 모든 실행 중 인스턴스로 **무작위 분산**하지 않습니다.
    
- **B. Weighted 라우팅**: 가중치에 따라 트래픽을 분배하는 용도로 **랜덤 균등 분산** 요건과 직접적이지 않습니다(헬스 체크와 조합 가능하나, 요구사항의 “무작위로 모든 실행 인스턴스”에는 multivalue가 더 적합).
    
- **D. 2+1 배치**: 다중 AZ이긴 하나 한 AZ 장애 시 **1대만 남는** 불균형 구조로, **E(2+2)** 대비 내구성과 처리 여유가 떨어집니다.'),
  (225, 225, '- 페타바이트 규모의 원시 이벤트/활동 로그는 Amazon S3에 적재하는 데이터 레이크가 가장 비용 효율적이며 내구성인 높음
- Kiensis(Streams/Firehose)를 프런트 수집 계층으로 사용하면 고가용성/확장성으로 대량 스트림 데이터를 버퍼링, 전송할 수 있고 운영 오버헤드가 낮은 서버리스 구성이 가능
- S3에 적재된 데이터는 Amazon Athena(서버리스 Presto/Trino 기반)로 온디맨드 SQL 분석(기존+신규 데이터)을 즉시 수행 가능해 클러스터 관리 부담이 없음

오답 이유

- **B. Firehose → Redshift**
    - Redshift는 강력한 DW지만 **클러스터(또는 서버리스 설정) 관리/튜닝**이 필요하고 저장 비용도 큽니다. 페타바이트급 장기 원시 로그와 **온디맨드 분석**에는 **S3+Athena**가 더 **운영 오버헤드가 낮고 비용 효율적**입니다.
    
- **C. S3 + S3 이벤트 Lambda**
    - 단순 도착 트리거는 가능하지만 **수집 파이프라인(버퍼링/재시도/스루풋 제어)** 로서의 기능이 부족합니다. 또한 SQL 분석 경로(Athena 등)가 제시되지 않아 요건 충족이 불명확합니다.
    
- **D. EC2 수집 서비스 + RDS**
    - 자체 수집 서비스를 EC2로 운영하면 **운영 부담**이 크고, RDS는 **페타바이트 규모**의 원시 로그 저장 및 동시 분석에 부적합합니다.'),
  (226, 226, '- API Gateway -> Kinesis Data Streams -> Kinesis Data Firehose -> S3
	- 수백만 디바이스로 확장되는 수집 계층을 완전관리형·서버리스로 전환
	- API Gateway가 대규모 REST 수신을 처리하고, Kinesis Data Streams가 탄력적으로 버퍼링/스루풋을 흡수, Firehose가 운영 없이 자동 배치/재시도/압축/파티셔닝으로 S3 데이터 레이크에 적재
- AWS Glue on S3 : 적재된 원시 데이터를 서버리스 ETL로 변환/정제해 분석 가능한 포맷(Parquet)로 저장. 크롤러+작업(ETL)로 스키마 추론과 배치 처리를 자동화해 운영 오버헤드 최소화
오답 이유

- **B. Route 53 로드 분산**: DNS 레벨 라우팅은 EC2 인스턴스 앞에서 일부 트래픽 분산을 돕지만, **수집/처리 파이프라인의 근본 확장성/내고장성**을 해결하지 못합니다. 운영 부담도 해소되지 않습니다.
    
- **C. EC2 수평 확장**: 인스턴스 증설은 **용량 계획/오토스케일/패치/모니터링** 등 운영 복잡도를 키우며, 수백만 디바이스 규모에는 비효율적입니다.
    
- **D. SQS + EC2 처리**: 큐로 버퍼링은 좋지만, 여전히 **EC2 기반 워커 운영**(스케일, AMI 관리, 보안 패치 등)이 필요해 **운영 오버헤드**가 큽니다. 서버리스 대안(E, A)이 더 적합합니다.'),
  (227, 227, '- 버킷에 S3 버전 관리가 활성화되어 있고, 라이프사이클 정책은 현재 버전만 3년 후 삭제 -> 이전 버전은 계속 남아 객체 수가 증가
- 따라서 라이프사이클 규칙에 이전 버전 삭제를 추가해 3년 경과 이전 버전도 자동 삭제
- 완전관리형·무서버·추가 비용 거의 없음으로 가장 비용 효율적이고 운영 오버헤드가 낮음

오답 이유

- **A. CloudTrail 트레일에서 만료 설정**
    - CloudTrail은 S3에 전달된 객체의 **보존/삭제를 직접 관리하지 않습니다.** 데이터 수명 관리는 **S3 Lifecycle**로 수행해야 합니다.
    
- **C. Lambda로 나이 든 객체 열거/삭제**
    - 가능은 하지만 **주기 실행·권한·리트라이·비용** 등 운영 오버헤드가 증가합니다. S3 Lifecycle이 제공하는 **네이티브 기능을 중복 구현**하는 셈이므로 비효율적입니다.
    
- **D. 상위 계정을 객체 소유자로 설정**
    - 객체 소유권은 **삭제 누락의 근본 원인(버전 관리로 인한 이전 버전 잔존)** 을 해결하지 못합니다. 여전히 이전 버전은 남습니다.'),
  (228, 228, '- SQS를 버퍼로 사용하면 급증하는 쓰기 부하를 흡수하여 데이터 손실 없이 내구성 있게 적재 가능
- SQS 이벤트 소스의 람다는 배치 처리와 동시성 제어가 가능해, 데이터베이스로 가는 동시 연결 수를 크게 줄이고 안정적으로 쓰기 작업 수행
- 이 구조는 API와 DB를 비동기로 디커플링해 타임아웃을 완화하고 스파이크에 탄력적 대응

오답 이유

- **A. 인스턴스 사이즈 업**: 순간 스파이크나 커넥션 폭증 문제의 근본 원인(버퍼 부재)을 해결하지 못합니다. 연결 최소화·데이터 손실 방지 요구도 직접 충족하지 못합니다.
    
- **B. Multi-AZ로 변경 후 다중 쓰기**: 전통적 RDS Multi-AZ 배포는 **단일 writer/동기 스탠바이**이며 “모든 활성 인스턴스에 쓰기”는 개념적으로 잘못입니다. 가용성은 향상되지만 **쓰기 처리량/연결 수 문제**를 해결하지 못합니다.
    
- **D. SNS 사용**: SNS는 퍼브/섭 알림 서비스로 **큐잉·백로그 관리에 최적이 아님**(일시적 실패 재시도는 있으나 큐의 내구성/컨슈머 풀링이 아님). 스파이크 흡수·배치/동시성 제어 측면에서 **SQS+Lambda**가 더 적합합니다.'),
  (229, 229, '- 기존 MySQL 호환성을 유지하면서 자동/탄력 스케일링으로 용량 증감이 간편
- 복제, 고가용성, 내구성(다중 AZ에 6중 복제 스토리지)은 관리형으로 제공되어 운영 부담이 크게 감소
- 연결 처리와 읽기 확장(리더 엔드포인트) 등 성능･확장성이 표준 MySQL on EC2 대비 우수하며 수요 변화에 맞춘 세밀한 용량 조정이 가능

오답 이유

- **B. Aurora Serverless for PostgreSQL**: PostgreSQL 엔진으로의 **이기종 마이그레이션**이며, 문제에서 MySQL 워크로드 유지가 전제되어 적합하지 않습니다.
    
- **C. 더 큰 EC2로 수직 확장**: 수동 운영(복제/백업/장애조치) 부담이 계속되고, 단일 노드 의존도 증가로 **확장성·내구성** 측면에서 한계가 있습니다.
    
- **D. EC2 Auto Scaling으로 DB 계층 구성**: 상태ful DB는 단순 ASG로 해결되지 않습니다(데이터 복제/일관성/페일오버/백업 등 직접 관리 필요). 운영 복잡도와 리스크가 큽니다.'),
  (230, 230, '- NAT 게이트웨이는 AWS 관리형으로 자동 확장, 고가용성, 내결함성을 제공하여 운영 부담이 거의 없음
- 각 가용 영역(AZ)에 NAT 게이트웨이를 배치하고, 해당 AZ의 프라이빗 서브넷 라우트를 동일 AZ의 NAT 게이트웨이로 지정하면 AZ 장애 시 영향 구획화와 신속한 복구가 가능
- NAT 인스턴스 대비 패치/용량 계획/장애 조치 등을 직접 관리할 필요가 없어 요구사항(HA, FT, Auto scaling, 운영 최소화)에 가장 부합

오답 이유

- **A. 동일 AZ에 2개 NAT 게이트웨이**
    - 동일 AZ에만 배치하면 **AZ 장애** 시 단일 장애 지점(SPOF)이 됩니다. 고가용성 요구를 충족하지 못합니다.
    
- **B. NAT 인스턴스 + NLB + ASG**
    - 구현 가능하나 NAT 인스턴스는 **수동 확장/패치/헬스체크/장애조치** 등 **운영 오버헤드**가 큽니다. “자동 확장되는 관리형” 요건과 거리가 멉니다.
    
- **D. 스팟 인스턴스 + NLB**
    - 스팟은 **중단 가능성**이 있어 NAT 용도로 부적합합니다. 또한 관리/확장 복잡성과 가용성 리스크가 큽니다.'),
  (231, 231, '- VPC피어링은 두 VPC 간에 사설 IP 기반의 직접, 암호화되지 않은(필요 시 별도 옵션) 프라이빗 라우팅을 제공
- 같은 계정･리전이라면 설정이 간단하고, 보안 그룹/라우팅 테이블만으로 인테닛을 통하지 않고 DB 접근 가능
- 동일 계정･리전 조건에서 피어링된 VPC 간 보안 그룹 참조를 사용할 수 있어 최소 권한의 네트워크 접근 제어 가능

오답 이유

- **A. 공용 IP 기준 허용**
    - 트래픽이 **인터넷(공인 경로)** 을 통과하므로 노출 면적이 커지고, NAT/경로 변화에 취약합니다. 사설 통신 요건에 부적합.
    
- **C. DB를 퍼블릭으로 노출**
    - 가장 위험한 선택입니다. DB에 공용 IP를 부여하면 공격 표면이 급격히 증가합니다.
    
- **D. 프록시 EC2 + EIP**
    - 불필요한 컴퓨팅/운영 오버헤드를 추가하고, 여전히 공용 경로 사용 가능성이 큽니다. 피어링의 단순·보안성 대비 열등합니다.'),
  (232, 232, '- VPC Flow Logs는 ENI 단에서의 네트워크 연결(소스/목적지 IP･포트, 프로토콜, ACCEPT/REJECT)을 기록
- 이를 CloudWatch Logs로 전송하고, TCP 22(SSH) 및 TCP 3389(RDP)에 대한 ACCEPT 레코드를 매칭하는 케트릭 필터를 만들면 실제 접속(수락된 세션)을 탐지 가능
- 해당 필터로 생성된 커스텀 메트릭에 CloudWatch 경보를 걸고 SNS 알림을 연결하면, 접속이 성립될 때 운영팀에 자동 통지가 이루어짐

오답 이유

- **A. CloudWatch Application Insights**
    - APM/애플리케이션 모니터링 및 운영 이슈(OpsItems) 생성에 초점이며, **RDP/SSH 네트워크 접속 성립**을 직접 탐지하는 용도로 적합하지 않습니다.
    
- **B. SSM 인스턴스 프로파일 부여**
    - SSM 관리는 가능해지지만, **RDP/SSH 접속 알림**이 자동으로 제공되는 것은 아닙니다. 요구사항 충족과 직접 관련이 없습니다.
    
- **D. EventBridge 인스턴스 상태 변경 이벤트**
    - 이는 **인스턴스 시작/중지/종료 등 상태 변화**에 대한 알림입니다. **RDP/SSH 접속 여부**와는 무관합니다.'),
  (233, 233, '- 루트 사용자 계정은 AWS 계정 전체에 대한 무제한 권한을 가지므로 비밀번호가 취약하면 계정이 위험에 노출
- MFA 활성화 : 루트 사용자 보안의 핵심 권장사항. 비밀번호만으로 충분하지 않으며 MFA를 추가해 계정 탈취 위험을 줄임

오답 이유

- **C. 루트 사용자 액세스 키를 암호화된 S3 버킷에 저장**
    - AWS 보안 모범 사례는 **루트 사용자에 대해 액세스 키를 생성하지 말 것**을 권고합니다. 필요 시에도 장기적으로 저장하는 대신 즉시 삭제해야 합니다.
    
- **D. 루트 사용자를 그룹에 추가**
    - 루트 사용자는 IAM 사용자와 달리 그룹에 속할 수 없습니다. 또한 루트 사용자 자체는 이미 모든 권한을 가지고 있습니다.
    
- **E. 인라인 정책으로 권한 부여**    
    - 루트 사용자는 이미 계정의 모든 권한을 가지고 있으므로 추가 정책은 불필요합니다.'),
  (234, 234, '- 저장 시 암호화(at rest): EBS, Aurora 모두 AWS KMS 기반 암호화를 네이티브로 지원
- 전송 중 암호화(in transit): ALB는 ACM 인증서를 탑재해 TLS 종료를 수행, 클라이언트 ↔ ALB 구간을 HTTPS(LTS)로 보호하고, 필요시 ALB ↔ EC2 간도 내부 인증서로 TLS 적용 가능

오답 이유

- **A**: 뒤바뀐 사용. **KMS는 인증서를 제공하지 않으며**, **ACM이 TLS 인증서를** 관리/배포합니다. 저장 시 암호화는 KMS가 담당.
    
- **B**: 루트 계정으로 “계정 전체 저장/전송 암호화”를 일괄 켜는 **전역 스위치 같은 기능은 없습니다**. 각 리소스별로 설정해야 합니다.
    
- **D**: BitLocker는 Windows 디스크 암호화 솔루션으로 AWS 관리형 EBS/Aurora 암호화 요구와 무관하며, **ALB에 KMS 키를 ‘연결’하는 기능은 없습니다**. ALB는 **ACM 인증서**를 사용합니다.'),
  (235, 235, '- 이기종(오라클 to Aurora PostgreSQL) 이므로 먼저 AWS Schema Converstion Tool(SCT)로 스키마/객체(저장 프로시저, 함수 등)를 변환하는게 정석
- 애플리케이션을 한 달 간격으로 순차 이전하면서 두 DB를 지속 동기화 => AWS DMS의 "전체 로드 + CDC" 작업 필요
	- 전체 데이터 적재 후, 소스의 변경(INSERT/UPDATE/DELETE)을 실시간으로 타겟에 반영해 양쪽을 동기화
- 트래픽(읽기/쓰기)이 많고 CDC 트래픽도 큰 편으로 예상되므로, 메모리 최적화형 DMS 복제 인스턴스가 대량 트랜잭션/LOB 처리 및 캐싱에 유리해 안정적

오답 이유

- **A. DataSync + DMS(CDC만)**
    - DataSync는 파일/객체 스토리지 전송에 적합하며 **데이터베이스 초기 적재 용도에 맞지 않습니다.** 또한 CDC만으로는 초기 풀 로드가 없어 타겟이 온전하지 않습니다.
    
- **B. DataSync + DMS(Full + CDC)**
    - Full + CDC 조합 자체는 맞지만, **초기 로드에 DataSync를 쓸 이유가 없습니다.** DB → DB 마이그레이션은 DMS가 **풀 로드와 CDC를 모두** 수행합니다.
    
- **D. SCT + DMS(컴퓨팅 최적화) + 일부 테이블만**
    - 가장 큰 테이블만 선택하면 **동일 테이블에 쓰는 여러 앱**이 존재하는 본 시나리오에서 **데이터 정합성이 깨질 수 있습니다.** 또한 트래픽이 많은 워크로드에는 메모리 최적화가 더 적절합니다.'),
  (236, 236, '- 변경 최소화: 기존 EC2 기반 웹/앱을 Elastic Beanstalk(로드밸런싱+오토스케일+멀티-AZ)으로 감싸 배포하면 애플리케이션 코드는 크게 바꾸지 않고 확장성과 고가용성 확보
- DB 고가용성: MySQL을 Amazon RDS Multi-AZ로 이전하면 자동 장애조치와 관리형 백업으로 내구성과 가용성을 확보
- 이미지 저장소 분리: 대용량 바이너리는 DB가 아닌 Amazon S3에 저장/서빙하는 것이 확장･비용･성능 면에서 최적이며 CloudFront 연동도 용이

오답 이유

- **A**: 서버리스/NoSQL 아키텍처로의 전환(Lambda, DynamoDB)은 **코드/데이터 모델 변경이 큼**. “변경 최소화” 요구에 부적합.
    
- **B**: Beanstalk까지는 좋지만, **이미지를 RDS 읽기 복제본으로 제공**하는 것은 비효율적(대용량 오브젝트를 DB로 제공 X). 이미지 저장/서빙은 S3가 적합.
    
- **C**: 프런트 S3 호스팅은 가능하나, **DB를 더 큰 EC2(메모리 최적화)로** 옮겨도 고가용성이 보장되지 않음(여전히 셀프매니지드). 이미지도 DB에서 제공한다고 되어 비효율적.'),
  (237, 237, '- VPC Peering은 두 VPC(동일/상이한 계정 간 모두 가능) 간 프라이빗 IP 기반의 직접 라우팅을 제공해 인터넷을 통하지 않고 보안적으로 통신
- 서비스 자체가 고가용이며, 전용 대역폭 한도 같은 대역폭 병목이 없음
	- 처리량은 주로 EC2/ENI 네트워크 성능과 경로상 링크에 의해 결정
- 라우 테이블과 보안 그룹/네트워크 ACL만으로 간단히 구성할 수 있어 변경 최소, 단일 실패 지점을 만들지 않음

오답 이유

- **B. VPC 게이트웨이 엔드포인트**
    - 게이트웨이 엔드포인트는 **S3/DynamoDB 전용**입니다. EC2↔EC2 통신에는 사용할 수 없습니다.
    
- **C. 가상 프라이빗 게이트웨이(VGW) + 라우팅**
    - 이는 **사이트-투-사이트 VPN/Direct Connect** 시나리오용입니다. VPC-to-VPC 연결로 쓰려면 추가적으로 고객 게이트웨이/소프트웨어 VPN 구성 등이 필요하고, **터널 당 대역폭 제한**과 **SPOF** 고려(이중 터널 구성 등)로 관리 부담이 큽니다.
    
- **D. 프라이빗 VIF 생성**
    - **프라이빗 VIF는 Direct Connect 전용**으로 VPC(및 그 안의 리소스)로의 온프레미스 연결을 위한 것입니다. 개별 EC2 인스턴스에 VIF를 붙일 수 없으며, 본 시나리오에 부적합합니다.'),
  (238, 238, '- AWS Budgets는 서비스별(EC2만) 로 범위를 제한한 월간 비용 예산과 임계값 초과 시 즉시 SNS 알림을 기본 제공, 설정이 간단하고 추가 인프라 필요 없음
- 각 계정에서 예산을 생성하면 계정별로 독립적으로 임계값을 감시할 수 있어 요구사항("각 계정별, 월 중 즉시 알림")을 가장 비용 효율적이고 운영 오버헤드 없이 충족

오답 이유

- **A/B (Cost Explorer + SES 알림)**
    - Cost Explorer는 **리포팅/분석** 도구이며 **임계값 기준의 실시간 알림 기능을 직접 제공하지 않습니다.** SES 연동으로 임계값 알림을 설정하는 기능도 없습니다. 알림 목적엔 Budgets가 정답.
    
- **D (CUR + Athena + EventBridge + SNS)**
    - 가능은 하지만 **구성 요소가 과도**(CUR, S3, Athena 테이블, 쿼리, 스케줄러, 알림)하여 **운영 복잡도와 비용**이 증가합니다. 요구사항은 Budgets 한 번으로 해결 가능.'),
  (239, 239, '- Lambda Function URL은 람다가 직접 제공하는 HTTPS 엔드포인트로, 별도의 API 게이트웨이나 엣지 컴퓨팅 구성 없이도 호출 가능
- 인증을 AWS_IAM(SigV4)로 설정하면 IAM 정책으로 호출 권한을 제어할 수 있어 요구사항(HTTPS+IAM 인증) 충족
- 관리해야 할 리소스가 단일 람다 함수뿐이라 운영 오버헤드 최소

오답 이유

- **A. API Gateway REST API**
    - IAM 인증을 지원하고 Lambda 통합도 쉬우나, **추가 관리 리소스(API, 스테이지, 배포 등)** 가 생겨 **운영 효율** 면에서 Function URL보다 무겁습니다.
    
- **C. CloudFront + Lambda@Edge**
    - Lambda@Edge는 CloudFront 요청/응답 변형용입니다. **IAM 인증을 기본 제공하지 않으며** 인증 로직을 직접 구현해야 하고, 배포/전파에도 시간이 걸려 과합니다.
    
- **D. CloudFront + CloudFront Functions**
    - CloudFront Functions는 경량 JavaScript 엣지 함수로 **Lambda(Go) 실행을 대체할 수 없고**, AWS_IAM 같은 인증 타입을 **지정할 수 없습니다**. 또한 원래 목적은 헤더/URI 변형 등입니다.'),
  (240, 240, '- 대용량(50MB) 쿼리 결과가 AWS 밖으로 나가지 않도록 시각화 도구를 데이터 웨어하우스와 동일 리전에 두면, DW ↔ 시각화 도구 간 트래픽은 리전 내부(동일 AZ이면 무료/동일 리전 간 저렴)로 처리되어 이그레스 비용이 거의/전혀 들지 않음
- 최종 사용자에게 나가는 것은 작은 웹 페이지(약 500KB) 뿐이므로, 이를 Direct Connect 로 전송하면 인터넷 이그레스보다 더 낮은 전송 단가를 적용받아 총 이그레스 비용 최소화

오답 이유

- **A. 온프레미스 호스팅 + 인터넷**: 50MB 결과 세트가 **인터넷 이그레스**로 지속 전송되어 **비용 최댓값**.
    
- **B. 동일 리전 호스팅 + 인터넷 접근**: 대용량 결과는 리전 내부라 좋지만, 사용자에게 가는 500KB 페이지들이 **인터넷 이그레스 단가**를 적용받아 D보다 비쌉니다.
    
- **C. 온프레미스 호스팅 + Direct Connect**: 인터넷보다는 싸지만 여전히 **50MB 결과**가 매번 **Direct Connect 이그레스**로 빠져나가 **트래픽량 자체가 큼**. D보다 비용이 큼.');
