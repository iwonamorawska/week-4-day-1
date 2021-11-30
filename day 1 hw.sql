--1 How many actors are there with the last name ‘Wahlberg’?(2)
SELECT first_name, last_name
FROM actor
WHERE last_name= 'Wahlberg';
--2 How many payments were made between $3.99 and $5.99?(5607)
SELECT count(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99
--3 What film does the store have the most of? (search in inventory)
select count(film_id), film_id 
from inventory
group by film_id 
order by count(film_id)
--4 How many customers have the last name ‘William’?(0)
SELECT first_name, last_name
FROM customer
WHERE last_name= 'William';
--5 What store employee (get the id) sold the most rentals?( staff 1)
SELECT staff_id, count(staff_id)
FROM rental 
group by staff_id 
order by staff_id desc;
--6 How many different district names are there? (378)
SELECT count(DISTINCT district)
FROM address;
--7 What film has the most actors in it? (use film_actor table and get film_id)(Lambs Cincinatti)
select film_id, count(film_id)
from film_actor
group by film_id 
order by count(film_id) desc ;
--8 From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)(13)
select last_name,store_id 
from customer
where last_name like '%es' and store_id ='1'
--9 How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
select amount,customer_id 
from payment
where customer_id between 380 and 430
group by customer_id,amount,rental_id 
order by amount  
having count(amount)>250;
--10 Within the film table, how many rating categories are there? And what rating has the most
--movies total?(5 ratings, PG-13)
select rating, count(rating)
from film
group by rating