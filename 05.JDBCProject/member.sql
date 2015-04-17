-- SQL
--1) 데이터 정의 언어(DDL) : create - 테이블 생성, alter - 컬럼추가, drop - 아예 없앰 (스키마처리)
--2) 데이터 조작 언어(DML) : insert - 로우 추가, update - 행내에서 데이터 변화, delete - 행을 삭제, select - 검색 (인스턴스처리)
--3) 데이터 제어 언어(DCL) : grant - 권한을 주는 것, revoke - 권한 뺏는 것
create user jspuserc identified by jsp1234
-- 테이블 생성
create table member(
	id			varchar2(15)		primary key,
	password 	varchar2(10),
	name 		varchar2(20),
	age 		number,
	gender 		char(1),
	addr 		varchar2(100),
	regdate 	date				default sysdate
)

select * from member

insert into member
values('test2', '1234', '지수', 22, '2', '부천시', '2015-04-17')

drop table member

update member
set addr = '부천시'
where id='test'

delete member
where id = 'test'