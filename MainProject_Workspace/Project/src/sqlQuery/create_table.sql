/* 의사 */
CREATE TABLE doctor (
	id VARCHAR2(20) NOT NULL /* 직원 ID */
);

COMMENT ON TABLE doctor IS '의사';

COMMENT ON COLUMN doctor.id IS '직원 ID';

CREATE UNIQUE INDEX PK_doctor
	ON doctor (
		id ASC
	);

ALTER TABLE doctor
	ADD
		CONSTRAINT PK_doctor
		PRIMARY KEY (
			id
		);

/* 병동환자 */
CREATE TABLE ward_patient (
	patient_id INTEGER NOT NULL, /* 환자 ID */
	building_id VARCHAR2(15) NOT NULL, /* 병동 ID */
	room_id INTEGER NOT NULL, /* 방 번호 */
	date_enter DATE NOT NULL, /* 입실일 */
	date_exit DATE /* 퇴실일 */
);

COMMENT ON TABLE ward_patient IS '병동환자';

COMMENT ON COLUMN ward_patient.patient_id IS '환자 ID';

COMMENT ON COLUMN ward_patient.building_id IS '병동 ID';

COMMENT ON COLUMN ward_patient.room_id IS '방 번호';

COMMENT ON COLUMN ward_patient.date_enter IS '입실일';

COMMENT ON COLUMN ward_patient.date_exit IS '퇴실일';

CREATE UNIQUE INDEX PK_ward_patient
	ON ward_patient (
		patient_id ASC,
		building_id ASC,
		room_id ASC
	);

ALTER TABLE ward_patient
	ADD
		CONSTRAINT PK_ward_patient
		PRIMARY KEY (
			patient_id,
			building_id,
			room_id
		);

/* 부서 */
CREATE TABLE department (
	id INTEGER NOT NULL, /* 부서ID */
	name VARCHAR2(30) NOT NULL, /* 부서이름 */
	dept_up_id INTEGER /* 상위부서ID */
);

COMMENT ON TABLE department IS '부서';

COMMENT ON COLUMN department.id IS '부서ID';

COMMENT ON COLUMN department.name IS '부서이름';

COMMENT ON COLUMN department.dept_up_id IS '상위부서ID';

CREATE UNIQUE INDEX PK_department
	ON department (
		id ASC
	);

ALTER TABLE department
	ADD
		CONSTRAINT PK_department
		PRIMARY KEY (
			id
		);

/* 외래환자 */
CREATE TABLE foreign_patient (
	id INTEGER NOT NULL, /* 환자 ID */
	COL DATE /* 예약 */
);

COMMENT ON TABLE foreign_patient IS '외래환자';

COMMENT ON COLUMN foreign_patient.id IS '환자 ID';

COMMENT ON COLUMN foreign_patient.COL IS '예약';

CREATE UNIQUE INDEX PK_foreign_patient
	ON foreign_patient (
		id ASC
	);

ALTER TABLE foreign_patient
	ADD
		CONSTRAINT PK_foreign_patient
		PRIMARY KEY (
			id
		);

/* 비품 */
CREATE TABLE items (
	id INTEGER NOT NULL, /* 비품번호 */
	manager VARCHAR2(20) NOT NULL, /* 관리자 */
	submitter VARCHAR2(20), /* 신청자 */
	name VARCHAR2(30) NOT NULL, /* 이름 */
	category VARCHAR2(30), /* 분류 */
	amount INTEGER NOT NULL, /* 수량 */
	buyDate DATE NOT NULL, /* 구입일 */
	buyPrice INTEGER NOT NULL, /* 구입가격 */
	memo VARCHAR2(100) /* 비고 */
);

COMMENT ON TABLE items IS '비품';

COMMENT ON COLUMN items.id IS '비품번호';

COMMENT ON COLUMN items.manager IS '관리자';

COMMENT ON COLUMN items.submitter IS '신청자';

COMMENT ON COLUMN items.name IS '이름';

COMMENT ON COLUMN items.category IS '분류';

COMMENT ON COLUMN items.amount IS '수량';

COMMENT ON COLUMN items.buyDate IS '구입일';

COMMENT ON COLUMN items.buyPrice IS '구입가격';

COMMENT ON COLUMN items.memo IS '비고';

CREATE UNIQUE INDEX PK_items
	ON items (
		id ASC,
		manager ASC
	);

ALTER TABLE items
	ADD
		CONSTRAINT PK_items
		PRIMARY KEY (
			id,
			manager
		);

