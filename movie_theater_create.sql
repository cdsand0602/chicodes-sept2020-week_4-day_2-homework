-- Create product table
CREATE TABLE product(
	upc SERIAL PRIMARY KEY,
	product_cost NUMERIC(4,2)
);

-- Create staff table
CREATE TABLE staff(
	staff_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	username VARCHAR(100),
	password VARCHAR(100),
	active VARCHAR(3)
);

-- Create customer table
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	billing_info VARCHAR(150),
	total_cost NUMERIC(6,2)	
);

-- Create movie table
CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	movie_date DATE,
	movie_name VARCHAR(100),
	movie_length TIME,
	movie_rating VARCHAR(10)		
);

-- Create ticket table
CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	movie_price NUMERIC(5,2),
	customer_id INTEGER NOT NULL,
	movie_id INTEGER NOT NULL,
	staff_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id),
	FOREIGN KEY(staff_id) REFERENCES staff(staff_id)
);


-- Create concession table
CREATE TABLE concession(
	concession_id SERIAL PRIMARY KEY,
	total_cost NUMERIC(5,2),
	upc INTEGER NOT NULL,
	staff_id INTEGER NOT NULL,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(upc) REFERENCES product(upc),
	FOREIGN KEY(staff_id) REFERENCES staff(staff_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

