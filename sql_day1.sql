
select * from employee;
select * from project;
select * from designation;

select ename, max(salary), post from employee, designation
 where employee.eid = designation.eid group by post;

select count(ename), max(salary), pid, pname from employee, project where employee.eid = project.eid
group by pid;

select * from employee right join project on(employee.eid = project.eid);

select eid, ename from employee  left join project using(eid) where project.eid is null;

select ename from employee where ename regexp '^[^aeiou].*[^aeiou]$';

update employee set salary = salary + salary * .5 where eid in(7,15);