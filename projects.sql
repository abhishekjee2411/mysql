https://www.w3resource.com/sql-exercises/
https://www.w3resource.com/sql-exercises/sql-retrieve-from-table.php
https://dev.mysql.com/doc/employee/en/employees-introduction.html
http://www.wellho.net/mouth/158_MySQL-LEFT-JOIN-and-RIGHT-JOIN-INNER-JOIN-and-OUTER-JOIN.html

---------------------------------------------------------------------------------------------------------------------------------------------------
"1"

"
demo/demo
"

"
salesman_id  name        city        commission
-----------  ----------  ----------  ----------
5001         James Hoog  New York    0.15
5002         Nail Knite  Paris       0.13
5005         Pit Alex    London      0.11
5006         Mc Lyon     Paris       0.14
5003         Lauson Hen              0.12
5007         Paul Adam   Rome        0.13
"

create table salesman
(
	salesman_id int not null,
	name varchar(50),
	city varchar(20),
	commission float(5,2)
);

insert into salesman values (5001,'James Hoog','New York',0.15);
insert into salesman values (5002,'Nail Knite','Paris',0.13);
insert into salesman values (5003,'Pit Alex','London',0.11);
insert into salesman values (5004,'Mc Lyon','Paris',0.14);
insert into salesman values (5005,'Lauson Hen','',0.12);
insert into salesman values (5006,'Paul Adam','Rome',0.13);

---------------------------------------------------------------------------------------------------------------------------------------------------
"2"

select "This is SQL Exercise, Practice and Solution!" as STMT from dual;

---------------------------------------------------------------------------------------------------------------------------------------------------
"3"

select 1 as a, 2 as b, 3 as c from dual;
---------------------------------------------------------------------------------------------------------------------------------------------------
"4"

select 10+15 as "Sum of 10 and 15" from dual;
---------------------------------------------------------------------------------------------------------------------------------------------------
"5"

select (10+15*8) as ARith from dual;
---------------------------------------------------------------------------------------------------------------------------------------------------
"6"

select name, commission from salesman;
---------------------------------------------------------------------------------------------------------------------------------------------------
"7"

"
ord_no      purch_amt   ord_date    customer_id  salesman_id
----------  ----------  ----------  -----------  -----------
70001       150.5       2012-10-05  3005         5002
70009       270.65      2012-09-10  3001         5005
70002       65.26       2012-10-05  3002         5001
70004       110.5       2012-08-17  3009         5003
70007       948.5       2012-09-10  3005         5002
70005       2400.6      2012-07-27  3007         5001
70008       5760        2012-09-10  3002         5001
70010       1983.43     2012-10-10  3004         5006
70003       2480.4      2012-10-10  3009         5003
70012       250.45      2012-06-27  3008         5002
70011       75.29       2012-08-17  3003         5007
70013       3045.6      2012-04-25  3002         5001
"

create table orders
(
	ord_no int not null,
	purch_amt float(10,2),
	ord_date date,
	customer_id int,
	salesman_id int
);

insert into orders values (70001,150.5,'2012-10-05',3005,5002);
insert into orders values (70009,270.65,'2012-09-10',3001,5005);
insert into orders values (70002,65.26,'2012-10-05',3002,5001);
insert into orders values (70004,110.5,'2012-08-17',3009,5003);
insert into orders values (70007,948.5,'2012-09-10',3005,5002);
insert into orders values (70005,2400.6,'2012-07-27',3007,5001);
insert into orders values (70008,5760,'2012-09-10',3002,5001);
insert into orders values (70010,1983.43,'2012-10-10',3004,5006);
insert into orders values (70003,2480.4,'2012-10-10',3009,5003);
insert into orders values (70012,250.45,'2012-06-27',3008,5002);
insert into orders values (70011,75.29,'2012-08-17',3003,5007);
insert into orders values (70013,3045.6,'2012-04-25',3002,5001);


select ord_date, salesman_id, ord_no, purch_amt from orders;

---------------------------------------------------------------------------------------------------------------------------------------------------
"8"

alter table orders add
(
	constraint orders_salesman_fk foreign key(salesman_id) references salesman(salesman_id)
);

alter table orders add
(
	constraint foreign key orders_salesman_fk(salesman_id) references salesman(salesman_id)
	on delete cascade
);
---------------------------------------------------------------------------------------------------------------------------------------------------
"9"
select name, city from salesman where city='Paris';
---------------------------------------------------------------------------------------------------------------------------------------------------
"10"
create table customer
(
	customer_id int not null,
	cust_name varchar(50),
	city varchar(20),
	grade int,
	salesman_id int,
	foreign key (salesman_id) references salesman(salesman_id) on delete cascade
);

"
3002         Nick Rimando  New York    100         5001
3005         Graham Zusi   California  200         5002
3001         Brad Guzan    London                  5005
3004         Fabian Johns  Paris       300         5006
3007         Brad Davis    New York    200         5001
3009         Geoff Camero  Berlin      100         5003
3008         Julian Green  London      300         5002
3003         Jozy Altidor  Moscow      200         5007
"

insert into customer values (3002,'Nick Rimando','New York',100,5001);
insert into customer values (3005,'Graham Zusi','California',200,5002);
insert into customer values (3001,'Brad Guzan','London',NULL,5005);
insert into customer values (3004,'Fabian Johns','Paris',300,5006);
insert into customer values (3007,'Brad Davis','New York',200,5001);
insert into customer values (3009,'Geoff Camero','Berlin',100,5003);
insert into customer values (3008,'Julian Green','London',300,5002);
insert into customer values (3003,'Jozy Altidor','Moscow',200,5007);

