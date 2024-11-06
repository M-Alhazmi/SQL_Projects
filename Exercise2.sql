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
--SELECT * from employee

select d_no, sum(salart) from employee 
group by d_no
having sum(salart)>6000

--select*from employee where salart>(
--select min(salart)from employee where d_no =2) and (d_no!=2) 

--select avg(salart) from employee 
--group by d_no
--having avg(salart)>3000

--select e_name,d_no,salart from employee 
--where (d_no !=4)and (salart > (select avg(salart) from employee where d_no=4))