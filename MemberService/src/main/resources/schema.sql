DROP TABLE IF EXISTS TB_MEMBER;
create table IF NOT EXISTS TB_MEMBER(
MEMBER_ID integer not null AUTO_INCREMENT,
FIRST_NAME varchar (100),
LAST_NAME varchar(100),
DOJ TIMESTAMP,
CREATED_BY varchar(255), 
CREATED_DT TIMESTAMP,
MODIFIED_BY varchar(255), 
MODIFIED_DT TIMESTAMP,
PRIMARY KEY (MEMBER_ID)
);
DROP TABLE IF EXISTS TB_FILE;
create table IF NOT EXISTS TB_FILE(
FILE_ID integer not null AUTO_INCREMENT,
FILE blob,
FILE_TYPE varchar(40),
FILE_NAME varchar(50),
CREATED_BY varchar(255),
CREATED_DT TIMESTAMP,
MODIFIED_BY varchar(255),
MODIFIED_DT TIMESTAMP,
MEMBER_ID integer,
PRIMARY KEY (FILE_ID),
foreign key (MEMBER_ID) references TB_MEMBER(MEMBER_ID)
);