/* 일반직원 */
CREATE TABLE general_employee (
	id VARCHAR2(20) NOT NULL /* 직원 ID */
);

COMMENT ON TABLE general_employee IS '일반직원';

COMMENT ON COLUMN general_employee.id IS '직원 ID';

CREATE UNIQUE INDEX PK_general_employee
	ON general_employee (
		id ASC
	);

ALTER TABLE general_employee
	ADD
		CONSTRAINT PK_general_employee
		PRIMARY KEY (
			id
		);

/* 직원 */
CREATE TABLE employee (
	id VARCHAR2(20) NOT NULL, /* 직원 ID */
	password VARCHAR2(256) NOT NULL, /* 암호 */
	name VARCHAR2(30) NOT NULL, /* 이름 */
	address VARCHAR2(300) NOT NULL, /* 주소 */
	position VARCHAR2(20), /* 직급 */
	pay INTEGER NOT NULL, /* 급여 */
	dept_id INTEGER, /* 부서ID */
	tel CHAR(13), /* 전화번호 */
	email VARCHAR2(40) NOT NULL, /* 이메일 */
	come DATE, /* 입사일 */
	bye DATE, /* 퇴사일 */
	PROFILE_IMG VARCHAR2(256) /* 프로필사진 */
);

COMMENT ON TABLE employee IS '직원';

COMMENT ON COLUMN employee.id IS '직원 ID';

COMMENT ON COLUMN employee.password IS '암호';

COMMENT ON COLUMN employee.name IS '이름';

COMMENT ON COLUMN employee.address IS '주소';

COMMENT ON COLUMN employee.position IS '직급';

COMMENT ON COLUMN employee.pay IS '급여';

COMMENT ON COLUMN employee.dept_id IS '부서ID';

COMMENT ON COLUMN employee.tel IS '전화번호';

COMMENT ON COLUMN employee.email IS '이메일';

COMMENT ON COLUMN employee.come IS '입사일';

COMMENT ON COLUMN employee.bye IS '퇴사일';

COMMENT ON COLUMN employee.PROFILE_IMG IS '프로필사진';

CREATE UNIQUE INDEX PK_employee
	ON employee (
		id ASC
	);

CREATE UNIQUE INDEX UIX_employee_email
	ON employee (
		email ASC
	);

ALTER TABLE employee
	ADD
		CONSTRAINT PK_employee
		PRIMARY KEY (
			id
		);

ALTER TABLE employee
	ADD
		CONSTRAINT UK_employee
		UNIQUE (
			email
		);

/* 일정 */
CREATE TABLE calender (
	id INTEGER NOT NULL, /* 글 번호 */
	writer_id VARCHAR2(20) NOT NULL, /* 작성자 id */
	strar_date DATE, /* 시작일 */
	end_date DATE, /* 마침일 */
	title VARCHAR2(60), /* 제목 */
	cont CLOB /* 내용 */
);

COMMENT ON TABLE calender IS '일정';

COMMENT ON COLUMN calender.id IS '글 번호';

COMMENT ON COLUMN calender.writer_id IS '작성자 id';

COMMENT ON COLUMN calender.strar_date IS '시작일';

COMMENT ON COLUMN calender.end_date IS '마침일';

COMMENT ON COLUMN calender.title IS '제목';

COMMENT ON COLUMN calender.cont IS '내용';

CREATE UNIQUE INDEX PK_calender
	ON calender (
		id ASC,
		writer_id ASC
	);

ALTER TABLE calender
	ADD
		CONSTRAINT PK_calender
		PRIMARY KEY (
			id,
			writer_id
		);

/* 차트 (진료기록?) */
CREATE TABLE chart (
	id INTEGER NOT NULL, /* 차트 ID */
	dept_id INTEGER, /* 부서ID */
	patient_id INTEGER NOT NULL, /* 환자ID */
	doctor_id VARCHAR2(20) NOT NULL, /* 진료의사 */
	treatment_id INTEGER NOT NULL, /* 진료 ID */
	sub VARCHAR2(80) NOT NULL, /* 제목 */
	disease VARCHAR2(200) NOT NULL, /* 질병이름/진단요약 */
	cont CLOB NOT NULL, /* 진료기록 */
	cost INTEGER NOT NULL, /* 비용 */
	attach_id INTEGER /* 첨부 ID */
);

COMMENT ON TABLE chart IS '차트 (진료기록?)';

COMMENT ON COLUMN chart.id IS '차트 ID';

COMMENT ON COLUMN chart.dept_id IS '부서ID';

