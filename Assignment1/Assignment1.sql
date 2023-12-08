Use FirstDb
drop table Employee
--primary key
--not null
--default
------------------------
--check constraint
create table Employee
(Id int primary key,
Fname nvarchar(50) not null,
Lname nvarchar(50) not null,
Salary float check(Salary>=10000 and Salary<=1500000))
insert into Employee values(1,'sam', 'dicosta',5000)
insert into Employee values(2,'Ram', 'kumar',8000)
--Msg 547, Level 16, State 0, Line 13
--The INSERT statement conflicted with the CHECK constraint "CK__Employee__Salary__4F7CD00D". T
--The conflict occurred in database "FirstDb", table "dbo.Employee", column 'Salary'.
-------------------
--unique: cannot insert duplicate values, you can insert null only once
create table Emp
(Id int primary key,
Fname nvarchar(50) not null,
Lname nvarchar(50) not null,
Mobile varchar(50) unique,
Email nvarchar(100) unique
)
insert into Emp values(1,'raj','kumar',8967548398,'raj@yahoo.com')
insert into Emp values(2,'Nithin','kumar',8967548398,'raj12@yahoo.com')
--Msg 2627, Level 14, State 1, Line 29
--Violation of UNIQUE KEY constraint 'UQ__Emp__3214EC07F9A02FE7'. Cannot insert duplicate key in object 'dbo.Emp'. The duplicate key value is (1).
--The statement has been terminated.
insert into Emp(Id,Fname,Lname,Mobile)values(12,'Rohith','Mangal',8967548398)
select *from Emp
insert into Emp(Id,Fname,Lname,Email)values(9,'Gaurav','Sharma','gv_sharma@mail.com')
select *from Emp
---identity
--identity(seed,increment)
--1,1
drop table Emp
create table Emp
(Id int identity primary key,
Fname nvarchar(50) not null,
Lname nvarchar(50) not null,
Mobile varchar(50) unique not null,
Email nvarchar(100) unique not null
)
insert into Emp values('Nithin','kumar','8967548398','raj12@yahoo.com')
insert into Emp values('Raj','Thakur','8967548390','raj@yahoo.com')
insert into Emp values('Abhinav','Sharma','8967548378','abhinav@yahoo.com')
select *from Emp
--seed,increment
create table Emp
(Id int identity(100,5) primary key,
Fname nvarchar(50) not null,
Lname nvarchar(50) not null,
Mobile varchar(50) unique not null,
Email nvarchar(100) unique not null
)
insert into Emp values('Nithin','kumar','8967548398','raj12@yahoo.com')
insert into Emp values('Raj','Thakur','8967548390','raj@yahoo.com')
insert into Emp values('Abhinav','Sharma','8967548378','abhinav@yahoo.com')
select *from Emp








