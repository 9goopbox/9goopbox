ALTER TABLE doctor
	DROP
		CONSTRAINT FK_employee_TO_doctor
		CASCADE;

ALTER TABLE ward_patient
	DROP
		CONSTRAINT FK_Patient_TO_ward_patient
		CASCADE;

ALTER TABLE ward_patient
	DROP
		CONSTRAINT FK_building_TO_ward_patient
		CASCADE;

ALTER TABLE ward_patient
	DROP
		CONSTRAINT FK_ward_TO_ward_patient
		CASCADE;

ALTER TABLE department
	DROP
		CONSTRAINT FK_department_TO_department
		CASCADE;

ALTER TABLE foreign_patient
	DROP
		CONSTRAINT FK_Patient_TO_foreign_patient
		CASCADE;

ALTER TABLE items
	DROP
		CONSTRAINT FK_general_employee_TO_items
		CASCADE;

ALTER TABLE items
	DROP
		CONSTRAINT FK_general_employee_TO_items2
		CASCADE;

ALTER TABLE general_employee
	DROP
		CONSTRAINT FK_employee_TO_general_empl
		CASCADE;

ALTER TABLE employee
	DROP
		CONSTRAINT FK_position_TO_employee
		CASCADE;

ALTER TABLE employee
	DROP
		CONSTRAINT FK_department_TO_employee
		CASCADE;

ALTER TABLE calender
	DROP
		CONSTRAINT FK_employee_TO_calender
		CASCADE;

ALTER TABLE chart
	DROP
		CONSTRAINT FK_Patient_TO_chart
		CASCADE;

ALTER TABLE chart
	DROP
		CONSTRAINT FK_doctor_TO_chart
		CASCADE;

ALTER TABLE chart
	DROP
		CONSTRAINT FK_treatment_TO_chart
		CASCADE;

ALTER TABLE chart
	DROP
		CONSTRAINT FK_department_TO_chart
		CASCADE;

ALTER TABLE chart
	DROP
		CONSTRAINT FK_attach_target_TO_chart
		CASCADE;

ALTER TABLE approval
	DROP
		CONSTRAINT FK_employee_TO_approval
		CASCADE;

ALTER TABLE approval
	DROP
		CONSTRAINT FK_attach_target_TO_approval
		CASCADE;

ALTER TABLE Patient
	DROP
		CONSTRAINT FK_doctor_TO_Patient
		CASCADE;

ALTER TABLE article
	DROP
		CONSTRAINT FK_employee_TO_article
		CASCADE;

ALTER TABLE article
	DROP
		CONSTRAINT FK_article_TO_article
		CASCADE;

ALTER TABLE article
	DROP
		CONSTRAINT FK_attach_target_TO_article
		CASCADE;

ALTER TABLE position
	DROP
		CONSTRAINT FK_department_TO_position
		CASCADE;

ALTER TABLE article_tag
	DROP
		CONSTRAINT FK_article_TO_article_tag
		CASCADE;

ALTER TABLE article_tag
	DROP
		CONSTRAINT FK_employee_TO_article_tag
		CASCADE;

ALTER TABLE article_tag
	DROP
		CONSTRAINT FK_tag_TO_article_tag
		CASCADE;

ALTER TABLE tag
	DROP
		CONSTRAINT FK_employee_TO_tag
		CASCADE;

ALTER TABLE disease_record
	DROP
		CONSTRAINT FK_disease_TO_disease_record
		CASCADE;

ALTER TABLE disease_record
	DROP
		CONSTRAINT FK_chart_TO_disease_record
		CASCADE;

ALTER TABLE noty_article
	DROP
		CONSTRAINT FK_employee_TO_noty_article
		CASCADE;

ALTER TABLE noty_article
	DROP
		CONSTRAINT FK_article_TO_noty_article
		CASCADE;

ALTER TABLE prescription
	DROP
		CONSTRAINT FK_chart_TO_prescription
		CASCADE;

ALTER TABLE office
	DROP
		CONSTRAINT FK_building_TO_office
		CASCADE;

ALTER TABLE approver
	DROP
		CONSTRAINT FK_approval_TO_approver
		CASCADE;

ALTER TABLE approver
	DROP
		CONSTRAINT FK_employee_TO_approver
		CASCADE;

ALTER TABLE treatment
	DROP
		CONSTRAINT FK_Patient_TO_treatment
		CASCADE;

ALTER TABLE ward
	DROP
		CONSTRAINT FK_building_TO_ward
		CASCADE;

ALTER TABLE punch
	DROP
		CONSTRAINT FK_employee_TO_punch
		CASCADE;

