-- 의사시퀀스
drop sequence doctor_sequence;
-- 병동환자시퀀스
drop sequence ward_patient_sequence;
-- 부서시퀀스
drop sequence department_sequence;
-- 외래환자시퀀스
drop sequence foreign_patient_sequence;
-- 비품시퀀스
drop sequence items_sequence;
-- 일반직원시퀀스
drop sequence general_employee_sequence;
-- 직원시퀀스
drop sequence employee_sequence;
-- 일정시퀀스
drop sequence calender_sequence;
-- 차트 (진료기록?)시퀀스
drop sequence chart_sequence;
-- 전자결재시퀀스
drop sequence approval_sequence;
-- 환자시퀀스
drop sequence Patient_sequence;
-- 게시글시퀀스
drop sequence article_sequence;
-- 직급시퀀스
drop sequence position_sequence;
-- 글 태그시퀀스
drop sequence article_tag_sequence;
-- 태그시퀀스
drop sequence tag_sequence;
-- 질! 병!시퀀스
drop sequence disease_sequence;
-- 건물 (병동, 진료실 등이 있는 건물 자체)시퀀스
drop sequence building_sequence;
-- 질병기록시퀀스
drop sequence disease_record_sequence;
-- 글 상태 변화 알림시퀀스
drop sequence noty_article_sequence;
-- 처방시퀀스
drop sequence TABLE3_sequence;
-- 병동 외의 방시퀀스
drop sequence office_sequence;
-- 결재자시퀀스
drop sequence approver_sequence;
-- 진료, 수납, 등록시퀀스
drop sequence treatment_sequence;
-- 병동 방시퀀스
drop sequence ward_sequence;
-- 근태시퀀스
drop sequence punch_sequence;
-- 직원로그시퀀스
drop sequence log_sequence;
-- 파일시퀀스
drop sequence file_sequence;
-- 파일첨부대상시퀀스
drop sequence attach_target_sequence;
-- 의사시퀀스
create sequence doctor_sequence
start with 1
increment by 1;

-- 병동환자시퀀스
create sequence ward_patient_sequence
start with 1
increment by 1;

-- 부서시퀀스
create sequence department_sequence
start with 1
increment by 1;

-- 외래환자시퀀스
create sequence foreign_patient_sequence
start with 1
increment by 1;

-- 비품시퀀스
create sequence items_sequence
start with 1
increment by 1;

-- 일반직원시퀀스
create sequence general_employee_sequence
start with 1
increment by 1;

-- 직원시퀀스
create sequence employee_sequence
start with 1
increment by 1;

-- 일정시퀀스
create sequence calender_sequence
start with 1
increment by 1;

-- 차트 (진료기록?)시퀀스
create sequence chart_sequence
start with 1
increment by 1;

-- 전자결재시퀀스
create sequence approval_sequence
start with 1
increment by 1;

-- 환자시퀀스
create sequence Patient_sequence
start with 1
increment by 1;

-- 게시글시퀀스
create sequence article_sequence
start with 1
increment by 1;

-- 직급시퀀스
create sequence position_sequence
start with 1
increment by 1;

-- 글 태그시퀀스
create sequence article_tag_sequence
start with 1
increment by 1;

-- 태그시퀀스
create sequence tag_sequence
start with 1
increment by 1;

-- 질! 병!시퀀스
create sequence disease_sequence
start with 1
increment by 1;

-- 건물 (병동, 진료실 등이 있는 건물 자체)시퀀스
create sequence building_sequence
start with 1
increment by 1;

-- 질병기록시퀀스
create sequence disease_record_sequence
start with 1
increment by 1;

-- 글 상태 변화 알림시퀀스
create sequence noty_article_sequence
start with 1
increment by 1;

-- 처방시퀀스
create sequence TABLE3_sequence
start with 1
increment by 1;

-- 병동 외의 방시퀀스
create sequence office_sequence
start with 1
increment by 1;

-- 결재자시퀀스
create sequence approver_sequence
start with 1
increment by 1;

-- 진료, 수납, 등록시퀀스
create sequence treatment_sequence
start with 1
increment by 1;

-- 병동 방시퀀스
create sequence ward_sequence
start with 1
increment by 1;

-- 근태시퀀스
create sequence punch_sequence
start with 1
increment by 1;

-- 직원로그시퀀스
create sequence log_sequence
start with 1
increment by 1;

-- 파일시퀀스
create sequence file_sequence
start with 1
increment by 1;

-- 파일첨부대상시퀀스
create sequence attach_target_sequence
start with 1
increment by 1;

