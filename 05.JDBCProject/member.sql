-- SQL
--1) ������ ���� ���(DDL) : create - ���̺� ����, alter - �÷��߰�, drop - �ƿ� ���� (��Ű��ó��)
--2) ������ ���� ���(DML) : insert - �ο� �߰�, update - �೻���� ������ ��ȭ, delete - ���� ����, select - �˻� (�ν��Ͻ�ó��)
--3) ������ ���� ���(DCL) : grant - ������ �ִ� ��, revoke - ���� ���� ��
create user jspuserc identified by jsp1234
-- ���̺� ����
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
values('test2', '1234', '����', 22, '2', '��õ��', '2015-04-17')

drop table member

update member
set addr = '��õ��'
where id='test'

delete member
where id = 'test'