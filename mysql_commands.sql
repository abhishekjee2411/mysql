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

FORCE INDEX
USE INDEX
IGNORE INDEX
	--to use or ignore an index listed in the possible_keys column.
	


----------------------------
--	MYSQL CONNECTION
----------------------------





------------------------------
--	MYSQL DATABASE ENGINES  --
------------------------------
http://zetcode.com/databases/mysqltutorial/
http://zetcode.com/databases/mysqltutorial/storageengines/

"
MySQL Storage Engines
	A storage engine is a software module that a DBMS uses to create, read from, and update data in a database.
	
Types of storage engines in MySQL:
	Transactional
	Non-transactional
	
MySQL 5.5 onwards:
	default storage engine = InnoDB
	
MyISAM
	Fast storage engine.
	Does not support transactions.
	Supports - table-level locking.
	Used mostly in Web and Data Warehousing.
InnoDB
	ACID compliant - Atomic, Consistent, Isolated, Durable
	Supports - row-level locking, crash-recovery and multi-version-concurrency control.
	The only engine which provides foreign key referential integrity constraint.
CSV
	Stores data in CSV files.
	Very flexible, because data provided in this format (CSV) is easily integrated into other applications.
Memory
	Creates tables in memory.
	Fastest engine.
	Supports - table-level locking.
	Does not support transactions.
	Ideal for creating temporary tables or quick lookups.
	Data persists throughout the session only.
Merge
	
Archive
	Optimized for high-speed insertions.
	It compresses data as it is entered.
	Does not support transactions.
	Ideal for storing and retrieving large amounts of seldom-referenced historical, archived data.
Federated
	
Blackhole
	
Example
	

"
--Storage engine is specified at the time of table creation.
create table cars
(
	id integer primary key,
	name varchar(50),
	cost integer
) engine='MyISAM';

--To list the tables in all the databases and their engines:
select table_schema, table_name, engine from information_schema.tables order by engine, table_schema, table_name;

--To alter the engine of a table:
alter table cars engine='InnoDB';

