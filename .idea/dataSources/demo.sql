

create database demo;
use demo;
create table products(
    id int not null auto_increment primary key,
    productCode varchar(20) not null ,
    productName varchar(50) not null ,
    productPrice int ,
    productAmount int,
    productDescription varchar(100),
    productstartus boolean
);
insert into products values (id,'@23','keo',10000,10,'keo ngot',1);
insert into products  values (id,'@24','keo2',20000,20,'keo chua',2);
insert into products values (id,'@25','keo3',30000,30,'keo dang',11);
insert into products values (id,'@26','keo4',40000,40,'keo deo',12);
insert into products values (id,'@27','keo5',50000,50,'keo cao su',13);
drop table products;
create unique index uni on products(productCode);
create index composite on products(productName,productPrice);
explain select productCode from products where productCode = '@023';
create view tensp_giasp as
    select productName,productPrice
from products;
select *from tensp_giasp;
create or replace tensp_giasp