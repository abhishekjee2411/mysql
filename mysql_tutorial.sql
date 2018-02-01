drop table tutorials_tbl;

create table tutorials_tbl
(
tutorial_id int not null auto_increment,
tutorial_title varchar(100) not null,
tutorial_author varchar(40) not null,
submission_date date,
primary key (tutorial_id)
);

insert into tutorials_tbl (tutorial_title, tutorial_author, submission_date) values ('Learn PHP','John Poul',NOW());
insert into tutorials_tbl (tutorial_title, tutorial_author, submission_date) values ('Learn MySQL','Abdul S',NOW());
insert into tutorials_tbl (tutorial_title, tutorial_author, submission_date) values ('Java Tutorial','Sanjay','2007-05-06');

--OFFSET
	--the value from where the SELECT statement will start selecting the rows/records.
--LIMIT
	--the number of records that the SELECT statement would return.
	
select * from tutorials_tbl limit 2;

--WHERE clause
	--Search using primary key is faster.

select * from tutorials_tbl where tutorial_author='Sanjay';

/*
	<, >, <=, >=, =, !=
	AND, OR, NOT
	LIKE	:	you can perform a case-insensitive search using LIKE.
	BINARY	:	if BINARY is used in the WHERE clause, then case-sensitive search is imposed.
*/

select * from tutorials_tbl where tutorial_author='sanjay';
select * from tutorials_tbl where binary tutorial_author='sanjay';

--UPDATE

update tutorials_tbl set tutorial_title='Learning JAVA' where tutorial_id=3;

--NULL

create table tcount_tbl
(
tutorial_author varchar(40) not null,
tutorial_count int
);

INSERT INTO tcount_tbl
(tutorial_author, tutorial_count) values ('mahran', 20);

INSERT INTO tcount_tbl
(tutorial_author, tutorial_count) values ('mahnaz', NULL);

INSERT INTO tcount_tbl
(tutorial_author, tutorial_count) values ('Jen', NULL);

INSERT INTO tcount_tbl
(tutorial_author, tutorial_count) values ('Gill', 20);

--REGEXP (Regular Expressions)



--TRANSACTIONS--

"
BEGIN WORK
.
.
.
COMMIT/ROLLBACK
"

"
AUTOCOMMIT
	1	TRUE	Statements will autocommit by default when it finishes.
	0	FALSE	Statements will not autocommit.
"	
show global variables like 'autocommit';

--TRANSACTION-SAFE TABLE TYPES IN MYSQL

InnoDB
	It is a type of database that supports transactions.

-------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------
--REFERENTIAL INTEGRITY--
-------------------------

create table demotab
(
slno int unique
);

insert into demotab values (1);
insert into demotab values (2);
insert into demotab values (3);
insert into demotab values (30);
insert into demotab values (4);
insert into demotab values (NULL);
insert into demotab values (5);
insert into demotab values (6);
insert into demotab values (NULL);
insert into demotab values (60);
insert into demotab values (7);
insert into demotab values (80);
insert into demotab values (800);
insert into demotab values (9);
insert into demotab values (NULL);

--Unique key allows NULL values.

delete from demotab;

insert ignore into demotab values (1);
insert ignore into demotab values (2);
insert ignore into demotab values (3);
insert ignore into demotab values (3);
insert ignore into demotab values (4);
insert ignore into demotab values (NULL);
insert ignore into demotab values (5);
insert ignore into demotab values (6);
insert ignore into demotab values (NULL);
insert ignore into demotab values (6);
insert ignore into demotab values (7);
insert ignore into demotab values (8);
insert ignore into demotab values (8);
insert ignore into demotab values (9);
insert ignore into demotab values (NULL);

--INSERT IGNORE will silently discard (without generating an error) the insert if that insert causes duplicate values to be inserted into the table.

delete from demotab;

replace into demotab values (1);
replace into demotab values (2);
replace into demotab values (3);
replace into demotab values (3);
replace into demotab values (4);
replace into demotab values (NULL);
replace into demotab values (5);
replace into demotab values (6);
replace into demotab values (NULL);
replace into demotab values (6);
replace into demotab values (7);
replace into demotab values (8);
replace into demotab values (8);
replace into demotab values (9);
replace into demotab values (NULL);

--REPLACE will replace the existing value with its duplicate without generating an error.

--IFNULL() to substitute the NULL values with another tangible value, say 0 :

select ifnull(slno,0) from demotab;

--ISNULL() will return 1 if the value is NULL, 0 otherwise

select isnull(slno) from demotab;

--PRIMARY KEY--

create table demotab2
(
	slno int primary key
);

insert into demotab2 values (1);
insert into demotab2 values (null);
insert into demotab2 values (2);
insert into demotab2 values (null);

--Primary key does not permit NULL values.

create table demotab3
(
	slno int
);

insert into demotab3 values (1);
insert into demotab3 values (2);
insert into demotab3 values (3);
insert into demotab3 values (3);
insert into demotab3 values (4);
insert into demotab3 values (NULL);
insert into demotab3 values (5);
insert into demotab3 values (6);
insert into demotab3 values (NULL);
insert into demotab3 values (6);
insert into demotab3 values (7);
insert into demotab3 values (8);
insert into demotab3 values (8);
insert into demotab3 values (9);
insert into demotab3 values (NULL);

