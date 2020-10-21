-- Insert statement for product data
INSERT INTO product(
	upc,
	product_cost
)VALUES(
	1,
	4.99
);

SELECT * 
FROM product;

-- Insert statement for staff data
INSERT INTO staff(
	staff_id,
	first_name,
	last_name,
	address,
	username,
	password,
	active
)VALUES(
	1,
	'Crystal',
	'Sanders',
	'555 Circle Drive Chicago, IL',
	'cdsand',
	'secret',
	'YES'
);

SELECT *
FROM staff;

-- Insert statement for customer data
INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	billing_info,
	total_cost
)VALUES(
	1,
	'Crystal',
	'Sanders',
	'4242-4242-4242-4242 623 05/20',
	'13.00'
);

SELECT *
FROM customer;

-- Insert statement for movie data
INSERT INTO movie(
	movie_id,
	movie_date,
	movie_name,
	movie_length,
	movie_rating
)VALUES(
	1,
	'2019-03-19',
	'My Heart',
	'02:00',
	'PG-13'
);

SELECT * 
FROM movie;

-- Insert statement for ticket data
INSERT INTO ticket(
	ticket_id,
	movie_price,
	customer_id,
	movie_id,
	staff_id
)VALUES(
	1,
	6.50,
	1,
	1,
	1
);

SELECT *
FROM ticket;

-- Insert statement for concession data
INSERT INTO concession(
	concession_id,
	total_cost,
	upc,
	staff_id,
	customer_id
)VALUES(
	1,
	23.47,
	1,
	1,
	1
);

SELECT * 
FROM concession;
