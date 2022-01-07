
select * from employee order by salary desc;

select e.ename, s.salary from employee e, employee s
where e.ename != s.ename and e.salary = s.salary order by salary;

select count(eid), post from designation group by post;

select max(salary), post from employee, designation
 where employee.eid = designation.eid group by post;

select ename, max(salary) from employee where eid in(select eid from designation where post = "Manager");

select ename, count(ename) from employee group by ename having count(ename) > 1;

select salary from employee order by salary desc limit 3,1;

select count(eid), post from designation group by post having count(post) > 2;