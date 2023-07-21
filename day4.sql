\i  '/Users/deekshitagundrati/Downloads/flight_database/flight_database.sql'

select * from customer;

select UPPER(email) as email_upper, 
email,
length(email)
from customer where length(email)>35 order by length(email) desc;


SELECT LOWER(first_name), LOWER(last_name), 
LOWER(email) from customer 
where length(first_name)>10 or 
length(last_name)>10;

select left(first_name,2), 
first_name,
right(first_name,2)
from customer;

select RIGHT(left(first_name,2), 1),
first_name,
right(first_name,2)
from customer;

select left(first_name,2),
first_name,
LEFT(right(first_name,2),1)
from customer;


select right(left(right(email,5),2),1) from customer;



SELECT 
left(first_name, 1) || left(last_name,1), 
first_name, last_name from customer;


SELECT 
left(first_name, 1) ||'.'|| left(last_name,1) ||'.' AS intials, 
first_name, last_name from customer;


SELECT left(email,1) ||'***'||'@sakilacustomer.org' 
as anonymized_email from customer;

SELECT left(email,1) ||'***'|| RIGHT(email,19) 
as anonymized_email from customer;

SELECT POSITION('@' IN email),
email
FROM customer;

SELECT LEFT(email,POSITION('@' IN email)),
email
FROM customer;














