--创建数据库
CREATE TABLESPACE VechDB
DATAFILE 'G:\Database\VechDB.DBF'
SIZE 5M
AUTOEXTEND ON NEXT 1M 
MAXSIZE UNLIMITED
LOGGING;
--创建总数据库账号
CREATE USER vechAdmin IDENTIFIED BY admin DEFAULT TABLESPACE VechDB;
GRANT CONNECT,RESOURCE TO vechAdmin;
--下面是连接vechAdmin账户进行操作
--用户列表序列
create sequence userid_seq
     minvalue 1
     maxvalue 9999999999999999999999999999
     start with 1
     increment by 1
     nocache;


--创建用户表
CREATE TABLE users
(	
		userid int PRIMARY KEY NOT NULL,
		username varchar2(20),
		email VARCHAR2(20),
		password VARCHAR2(20),
		phonenumber VARCHAR2(20),
		address varchar2(100),
		sex varchar2(10)
);
CREATE OR REPLACE TRIGGER MY_TGR
before INSERT ON users
FOR EACH ROW
DECLARE
 NEXT_ID NUMBER;
BEGIN
 SELECT userid_seq.NEXTVAL INTO NEXT_ID FROM DUAL;
 :new.userid := NEXT_ID;
END;
/

--
CREATE TABLE imginfo
(
		path varchar2(200) PRIMARY KEY NOT NULL,
		username varchar2(20)
);
CREATE TABLE videoinfo
(
		path varchar2(200) PRIMARY KEY NOT NULL,
		username varchar2(20)
);





