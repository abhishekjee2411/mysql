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


