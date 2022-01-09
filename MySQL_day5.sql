

select * from employee ORDER BY salary desc;
select * from designation;
select * from project;

select ename, count(ename) from employee group by ename having count(ename) > 1;



SELECT salary, RANK() OVER ( ORDER BY salary ) salary_rank FROM employee;
SELECT salary, dense_RANK() OVER ( ORDER BY salary ) salary_rank FROM employee;

select eid, post from designation GROUP BY eid;

select max(salary), ename, post from employee, designation where employee.eid = designation.eid GROUP BY post;

select e.ename, s.salary from employee e, employee s where e.salary = s.salary and e.ename != s.ename;

select ename, ename from employee left join project using(eid) where project.eid is null;

select ename, eid from employee inner join project using(eid);