COMMENT ON COLUMN chart.patient_id IS '환자ID';

COMMENT ON COLUMN chart.doctor_id IS '진료의사';

COMMENT ON COLUMN chart.treatment_id IS '진료 ID';

COMMENT ON COLUMN chart.sub IS '제목';

COMMENT ON COLUMN chart.disease IS '질병이름/진단요약';

COMMENT ON COLUMN chart.cont IS '진료기록';

COMMENT ON COLUMN chart.cost IS '비용';

COMMENT ON COLUMN chart.attach_id IS '첨부 ID';

CREATE UNIQUE INDEX PK_chart
	ON chart (
		id ASC
	);

ALTER TABLE chart
	ADD
		CONSTRAINT PK_chart
		PRIMARY KEY (
			id
		);

ALTER TABLE chart
	ADD
		CONSTRAINT CK_chart
		CHECK (<지정 되지 않음>);

/* 전자결재 */
CREATE TABLE approval (
	requester_id VARCHAR2(20) NOT NULL, /* 결재요청자ID */
	id INTEGER NOT NULL, /* 결재ID */
	kind VARCHAR2(20) NOT NULL, /* 결재종류 */
	state VARCHAR2(15), /* 결재상태 */
	cont CLOB, /* 요청내용 */
	attach_id INTEGER /* 첨부 ID */
);

COMMENT ON TABLE approval IS '전자결재';

COMMENT ON COLUMN approval.requester_id IS '결재를 요청한 자의 ID';

COMMENT ON COLUMN approval.id IS '결재 자체의 ID';

COMMENT ON COLUMN approval.kind IS '결재종류';

COMMENT ON COLUMN approval.state IS '결재상태';

COMMENT ON COLUMN approval.cont IS '요청내용';

COMMENT ON COLUMN approval.attach_id IS '첨부 ID';

CREATE UNIQUE INDEX PK_approval
	ON approval (
		id ASC
	);

ALTER TABLE approval
	ADD
		CONSTRAINT PK_approval
		PRIMARY KEY (
			id
		);

/* 환자 */
CREATE TABLE Patient (
	id INTEGER NOT NULL, /* 환자 ID */
	name VARCHAR2(20) NOT NULL, /* 이름 */
	age INTEGER NOT NULL, /* 나이 */
	sex VARCHAR2(10) NOT NULL, /* 성별 */
	phone VARCHAR2(20), /* 전화번호 */
	height INTEGER, /* 신장 */
	insured  VARCHAR2(20), /* 피보험자 */
	familydis CLOB, /* 가족력 */
	doctor_id VARCHAR2(20) /* 주치의 ID */
);

COMMENT ON TABLE Patient IS '환자';

COMMENT ON COLUMN Patient.id IS '환자 ID';

COMMENT ON COLUMN Patient.name IS '이름';

COMMENT ON COLUMN Patient.age IS '나이';

COMMENT ON COLUMN Patient.sex IS 'check';

COMMENT ON COLUMN Patient.phone IS '전화번호';

COMMENT ON COLUMN Patient.height IS '신장';

COMMENT ON COLUMN Patient.insured  IS '피보험자';

COMMENT ON COLUMN Patient.familydis IS '(문자열로 쓰임, 리스트 관리하지 않음)';

COMMENT ON COLUMN Patient.doctor_id IS '주치의 ID';

CREATE UNIQUE INDEX PK_Patient
	ON Patient (
		id ASC
	);

ALTER TABLE Patient
	ADD
		CONSTRAINT PK_Patient
		PRIMARY KEY (
			id
		);

ALTER TABLE Patient
	ADD
		CONSTRAINT CK_Patient
		CHECK (sex in ('남자', '여자', '그외'));

/* 게시글 */
CREATE TABLE article (
	id INTEGER NOT NULL, /* 글번호 */
	writer_id VARCHAR2(20), /* 작성자_id */
	cont VARCHAR2(150) NOT NULL, /* 내용 */
	kind VARCHAR2(30), /* 종류 */
	ref_id INTEGER, /* 답글대상 */
	head_id INTEGER, /* 글타래 머릿글 번호 */
	attach_id INTEGER, /* 첨부 ID */
	updated DATE NOT NULL /* 게시시간 */
);

COMMENT ON TABLE article IS '게시글';

COMMENT ON COLUMN article.id IS '글번호';

COMMENT ON COLUMN article.writer_id IS 'null 인 경우 대나무숲';

COMMENT ON COLUMN article.cont IS '내용';