---------------------------------------------------------------------------------------------------------------------------------------------------
"11"


---------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------
"13"

"
YEAR SUBJECT                   WINNER                                        COUNTRY                CATEGORY
---- ------------------------- --------------------------------------------- ------------------------- ------------
1970 Physics                   Hannes Alfven                                 Sweden                 Scientist
1970 Physics                   Louis Neel                                    France                 Scientist
1970 Chemistry                 Luis Federico Leloir                          France                 Scientist
1970 Physiology                Ulf von Euler                                 Sweden                 Scientist
1970 Physiology                Bernard Katz                                  Germany                Scientist
1970 Literature                Aleksandr Solzhenitsyn                        Russia                 Linguist
1970 Economics                 Paul Samuelson                                USA                    Economist
1970 Physiology                Julius Axelrod                                USA                    Scientist
1971 Physics                   Dennis Gabor                                  Hungary                Scientist
1971 Chemistry                 Gerhard Herzberg                              Germany                Scientist
1971 Peace                     Willy Brandt                                  Germany                Chancellor
1971 Literature                Pablo Neruda                                  Chile                  Linguist
1971 Economics                 Simon Kuznets                                 Russia                 Economist
1978 Peace                     Anwar al-Sadat                                Egypt                  President
1978 Peace                     Menachem Begin                                Israel                 Prime Minister
1987 Chemistry                 Donald J. Cram                                USA                    Scientist
1987 Chemistry                 Jean-Marie Lehn                               France                 Scientist
1987 Physiology                Susumu Tonegawa                               Japan                  Scientist
1994 Economics                 Reinhard Selten                               Germany                Economist
1994 Peace                     Yitzhak Rabin                                 Israel                 Prime Minister
1987 Physics                   Johannes Georg Bednorz                        Germany                Scientist
1987 Literature                Joseph Brodsky                                Russia                 Linguist
1987 Economics                 Robert Solow                                  USA                    Economist
1994 Literature                Kenzaburo Oe                                  Japan                  Linguist
"

create table nobel_win
(
	year int,
	subject varchar(20),
	winner varchar(50),
	country varchar(20),
	category varchar(20)
);

insert into nobel_win values (1970,'Physics','Hannes Alfven','Sweden','Scientist');
insert into nobel_win values (1970,'Physics','Louis Neel','France','Scientist');
insert into nobel_win values (1970,'Chemistry','Luis Federico Leloir','France','Scientist');
insert into nobel_win values (1970,'Physiology','Ulf von Euler','Sweden','Scientist');
insert into nobel_win values (1970,'Physiology','Bernard Katz','Germany','Scientist');
insert into nobel_win values (1970,'Literature','Aleksandr Solzhenitsyn','Russia','Linguist');
insert into nobel_win values (1970,'Economics','Paul Samuelson','USA','Economist');
insert into nobel_win values (1970,'Physiology','Julius Axelrod','USA','Scientist');
insert into nobel_win values (1971,'Physics','Dennis Gabor','Hungary','Scientist');
insert into nobel_win values (1971,'Chemistry','Gerhard Herzberg','Germany','Scientist');
insert into nobel_win values (1971,'Peace','Willy Brandt','Germany','Chancellor');
insert into nobel_win values (1971,'Literature','Pablo Neruda','Chile','Linguist');
insert into nobel_win values (1971,'Economics','Simon Kuznets','Russia','Economist');
insert into nobel_win values (1978,'Peace','Anwar al-Sadat','Egypt','President');
insert into nobel_win values (1978,'Peace','Menachem Begin','Israel','Prime Minister');
insert into nobel_win values (1987,'Chemistry','Donald J. Cram','USA','Scientist');
insert into nobel_win values (1987,'Chemistry','Jean-Marie Lehn','France','Scientist');
insert into nobel_win values (1987,'Physiology','Susumu Tonegawa','Japan','Scientist');
insert into nobel_win values (1994,'Economics','Reinhard Selten','Germany','Economist');
insert into nobel_win values (1994,'Peace','Yitzhak Rabin','Israel','Prime Minister');
insert into nobel_win values (1987,'Physics','Johannes Georg Bednorz','Germany','Scientist');
insert into nobel_win values (1987,'Literature','Joseph Brodsky','Russia','Linguist');
insert into nobel_win values (1987,'Economics','Robert Solow','USA','Economist');
insert into nobel_win values (1994,'Literature','Kenzaburo Oe','Japan','Linguist');

select * from nobel_win where year=1971 and subject='Literature';

---------------------------------------------------------------------------------------------------------------------------------------------------
"14"

select year, subject, winner from nobel_win where winner='Dennis Gabor';
---------------------------------------------------------------------------------------------------------------------------------------------------
"15"

select winner from nobel_win where subject='Physics' and year=1950;
---------------------------------------------------------------------------------------------------------------------------------------------------
"16"

select year, subject, winner, country from nobel_win where subject='Chemistry' and year between 1965 and 1975;
select year, subject, winner, country from nobel_win where subject='Chemistry' and year>=1965 and year<=1975;
---------------------------------------------------------------------------------------------------------------------------------------------------
"17"

select * from nobel_win where category='Prime Minister' and year>1972 and winner in ('Menachem Begin','Yitzhak Rabin');
---------------------------------------------------------------------------------------------------------------------------------------------------
"18"

select * from nobel_win where winner regexp '^Louis';
---------------------------------------------------------------------------------------------------------------------------------------------------
"19"


---------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------------------------------------