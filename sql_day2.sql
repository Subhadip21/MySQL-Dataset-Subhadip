
select * from employee;
select * from project;
select * from designation;

select * from employee, project where eid not in( employee.eid = project.eid);

select ename from employee left join project using(eid) where employee.eid = project.eid is null;

select count(eid), pname from  project group by pid; 

select ename from employee where eid in(select eid from designation WHERE post = "Manager");

select eid from designation WHERE post = "Manager";

insert into employee value(16,"Kavita","Pune",45000);

insert into project value(16,"p3","andrioid","Mumbai");

insert into designation value(16,"developer");

select eid, ename from employee group by eid having mod(eid,2)=1;

select ename, salary from employee order by salary desc limit 2,1;

select * from employee order by salary desc;