ALTER TABLE log
	DROP
		CONSTRAINT FK_employee_TO_log
		CASCADE;

ALTER TABLE upfile
	DROP
		CONSTRAINT FK_employee_TO_upfile
		CASCADE;

ALTER TABLE upfile
	DROP
		CONSTRAINT FK_attach_target_TO_upfile
		CASCADE;

ALTER TABLE Patient
	DROP
		CONSTRAINT CK_Patient
		CASCADE;

ALTER TABLE doctor
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE ward_patient
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE department
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE foreign_patient
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE items
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE general_employee
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE employee
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE calender
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE chart
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE approval
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE Patient
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE article
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE position
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE article_tag
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE tag
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE disease
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE building
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE disease_record
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE noty_article
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE prescription
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE office
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE approver
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE treatment
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE ward
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE punch
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE log
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE upfile
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE attach_target
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

DROP INDEX PK_doctor;

DROP INDEX PK_ward_patient;

DROP INDEX PK_department;

DROP INDEX PK_foreign_patient;

DROP INDEX PK_items;

DROP INDEX PK_general_employee;

DROP INDEX PK_employee;

DROP INDEX PK_calender;

DROP INDEX PK_chart;

DROP INDEX PK_approval;

DROP INDEX PK_Patient;

DROP INDEX PK_article;

DROP INDEX PK_position;

DROP INDEX PK_article_tag;

DROP INDEX PK_tag;

DROP INDEX PK_disease;

DROP INDEX PK_building;

DROP INDEX PK_disease_record;

DROP INDEX PK_noty_article;

DROP INDEX PK_prescription;

DROP INDEX PK_office;

DROP INDEX PK_approver;

DROP INDEX PK_treatment;

DROP INDEX PK_ward;

DROP INDEX PK_punch;

DROP INDEX PK_log;

DROP INDEX PK_upfile;

DROP INDEX PK_attach_target;

/* 의사 */
DROP TABLE doctor 
	CASCADE CONSTRAINTS;

/* 병동환자 */
DROP TABLE ward_patient 
	CASCADE CONSTRAINTS;

/* 부서 */
DROP TABLE department 
	CASCADE CONSTRAINTS;

/* 외래환자 */
DROP TABLE foreign_patient 
	CASCADE CONSTRAINTS;

/* 비품 */
DROP TABLE items 
	CASCADE CONSTRAINTS;

/* 일반직원 */
DROP TABLE general_employee 
	CASCADE CONSTRAINTS;

/* 직원 */
DROP TABLE employee 
	CASCADE CONSTRAINTS;

/* 일정 */
DROP TABLE calender 
	CASCADE CONSTRAINTS;

/* 차트 (진료기록?) */
DROP TABLE chart 
	CASCADE CONSTRAINTS;

/* 전자결재 */
DROP TABLE approval 
	CASCADE CONSTRAINTS;

/* 환자 */
DROP TABLE Patient 
	CASCADE CONSTRAINTS;

/* 게시글 */
DROP TABLE article 
	CASCADE CONSTRAINTS;

/* 직급 */
DROP TABLE position 
	CASCADE CONSTRAINTS;

/* 글 태그 */
DROP TABLE article_tag 
	CASCADE CONSTRAINTS;

/* 태그 */
DROP TABLE tag 
	CASCADE CONSTRAINTS;

/* 질! 병! */
DROP TABLE disease 
	CASCADE CONSTRAINTS;

/* 건물 (병동, 진료실 등이 있는 건물 자체) */
DROP TABLE building 
	CASCADE CONSTRAINTS;

/* 질병기록 */
DROP TABLE disease_record 
	CASCADE CONSTRAINTS;

/* 글 상태 변화 알림 */
DROP TABLE noty_article 
	CASCADE CONSTRAINTS;

/* 처방 */
DROP TABLE prescription 
	CASCADE CONSTRAINTS;

/* 병동 외의 방 */
DROP TABLE office 
	CASCADE CONSTRAINTS;

/* 결재자 */
DROP TABLE approver 
	CASCADE CONSTRAINTS;

/* 진료, 수납, 등록 */
DROP TABLE treatment 
	CASCADE CONSTRAINTS;

/* 병동 방 */
DROP TABLE ward 
	CASCADE CONSTRAINTS;

/* 근태 */
DROP TABLE punch 
	CASCADE CONSTRAINTS;

/* 직원로그 */
DROP TABLE log 
	CASCADE CONSTRAINTS;

/* 파일 */
DROP TABLE upfile 
	CASCADE CONSTRAINTS;

/* 파일첨부대상 */
DROP TABLE attach_target 
	CASCADE CONSTRAINTS;