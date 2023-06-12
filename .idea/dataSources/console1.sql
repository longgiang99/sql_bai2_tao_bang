use quanlibanhang;
create table names(
    name varchar(50)not null
);
create table sanPham(
    thuocla varchar(20)not null
);
create table abc(
    abcahd varchar(50)not null
);
insert into customer (cID, cName, cAge) VALUES (1,'giang',20);
insert into customer value (2,'nam',30);
insert into customer (cName, cAge) VALUE ( 'son',20);
select *from customer;
select cAge from customer;
select * from customer;
select cName from customer;
alter table sanPham change column thuocla thuoclao varchar(20) not null ;
select cName from customer where cAge=20;
select * from customer order by cAge;
select cName,sum(cAge)from customer group by cName;