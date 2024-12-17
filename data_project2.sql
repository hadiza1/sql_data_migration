select *
from customer;

select *
from customer
limit 20;

SELECT COUNT(*) AS Num_of_col
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'customer';

update customer
set fax = "4569-2363"
where custId = 3;

update customer
set fax = "8203321"
where custId = 11;

update customer
set fax = "(2)567-28700"
where custId = 14;

update customer
set fax = "(6)2368.51109"
where custId = 15;

update customer
set region = case
when custId= 13 then "MEXICO"
when custId= 14 then "SPAIN"
when custId= 15 then "SPAIN"
when custId= 16 then "EUROPE"
when custId= 17 then "ASIA"
when custId= 18 then "EUROPE"
When custId= 19 then "EUROPE"
When custId= 20 then "NORTH AMERICA"
ELSE region
END
where custId in (13, 14, 15, 16, 17, 18, 19, 20);

Select region from customer;

select custId, contactname
from customer
where contactname like "P%" order by custid asc;

select contactname as name_startsP
FROM customer;