create database Assignment1 on primary
(name='Customer_Db',Filename='D:\Mphasis\Mphasis Phase2\Day-1\Assignment1_Db_mdf'
,size=24mb,maxsize=48mb,filegrowth=8mb)
log on(name='Customer_Db_log',Filename='D:\Mphasis\Mphasis Phase2\Day-1\Assignment1_Db_log_ldf')
collate SQL_Latin1_General_CP1_CI_AS

use Assignment1
create table Product(
PId int identity(50,1) primary key,
PName nvarchar(50) not null,
PPrice int check(PPrice>=50 and PPrice<=100000),
PComapany nvarchar(50) not null,
PQty int check(PQty>=1)  default 1)

insert into Product(PName,PPrice,PComapany) values('Tv',10500,'LG')
insert into Product values('Tab',7000,'Apple',2)
insert into Product values('Tv',8000,'Samsung',3)
insert into Product values('Laptop',67000,'Dell',4)
insert into Product values('Mobile',70000,'Redmi',5)
insert into Product(PName,PPrice,PComapany) values('Mobile',80000,'Nokia')

select * from Product