COMMENT ON COLUMN article.kind IS '종류';

COMMENT ON COLUMN article.ref_id IS '답글대상';

COMMENT ON COLUMN article.head_id IS '연관글은 항상 첫 글을 가리켜야 함';

COMMENT ON COLUMN article.attach_id IS '첨부 ID';

COMMENT ON COLUMN article.updated IS '게시시간';

CREATE UNIQUE INDEX PK_article
	ON article (
		id ASC
	);

ALTER TABLE article
	ADD
		CONSTRAINT PK_article
		PRIMARY KEY (
			id
		);

/* 글 태그 */
CREATE TABLE article_tag (
	id INTEGER NOT NULL, /* 글번호 */
	tag_id INTEGER NOT NULL, /* 태그ID */
	id2 VARCHAR2(20) NOT NULL, /* 직원 ID */
	user_id VARCHAR2(20) NOT NULL /* 사용자 ID */
);

COMMENT ON TABLE article_tag IS '글 태그';

COMMENT ON COLUMN article_tag.id IS '글번호';

COMMENT ON COLUMN article_tag.tag_id IS '태그ID';

COMMENT ON COLUMN article_tag.id2 IS '직원 ID';

COMMENT ON COLUMN article_tag.user_id IS '사용자 ID';

CREATE UNIQUE INDEX PK_article_tag
	ON article_tag (
		id ASC,
		tag_id ASC,
		id2 ASC
	);

ALTER TABLE article_tag
	ADD
		CONSTRAINT PK_article_tag
		PRIMARY KEY (
			id,
			tag_id,
			id2
		);

/* 태그 */
CREATE TABLE tag (
	tag_id INTEGER NOT NULL, /* 태그ID */
	id VARCHAR2(20) NOT NULL, /* 직원 ID */
	tag_name VARCHAR2(30) /* 태그이름 */
);

COMMENT ON TABLE tag IS '태그';

COMMENT ON COLUMN tag.tag_id IS '태그ID';

COMMENT ON COLUMN tag.id IS '직원 ID';

COMMENT ON COLUMN tag.tag_name IS '태그이름';

CREATE UNIQUE INDEX PK_tag
	ON tag (
		tag_id ASC,
		id ASC
	);

ALTER TABLE tag
	ADD
		CONSTRAINT PK_tag
		PRIMARY KEY (
			tag_id,
			id
		);

/* 질! 병! */
CREATE TABLE disease (
	id INTEGER NOT NULL, /* 질병 ID */
	name VARCHAR2(140) /* 질병이름 */
);

COMMENT ON TABLE disease IS '질! 병!';

COMMENT ON COLUMN disease.id IS '질병 ID';

COMMENT ON COLUMN disease.name IS '질병이름';

CREATE UNIQUE INDEX PK_disease
	ON disease (
		id ASC
	);

ALTER TABLE disease
	ADD
		CONSTRAINT PK_disease
		PRIMARY KEY (
			id
		);

/* 건물 (병동, 진료실 등이 있는 건물 자체) */
CREATE TABLE building (
	id VARCHAR2(15) NOT NULL, /* 건물 ID */
	name VARCHAR2(30) NOT NULL /* 건물이름 */
);

COMMENT ON TABLE building IS '건물 (병동, 진료실 등이 있는 건물 자체)';

COMMENT ON COLUMN building.id IS '건물 ID';

COMMENT ON COLUMN building.name IS '건물이름';

CREATE UNIQUE INDEX PK_building
	ON building (
		id ASC
	);

ALTER TABLE building
	ADD
		CONSTRAINT PK_building
		PRIMARY KEY (
			id
		);

/* 질병기록 */
CREATE TABLE disease_record (
	disease_id INTEGER NOT NULL, /* 질병 ID */
	chart_id INTEGER NOT NULL, /* 차트 ID */
	symptom CLOB /* 증상 */
);

COMMENT ON TABLE disease_record IS '질병기록';

COMMENT ON COLUMN disease_record.disease_id IS '질병 ID';

COMMENT ON COLUMN disease_record.chart_id IS '차트 ID';

COMMENT ON COLUMN disease_record.symptom IS '증상';

CREATE UNIQUE INDEX PK_disease_record
	ON disease_record (
		disease_id ASC,
		chart_id ASC
	);

ALTER TABLE disease_record
	ADD
		CONSTRAINT PK_disease_record
		PRIMARY KEY (
			disease_id,
			chart_id
		);

