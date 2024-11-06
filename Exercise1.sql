--create table department(d_no int, d_name varchar(30), manager_no varchar(30),
--                        CONSTRAINT deptPK PRIMARY Key (d_no));
--create table employee(employee_no varchar(30), e_name varchar(30), salart int, phone varchar(30), d_no int,
--                      CONSTRAINT empPK PRIMARY Key (employee_no),
--                      CONSTRAINT deptFK1 FOREIGN Key (d_no) references department(d_no));

--insert into department values (1,'CS','1457');
--insert into department values (2,'IS','1459');
--insert into department values (3,'SE','1444');
--insert into department values (4,'CS','1433');
--insert into department values (5,'CS','1411');
--insert into employee values('1456','Ahmad',4000,'0555558888',1);
--insert into employee values('1457','Khaled',4500,'0555553333',2);
--insert into employee values('1458','Ahmad',3000,'0555554444',3);
--insert into employee values('1459','Mohammed',6000,'0555555777',4);
--insert into employee values('1460','Noor',5000,'0555553334',2);                      

--SELECT * from department;

SELECT e_name ,salart from employee where salart > (select min(salart) from employee)
order by salart desc

select e_name from employee group by e_name
order by  max(salart)  desc

--select d_no from employee 
--union all
--select d_no from department

--select d_no from employee 
--intersect
--select d_no from department

--select d_no from department 
--except
--select d_no from employee

--select E.d_no , D.d_no from employee as E, department as D