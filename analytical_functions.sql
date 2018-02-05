https://explainextended.com/
https://explainextended.com/2009/03/10/analytic-functions-first_value-last_value-lead-lag/
https://explainextended.com/2009/03/08/analytic-functions-sum-avg-row_number/
https://explainextended.com/2009/03/05/row-sampling/
https://gist.github.com/kauragist/4208992
http://www.helicaltech.com/analytical-functions-in-mysql/

"analytic_function (argument) OVER (PARTITION BY argument ORDER BY argument)"
"
argument -- column name
"

select empno, deptno, sal,
avg(sal) over (partition by deptno) as avg_dept_sal
from emp;
/*
Analytic functions are performed on a result set after all of the below clauses are complete
	Joins
	WHERE
	GROUP BY
	HAVING
but before the ORDER BY clause is complete.
*/

create table t_aggregator
(
	id number,
	grouper number,
	value number
);

insert into t_aggregator values (1,1,1);
insert into t_aggregator values (2,1,2);
insert into t_aggregator values (3,1,3);
insert into t_aggregator values (4,1,4);
insert into t_aggregator values (5,1,5);
insert into t_aggregator values (6,2,1);
insert into t_aggregator values (7,2,4);
insert into t_aggregator values (8,2,9);
insert into t_aggregator values (9,2,16);
insert into t_aggregator values (10,2,25);

select id, grouper, sum(value) over (partition by grouper order by id) as sum_total from t_aggregator;