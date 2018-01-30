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