# 9goopbox

**NOT FOR PRODUCTION**

[9급박스](https://github.com/9goopbox/9goopbox)는 병원용 ERP / 그룹웨어입니다. KOSTA, SBA의 2개월간의 교육과정인 [**아키텍처 / 모델 기반의 자바 개발자 과정**](https://cs.skuniv.ac.kr/5769)의 교육과정중 제작되었습니다. 엔드유저가 사용할 수준이 아님에 유의하여 주십시오.

## Source

- Spring MVC, Maven 사용
- [DevOOPS 부트스트랩 테마](http://devoops.me/handmade/3/) 기반
- eXERD ERD 모델링 소프트웨어

## Credits

- 2014 3기 kosta 교육과정
- 6조 (슬기조) 멤버들
  - 권병희 [@kqudgml](https://github.com/kqudgml)
  - 유길상 [조장] [@bongsync](https://github.com/bongsync)
  - 이슬기 [@goodsvpg](https://github.com/goodsvpg)
  - 최찬휘 [@sftblw](https://github.com/sftblw)

# 개발환경의 구성

프로젝트 파일을 ignore 하지 않으므로 프로젝트를 그대로 불러올 수 있습니다.

1. git clone
2. [STS](https://spring.io/tools)에서 Import → Existing Maven project
3. 적당한 톰캣 서버를 만듭니다.
4. 프로젝트에 서버 라이브러리를 추가합니다. [#](http://blueray21.tistory.com/58)
5. Run On Server

eXERD 프로젝트도 유사한 방법으로 환경을 구성할 수 있습니다.

## 테스트용 샘플 SQL Query의 위치

스프링 Maven 프로젝트에 원클릭으로 빠르게 설정할 수 있도록 별도 SQL 파일을 준비해두었습니다. 이는 eXERD의 포워드 엔지니어링 기능을 사용하였습니다.

- DDL : src/sqlQuery/onestep_setup.sql
- insert 구문들 : src/sqlQuery/chart/chartInquiryData.sql

# 라이센스

코드의 라이센스는 따로 정해지지 않았지만, DevOOPS 테마 및 그 아래에 속해있던 각종 jQuery 플러그인 등의 라이센스는 각자의 라이센스들을 따릅니다.
