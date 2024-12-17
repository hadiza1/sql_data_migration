create database customerinfo;
use customerinfo;

create table customers(
customer_ID int primary key,
CustomerName varchar (50),
ContactName varchar (50),
Address varchar (50),
city varchar (50),
Postalcode int,
Country varchar (50)
);
select* from customers;

Alter table customers
modify column postalcode varchar(15);
alter table customers


insert into customers values(1, "Alfreds futterkiste", "Maria Anders", "Obere Str.57", "Berlin", 12209, "Germany");
insert into customers value(2, "Ana Trujillo Emparedados y helados", "Ana Trujillo", "Avda de la Constitucion 2222", "Mexico D.F", 05021, "Mexico");
insert into customers values(3, "Antonia Morena Taqueria", "Antonia Morena","Mataderos 2312", "Mexico D.F", 05021, "Mexico");
insert into customers values(4, "Around the Horn", "Thomas Hardy", "120 Hanover Sq", "London", "WA1 1DP", "UK");
insert into customers values(5,"Berglunds snabbkop", "Christinia Berglund", "BERT STR", "Lulea", "S-95822", "Sweden");

update customers
set postalcode = "WA1 1DP"
WHERE CUSTOMER_ID = 4;

update customers
set postalcode = "S-95822"
WHERE CUSTOMER_ID = 5;

alter table customers
add salary int;

update customers
set salary = 70000
where customer_id = 5;
 
 
select  min(salary), sum(salary), max(salary), avg(salary), count(salary)
from customers;

select country, min(salary), sum(salary), max(salary), avg(salary), count(salary)
from customers
group by country;

select *
from customers
order by salary desc;

select *
from customers
order by salary asc;