/* 글 상태 변화 알림 */
CREATE TABLE noty_article (
	employee_id VARCHAR2(20) NOT NULL, /* 직원 ID */
	article_id INTEGER NOT NULL, /* 글번호 */
	kind VARCHAR2(10) /* 종류 */
);

COMMENT ON TABLE noty_article IS '글 상태 변화 알림';

COMMENT ON COLUMN noty_article.employee_id IS '직원 ID';

COMMENT ON COLUMN noty_article.article_id IS '글번호';

COMMENT ON COLUMN noty_article.kind IS '종류';

CREATE UNIQUE INDEX PK_noty_article
	ON noty_article (
		employee_id ASC,
		article_id ASC
	);

ALTER TABLE noty_article
	ADD
		CONSTRAINT PK_noty_article
		PRIMARY KEY (
			employee_id,
			article_id
		);

/* 처방 */
CREATE TABLE prescription (
	chart_id INTEGER NOT NULL, /* 차트 ID */
	medicine_name VARCHAR2(50) NOT NULL, /* 약 이름 */
	medicine_quantity INTEGER /* 투약량 */
);

COMMENT ON TABLE prescription IS '처방';

COMMENT ON COLUMN prescription.chart_id IS '차트 ID';

COMMENT ON COLUMN prescription.medicine_name IS '약 이름';

COMMENT ON COLUMN prescription.medicine_quantity IS '투약량';

CREATE UNIQUE INDEX PK_prescription
	ON prescription (
		chart_id ASC
	);

ALTER TABLE prescription
	ADD
		CONSTRAINT PK_prescription
		PRIMARY KEY (
			chart_id
		);

/* 병동 외의 방 */
CREATE TABLE office (
	building_id VARCHAR2(15) NOT NULL, /* 건물 ID */
	id INTEGER NOT NULL, /* 방 ID */
	name VARCHAR2(50) /* 병동이름 */
);

COMMENT ON TABLE office IS '병동 외의 방';

COMMENT ON COLUMN office.building_id IS '건물 ID';

COMMENT ON COLUMN office.id IS '방 ID';

COMMENT ON COLUMN office.name IS '병동이름';

CREATE UNIQUE INDEX PK_office
	ON office (
		building_id ASC,
		id ASC
	);

ALTER TABLE office
	ADD
		CONSTRAINT PK_office
		PRIMARY KEY (
			building_id,
			id
		);

/* 결재자 */
CREATE TABLE approver (
	appr_id INTEGER NOT NULL, /* 결재ID */
	apprs_id VARCHAR2(20) NOT NULL, /* 결재자 ID */
	appr_step INTEGER NOT NULL, /* 결재단계 */
	appr_state VARCHAR2(20) /* 결재상태 */
);

COMMENT ON TABLE approver IS '결재자';

COMMENT ON COLUMN approver.appr_id IS '결재 자체의 ID';

COMMENT ON COLUMN approver.apprs_id IS '결재를 해주는 직원의 ID';

COMMENT ON COLUMN approver.appr_step IS '결재단계';

COMMENT ON COLUMN approver.appr_state IS '결재상태';

CREATE UNIQUE INDEX PK_approver
	ON approver (
		appr_id ASC,
		apprs_id ASC
	);

ALTER TABLE approver
	ADD
		CONSTRAINT PK_approver
		PRIMARY KEY (
			appr_id,
			apprs_id
		);

/* 진료, 수납, 등록 */
CREATE TABLE treatment (
	id INTEGER NOT NULL, /* 진료 ID */
	patient_id INTEGER NOT NULL, /* 환자 ID */
	cost_get INTEGER NOT NULL, /* 수납비용 */
	step VARCHAR2(20), /* 진료단계 */
	kind VARCHAR2(20) NOT NULL, /* 진료종류 */
	medi_trtmt VARCHAR2(30) NOT NULL /* 진료과 */
);

COMMENT ON TABLE treatment IS '진료, 수납, 등록';

COMMENT ON COLUMN treatment.id IS '진료 ID';

COMMENT ON COLUMN treatment.patient_id IS '환자 ID';

COMMENT ON COLUMN treatment.cost_get IS '수납비용';

COMMENT ON COLUMN treatment.step IS '환자가 방문 -> 수납 -> 진료 ->';

COMMENT ON COLUMN treatment.kind IS '초진, 재진, 예약';

COMMENT ON COLUMN treatment.medi_trtmt IS '진료과';

CREATE UNIQUE INDEX PK_treatment
	ON treatment (
		id ASC
	);

ALTER TABLE treatment
	ADD
		CONSTRAINT PK_treatment
		PRIMARY KEY (
			id
		);

