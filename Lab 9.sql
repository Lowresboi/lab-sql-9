use sakila; 

CREATE TABLE rentals_may AS
SELECT *
FROM rental
WHERE MONTH(rental_date) = 5;

INSERT INTO rentals_may
SELECT *
FROM rental
WHERE MONTH(rental_date) = 5;

CREATE TABLE rentals_june AS
SELECT *
FROM rental
WHERE MONTH(rental_date) = 6;

INSERT INTO rentals_june
SELECT *
FROM rental
WHERE MONTH(rental_date) = 6;

SELECT customer_id, COUNT(*) AS rentals_in_may
FROM rentals_may
GROUP BY customer_id;

SELECT customer_id, COUNT(*) AS rentals_in_june
FROM rentals_june
GROUP BY customer_id;
