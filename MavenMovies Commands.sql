## Q1.Identify the primary keys and foreign keys in maven movies db. Discuss the differences 
SELECT TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE CONSTRAINT_NAME LIKE 'PRIMARY'
AND TABLE_SCHEMA = 'mavenmovies';

SELECT TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME, REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE REFERENCED_TABLE_SCHEMA = 'mavenmovies'
AND REFERENCED_TABLE_NAME IS NOT NULL;

## Q2.List all details of actors
SELECT * FROM mavenmovies.actor;

##Q3List all customer information from DB. 
SELECT * FROM mavenmovies.customer;

##Q4.List different countries. 
 SELECT * FROM mavenmovies.country;
 
 ##Q5.Display all active customers
 SELECT * FROM mavenmovies.customer where active ;
 
 ##Q6.List of all rental IDs for customer with ID 1. 
SELECT * FROM mavenmovies.rental where customer_id = 1

##Q7.Display all the films whose rental duration is greater than 5 . 
SELECT * FROM mavenmovies.film where rental_duration>5;

 ##Q8. List the total number of films whose replacement cost is greater than $15 and less than $20.
SELECT * FROM mavenmovies.film where replacement_cost >15 and replacement_cost <20;

##Q9.Display the count of unique first names of actors. 
SELECT distinct(first_name) FROM mavenmovies.customer ;

##Q10. Display the first 10 records from the customer table . 
SELECT * FROM mavenmovies.customer order by customer_id asc limit 10;

##Q11. Display the first 3 records from the customer table whose first name starts with ‘b’.
SELECT * FROM mavenmovies.customer where first_name like "b%" order by customer_id asc limit 3

##Q12.Display the names of the first 5 movies which are rated as ‘G’. 
SELECT * FROM mavenmovies.film where rating like "G" order by film_id asc limit 5;

##Q13.Find all customers whose first name starts with "a".
SELECT * FROM mavenmovies.customer where first_name like "a%";

##Q14. Find all customers whose first name ends with "a".
SELECT * FROM mavenmovies.customer where first_name like "%a";

##Q15.Display the list of first 4 cities which start and end with ‘a’ .
SELECT * FROM mavenmovies.city where city like "a%a" ;

##Q16.Find all customers whose first name have "NI" in any position
SELECT first_name FROM mavenmovies.customer where first_name like "%NI%";

##Q17. Find all customers whose first name have "r" in the second position .
SELECT first_name FROM mavenmovies.customer where first_name like "_r%";

##Q18.Find all customers whose first name starts with "a" and are at least 5 characters in length. 
SELECT first_name FROM mavenmovies.customer where first_name like "a%" and length(first_name)>=5;

##Q19. Find all customers whose first name starts with "a" and ends with "o". 
SELECT first_name FROM mavenmovies.customer where first_name like "a%o";

##Q20.Get the films with pg and pg-13 rating using IN operator. 
SELECT * FROM mavenmovies.film where rating in ("pg","pg-13");

##Q21. Get the films with length between 50 to 100 using between operator. 
SELECT * FROM mavenmovies.film where length between 50 and 100;

##Q22.Get the top 50 actors using limit operator.
SELECT * FROM mavenmovies.actor order by actor_id desc limit 50;

##Q23. Get the distinct film ids from inventory table. 
SELECT distinct(film_id) FROM mavenmovies.inventory ;