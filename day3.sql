SELECT * from payment order by customer_id desc;

SELECT customer_id, SUM(amount) from payment where customer_id > 0 GROUP BY customer_id order by customer_id;





SELECT staff_id, SUM(amount), count(*) FROM payment 
group by staff_id order by staff_id desc limit 2;


SELECT staff_id, customer_id, SUM(amount), count(*) from payment 
GROUP BY staff_id, customer_id ORDER BY COUNT(*) ASC;


SELECT DATE(payment_date) FROM payment;



select * from payment;

SELECT staff_id, DATE(payment_date), 
SUM(amount), count(*) from payment 
where amount !=0 group by staff_id, date(payment_date) 
order by sum(amount) desc;


SELECT customer_id,
SUM(amount)
FROM payment
group by customer_id having sum(amount)>180;


SELECT customer_id,
SUM(amount),
COUNT(*)
FROM payment
group by customer_id having count(*)>30 order by count(*) desc;



SELECT customer_id, 
DATE(payment_date), 
ROUND(AVG(amount), 2) as avg_amount,
count(*)
from payment 
where DATE(payment_date)='2020-04-28' OR 
DATE(payment_date)='2020-04-29' OR 
DATE(payment_date)='2020-04-30'
group by customer_id, DATE(payment_date)
HAVING count(*)>1
order by ROUND(AVG(amount),2) desc;

 





