use classicmodels;
select *from customers where customerName = 'Land of Toys Inc.';
explain select *from customers where customerName = 'Land of Toys Inc.';
alter table customers add index idx_custumerName(customerName);
explain select *from customers where customerName = 'Land of Toys Inc.';
alter table customers add index idx_fullName(contactFirstName,contactLastName);
explain select *from customers where contactFirstName = 'Jean' or contactLastName= 'King';
alter table customers drop index idx_fullName;
delimiter //
create procedure findAllCustomer()
begin
    select *from customers;
end //
call findAllCustomer();
delimiter // drop procedure if exists findAllCustomer;

create  procedure findAllCustomer()
begin select *from customers where customerNumber = 10;
end //
DELIMITER //

CREATE PROCEDURE GetCustomersCountByCity(

    IN  in_city VARCHAR(50),

    OUT total INT

)

BEGIN

    SELECT COUNT(customerNumber)

    INTO total

    FROM customers

    WHERE city = in_city;

END//

DELIMITER ;
call GetCustomersCountByCity('Lyon',@total);
select @total;
DELIMITER //

CREATE PROCEDURE SetCounter(

    INOUT counter INT,

    IN inc INT

)

BEGIN

    SET counter = counter + inc;

END//

DELIMITER ;
set @count =1;
call SetCounter(@count, 1);
call SetCounter(@count, 1);
call SetCounter(@count, 5);
select @count;
create view danhsach as select customerName,customerNumber,phone
from customers;
select *from danhsach;
create or replace view danhsach as select customerName,customerNumber,contactLastName,contactFirstName,phone
from customers
where city = 'Nantes';
select *from danhsach;
select city,customerName from customers where city = 'Nantes';
drop view danhsach;