Delete From Chart;
Delete From Treatment;
Delete From Doctor;
Delete From Employee;
Delete From Patient;
Delete From Department;

delete from department;
insert into department values(1, '의사부', null);
insert into department values(2, '간호부', null);
insert into department values(3, '총무부', null);   
insert into department values(4, '4번부서', null);
insert into department values(332, '정형외과', null);
select * from department;

delete from patient;
insert into patient values(1009, '오진아', 17, '여자', null, null, null, '무릎관절염', null);
insert into patient values(2008, '김강희', 18, '그외', null, null, null, null, null);
insert into patient values(3007, '강감진', 19, '남자', null, null, null, null, null);
insert into patient values(4006, '유청휼', 20, '그외', null, null, null, null, null);
insert into patient values(2,'병희', 23, '남자', '2123421', 175, null, null, null);    
insert into patient values(3,'병희', 23, '남자', '2123421', 175, null, null, null);
insert into patient values(4,'진형', 23, '남자', '2123421', 175, null, null, null);
insert into patient values(5,'소연', 23, '남자', '2123421', 175, null, null, null);
insert into patient values(6,'갈살', 23, '남자', '2123421', 175, null, null, null);
insert into patient values(1,'병희', 23, '남자', '2123421', 175, null, null, null);
select * from patient;

delete from employee;
insert into employee values('bestdoc', 'SHA256HASHLONG!', '조은의', '돌 굴러가는 지역', '원장', 2560000,1,'010-1111-1111','bestdoc@bestdoc.com','12-02-22','15-02-22', '1.jpg');
insert into employee values('gooddoc', 'SHA256HASHLONG!', '오소리', '돌 굴러가는 지역4', '레지던트', 2560000,1,'010-2222-2222','gooddoc2@bestdoc.com','12-05-30','14-05-30', '2.jpg');
insert into employee values('goodnur', 'SHA256HASHLONG!', '장조은', '돌 굴러가는 지역 2', '간호사', 5120000,2,'010-3333-3333','gooddoc@bestdoc.com','14-12-24','15-12-24', '3.jpg');
insert into employee values('xx', 'xx', '민경훈', '돌 굴러가는 지역 3', '과장', 5120000,3,'010-4444-4444','xx@bestdoc.com','13-01-11','15-01-11', '4.jpg');
insert into employee values('이름씨', '1234', '바보', '서울', '의사', '2323', null, null, 'dfdf@dfdf.com','13-01-11','15-01-11','5.jpg');
select * from employee;

delete from doctor;
insert into doctor values('bestdoc');
insert into doctor values('gooddoc');
select * from doctor;

-- treatment
delete from treatment;
insert into treatment values(11, 1009, 0, null, '초진', '없음');
insert into treatment values(22, 2008, 0, null, '재진', '물리치료과');
insert into treatment values(33, 3007, 0, null, '예약', '안과');
insert into treatment values(44, 4006, 0, null, '재진', '치과');
insert into treatment values(treatment_sequence.nextVal ,Patient_sequence.nextVal, 0, null, '초진', '안과');
select * from treatment;

delete from chart;
insert into chart values(11111, 3, 1009, 'bestdoc', 11, '신나는 진료제목', '감기몸살', '진료 기록은 매우 긺', 39800, null);
insert into chart values(22222, null, 1009, 'gooddoc', 11, '개꿀 진료제목', 'STEAM 전염병', '진료 기록은 매우 긺긺', 39880, null);
insert into chart values(33333, null, 2008, 'gooddoc', 22, '약간 긴 진료제목을', '트위터 전염병', '기록 주제에 짧', 39700, null);
select * from chart;

delete from article;
insert into article values(1, 'bestdoc', '이번에 들어온 애들 실력이 최고인듯', '잡담', 1, null, null,'15-02-26');
insert into article values(2, 'gooddoc', '나는 모르겠다', '잡담', 1, 1,null,'15-02-28');

select * from article;

delete from general_employee;
insert into general_employee values('bestdoc');
insert into general_employee values('gooddoc');
insert into general_employee values('goodnur');
insert into general_employee values('xx');
insert into general_employee values('이름씨');
select * from general_employee;

insert into payment values('bestdoc', '2015-02-14', '월급', '지급');
insert into payment values('gooddoc', '2015-02-13', '보너스', '지급');
insert into payment values('xx', '2015-01-20', '야근수당', '미지급');
insert into payment values('goodnur', '2015-02-23', '보너스', '미지급');
insert into payment values('이름씨', '2015-02-28', '월급', '미지급');
commit;