ALTER TABLE treatment
	ADD
		CONSTRAINT CK_treatment
		CHECK (kind in ('초진', '재진', '예약'));

/* 병동 방 */
CREATE TABLE ward (
	building_id VARCHAR2(15) NOT NULL, /* 병동 id */
	id INTEGER NOT NULL /* 방 번호 */
);

COMMENT ON TABLE ward IS '병동 방';

COMMENT ON COLUMN ward.building_id IS '병동 id';

COMMENT ON COLUMN ward.id IS '방 번호';

CREATE UNIQUE INDEX PK_ward
	ON ward (
		id ASC
	);

ALTER TABLE ward
	ADD
		CONSTRAINT PK_ward
		PRIMARY KEY (
			id
		);

/* 근태 */
CREATE TABLE punch (
	employee_id VARCHAR2(20) NOT NULL, /* 직원 ID */
	in_date DATE NOT NULL, /* 출근시간 */
	out_date DATE /* 퇴근시간 */
);

COMMENT ON TABLE punch IS '근태';

COMMENT ON COLUMN punch.employee_id IS '직원 ID';

COMMENT ON COLUMN punch.in_date IS '출근시간';

COMMENT ON COLUMN punch.out_date IS '퇴근시간';

CREATE UNIQUE INDEX PK_punch
	ON punch (
		employee_id ASC,
		in_date ASC
	);

ALTER TABLE punch
	ADD
		CONSTRAINT PK_punch
		PRIMARY KEY (
			employee_id,
			in_date
		);

/* 직원로그 */
CREATE TABLE log (
	employee_id VARCHAR2(20) NOT NULL, /* 직원 ID */
	id INTEGER NOT NULL, /* 로그 ID */
	kind VARCHAR2(30) NOT NULL, /* 종류 */
	logdate DATE NOT NULL, /* 로그일시 */
	cont CLOB NOT NULL /* 내용 */
);

COMMENT ON TABLE log IS '직원로그';

COMMENT ON COLUMN log.employee_id IS '직원 ID';

COMMENT ON COLUMN log.id IS '로그 ID';

COMMENT ON COLUMN log.kind IS '종류';

COMMENT ON COLUMN log.logdate IS '로그일시';

COMMENT ON COLUMN log.cont IS '내용';

CREATE UNIQUE INDEX PK_log
	ON log (
		employee_id ASC,
		id ASC
	);

ALTER TABLE log
	ADD
		CONSTRAINT PK_log
		PRIMARY KEY (
			employee_id,
			id
		);

/* 파일 */
CREATE TABLE upfile (
	id INTEGER NOT NULL, /* 파일ID */
	name CLOB NOT NULL, /* 파일이름 */
	owner_id VARCHAR2(20) NOT NULL, /* 소유자ID */
	ext VARCHAR2(10), /* 확장자 */
	attatch_id INTEGER /* 첨부 ID */
);

COMMENT ON TABLE upfile IS '파일';

COMMENT ON COLUMN upfile.id IS '파일ID';

COMMENT ON COLUMN upfile.name IS '파일이름';

COMMENT ON COLUMN upfile.owner_id IS '소유자ID';

COMMENT ON COLUMN upfile.ext IS '확장자';

COMMENT ON COLUMN upfile.attatch_id IS '첨부 ID';

CREATE UNIQUE INDEX PK_upfile
	ON upfile (
		id ASC
	);

ALTER TABLE upfile
	ADD
		CONSTRAINT PK_upfile
		PRIMARY KEY (
			id
		);

/* 파일첨부대상 */
CREATE TABLE attach_target (
	id INTEGER NOT NULL /* 첨부 ID */
);

COMMENT ON TABLE attach_target IS '파일첨부대상';

COMMENT ON COLUMN attach_target.id IS '게시물 첨부가 가능한 글의 첨부 ID';

CREATE UNIQUE INDEX PK_attach_target
	ON attach_target (
		id ASC
	);

ALTER TABLE attach_target
	ADD
		CONSTRAINT PK_attach_target
		PRIMARY KEY (
			id
		);

/* 간호사 */
CREATE TABLE nurse (
	id VARCHAR2(20) NOT NULL /* 직원 ID */
);

COMMENT ON TABLE nurse IS '간호사';

COMMENT ON COLUMN nurse.id IS '직원 ID';

CREATE UNIQUE INDEX PK_nurse
	ON nurse (
		id ASC
	);

