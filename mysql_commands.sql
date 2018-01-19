--To check which database you are currently connected to:

select database();

/*
If you have not selected any database, then the result is NULL.
If you have, the result is the name of the database you are connectred to currently.
*/

--To list the databases that are hosted in MySQL server

show databases;

--To list the tables contained in the current database:

show tables;

--Describe a particular table:

desc <tablename>;
--or
describe <tablename>;

--To show the DDL command that was used to create the table:

show create table <tablename>;

--To list the indexes on a table:

show index from <tablename>;

--To add a user to the database "mysql":

insert into user (host, user, password, select_priv, insert_priv, update_priv)
values ('localhost','guest',password('guest123'),'Y','Y','Y');

