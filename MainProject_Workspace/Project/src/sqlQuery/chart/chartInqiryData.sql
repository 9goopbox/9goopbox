delete from chart;
delete from treatment;
delete from doctor;
delete from employee;
delete from patient;
delete from department;

delete from department;
insert into department values(1, '1번부서', null);
insert into department values(2, '2번부서', null);
insert into department values(3, '3번부서', null);    
insert into department values(4, '4번부서', null);
select * from department;

delete from patient;
insert into patient values(1009, '오진아', 17, '여자', null, null, null, '무릎관절염', null);
insert into patient values(2008, '김강희', 18, '그외', null, null, null, null, null);
insert into patient values(3007, '강감진', 19, '남자', null, null, null, null, null);
insert into patient values(4006, '유청휼', 20, '그외', null, null, null, null, null);
select * from patient;

delete from employee;
insert into employee values('bestdoc', 'SHA256HASHLONG!', '조은의', '돌 굴러가는 지역', null, 2560000,null,null,null,'bestdoc@bestdoc.com');
insert into employee values('gooddoc', 'SHA256HASHLONG!', '장조은', '돌 굴러가는 지역 2', null, 5120000,null,null,null,'gooddoc@bestdoc.com');
select * from employee;

delete from doctor;
insert into doctor values('bestdoc');
insert into doctor values('gooddoc');
select * from doctor;

-- treatment
delete from treatment;
insert into treatment values(11, 1009, 0, null, '초진');
insert into treatment values(22, 2008, 0, null, '재진');
insert into treatment values(33, 3007, 0, null, '예약');
insert into treatment values(44, 4006, 0, null, '재진');
select * from treatment;

delete from chart;
insert into chart values(11111, 3, 1009, 'bestdoc', 11, '신나는 진료제목', '감기몸살', '진료 기록은 매우 긺', 39800, null);
insert into chart values(22222, null, 1009, 'gooddoc', 11, '개꿀 진료제목', 'STEAM 전염병', '진료 기록은 매우 긺긺', 39880, null);
insert into chart values(33333, null, 2008, 'gooddoc', 22, '약간 긴 진료제목을', '트위터 전염병', '기록 주제에 짧', 39700, null);
select * from chart;

commit;