ALTER TABLE nurse
	ADD
		CONSTRAINT PK_nurse
		PRIMARY KEY (
			id
		);

/* 지급 */
CREATE TABLE payment (
	id VARCHAR2(20) NOT NULL, /* 직원 ID */
	payday DATE, /* 지급일 */
	sort VARCHAR2(20) NOT NULL, /* 구분 */
	fix VARCHAR2(20) NOT NULL /* 확정여부 */
);

COMMENT ON TABLE payment IS '지급';

COMMENT ON COLUMN payment.id IS '직원 ID';

COMMENT ON COLUMN payment.payday IS '지급일';

COMMENT ON COLUMN payment.sort IS '구분';

COMMENT ON COLUMN payment.fix IS '확정여부';

CREATE UNIQUE INDEX PK_payment
	ON payment (
		id ASC
	);

ALTER TABLE payment
	ADD
		CONSTRAINT PK_payment
		PRIMARY KEY (
			id
		);

ALTER TABLE doctor
	ADD
		CONSTRAINT FK_employee_TO_doctor
		FOREIGN KEY (
			id
		)
		REFERENCES employee (
			id
		);

ALTER TABLE ward_patient
	ADD
		CONSTRAINT FK_Patient_TO_ward_patient
		FOREIGN KEY (
			patient_id
		)
		REFERENCES Patient (
			id
		);

ALTER TABLE ward_patient
	ADD
		CONSTRAINT FK_building_TO_ward_patient
		FOREIGN KEY (
			building_id
		)
		REFERENCES building (
			id
		);

ALTER TABLE ward_patient
	ADD
		CONSTRAINT FK_ward_TO_ward_patient
		FOREIGN KEY (
			room_id
		)
		REFERENCES ward (
			id
		);

ALTER TABLE department
	ADD
		CONSTRAINT FK_department_TO_department
		FOREIGN KEY (
			dept_up_id
		)
		REFERENCES department (
			id
		);

ALTER TABLE foreign_patient
	ADD
		CONSTRAINT FK_Patient_TO_foreign_patient
		FOREIGN KEY (
			id
		)
		REFERENCES Patient (
			id
		);

ALTER TABLE items
	ADD
		CONSTRAINT FK_general_employee_TO_items
		FOREIGN KEY (
			manager
		)
		REFERENCES general_employee (
			id
		);

ALTER TABLE items
	ADD
		CONSTRAINT FK_general_employee_TO_items2
		FOREIGN KEY (
			submitter
		)
		REFERENCES general_employee (
			id
		);

ALTER TABLE general_employee
	ADD
		CONSTRAINT FK_employee_TO_general_empl
		FOREIGN KEY (
			id
		)
		REFERENCES employee (
			id
		);

ALTER TABLE employee
	ADD
		CONSTRAINT FK_department_TO_employee
		FOREIGN KEY (
			dept_id
		)
		REFERENCES department (
			id
		);

ALTER TABLE calender
	ADD
		CONSTRAINT FK_employee_TO_calender
		FOREIGN KEY (
			writer_id
		)
		REFERENCES employee (
			id
		);

ALTER TABLE chart
	ADD
		CONSTRAINT FK_Patient_TO_chart
		FOREIGN KEY (
			patient_id
		)
		REFERENCES Patient (
			id
		);

ALTER TABLE chart
	ADD
		CONSTRAINT FK_doctor_TO_chart
		FOREIGN KEY (
			doctor_id
		)
		REFERENCES doctor (
			id
		);

ALTER TABLE chart
	ADD
		CONSTRAINT FK_treatment_TO_chart
		FOREIGN KEY (
			treatment_id
		)
		REFERENCES treatment (
			id
		);

ALTER TABLE chart
	ADD
		CONSTRAINT FK_department_TO_chart
		FOREIGN KEY (
			dept_id
		)
		REFERENCES department (
			id
		);

ALTER TABLE chart
	ADD
		CONSTRAINT FK_attach_target_TO_chart
		FOREIGN KEY (
			attach_id
		)
		REFERENCES attach_target (
			id
		);

ALTER TABLE approval
	ADD
		CONSTRAINT FK_employee_TO_approval
		FOREIGN KEY (
			requester_id
		)
		REFERENCES employee (
			id
		);

ALTER TABLE approval
	ADD
		CONSTRAINT FK_attach_target_TO_approval
		FOREIGN KEY (
			attach_id
		)
		REFERENCES attach_target (
			id
		);

ALTER TABLE Patient
	ADD
		CONSTRAINT FK_doctor_TO_Patient
		FOREIGN KEY (
			doctor_id
		)
		REFERENCES doctor (
			id
		);

