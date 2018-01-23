--To check which database you are currently connected to:

select database();

--To check which user you have logged in as:

select user();

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

--The following command reloads the grant tables, thereafter enabling the newly created user to log in to the database:

flush privileges;

--Following are a list of privileges that can be set to Y/N for every user's entry in MySQL:

select_priv
insert_priv
update_priv
delete_priv
create_priv
drop_priv
reload_priv
shutdown_priv
process_priv
file_priv
grant_priv
references_priv
index_priv
alter_priv

--Using GRANT SELECT to add a new user:

grant select, insert, update, delete, create, drop on alpha.* to 'zara'@'localhost' identified by 'zara123';

--Admin commands:

use <databasename>;
show databases;
show tables;
show columns from <tablename>;
show index from <tablename>;
show table status like <tablename>\G;

----------------------------
--	MYSQL CONNECTION
----------------------------