ALTER TABLE article
	ADD
		CONSTRAINT FK_employee_TO_article
		FOREIGN KEY (
			writer_id
		)
		REFERENCES employee (
			id
		);

ALTER TABLE article
	ADD
		CONSTRAINT FK_article_TO_article
		FOREIGN KEY (
			ref_id
		)
		REFERENCES article (
			id
		);

ALTER TABLE article
	ADD
		CONSTRAINT FK_attach_target_TO_article
		FOREIGN KEY (
			attach_id
		)
		REFERENCES attach_target (
			id
		);

ALTER TABLE article_tag
	ADD
		CONSTRAINT FK_article_TO_article_tag
		FOREIGN KEY (
			id
		)
		REFERENCES article (
			id
		);

ALTER TABLE article_tag
	ADD
		CONSTRAINT FK_employee_TO_article_tag
		FOREIGN KEY (
			user_id
		)
		REFERENCES employee (
			id
		);

ALTER TABLE article_tag
	ADD
		CONSTRAINT FK_tag_TO_article_tag
		FOREIGN KEY (
			tag_id,
			id2
		)
		REFERENCES tag (
			tag_id,
			id
		);

ALTER TABLE tag
	ADD
		CONSTRAINT FK_employee_TO_tag
		FOREIGN KEY (
			id
		)
		REFERENCES employee (
			id
		);

ALTER TABLE disease_record
	ADD
		CONSTRAINT FK_disease_TO_disease_record
		FOREIGN KEY (
			disease_id
		)
		REFERENCES disease (
			id
		);

ALTER TABLE disease_record
	ADD
		CONSTRAINT FK_chart_TO_disease_record
		FOREIGN KEY (
			chart_id
		)
		REFERENCES chart (
			id
		);

ALTER TABLE noty_article
	ADD
		CONSTRAINT FK_employee_TO_noty_article
		FOREIGN KEY (
			employee_id
		)
		REFERENCES employee (
			id
		);

ALTER TABLE noty_article
	ADD
		CONSTRAINT FK_article_TO_noty_article
		FOREIGN KEY (
			article_id
		)
		REFERENCES article (
			id
		);

ALTER TABLE prescription
	ADD
		CONSTRAINT FK_chart_TO_prescription
		FOREIGN KEY (
			chart_id
		)
		REFERENCES chart (
			id
		);

ALTER TABLE office
	ADD
		CONSTRAINT FK_building_TO_office
		FOREIGN KEY (
			building_id
		)
		REFERENCES building (
			id
		);

ALTER TABLE approver
	ADD
		CONSTRAINT FK_approval_TO_approver
		FOREIGN KEY (
			appr_id
		)
		REFERENCES approval (
			id
		);

ALTER TABLE approver
	ADD
		CONSTRAINT FK_employee_TO_approver
		FOREIGN KEY (
			apprs_id
		)
		REFERENCES employee (
			id
		);

ALTER TABLE treatment
	ADD
		CONSTRAINT FK_Patient_TO_treatment
		FOREIGN KEY (
			patient_id
		)
		REFERENCES Patient (
			id
		);

ALTER TABLE ward
	ADD
		CONSTRAINT FK_building_TO_ward
		FOREIGN KEY (
			building_id
		)
		REFERENCES building (
			id
		);

ALTER TABLE punch
	ADD
		CONSTRAINT FK_employee_TO_punch
		FOREIGN KEY (
			employee_id
		)
		REFERENCES employee (
			id
		);

ALTER TABLE log
	ADD
		CONSTRAINT FK_employee_TO_log
		FOREIGN KEY (
			employee_id
		)
		REFERENCES employee (
			id
		);

ALTER TABLE upfile
	ADD
		CONSTRAINT FK_employee_TO_upfile
		FOREIGN KEY (
			owner_id
		)
		REFERENCES employee (
			id
		);

ALTER TABLE upfile
	ADD
		CONSTRAINT FK_attach_target_TO_upfile
		FOREIGN KEY (
			attatch_id
		)
		REFERENCES attach_target (
			id
		);

ALTER TABLE nurse
	ADD
		CONSTRAINT FK_employee_TO_nurse
		FOREIGN KEY (
			id
		)
		REFERENCES employee (
			id
		);

ALTER TABLE payment
	ADD
		CONSTRAINT FK_employee_TO_payment
		FOREIGN KEY (
			id
		)
		REFERENCES employee (
			id
		);