DROP DATABASE IF EXISTS car_dealership;
CREATE DATABASE car_dealership;
USE car_dealership;

CREATE TABLE cars (
car_id INT PRIMARY KEY,
vin VARCHAR(40) NOT NULL,
manufacturer VARCHAR(40) NOT NULL,
model VARCHAR(40)NOT NULL,
year INT NOT NULL,
color VARCHAR(15)
);

CREATE TABLE customers(
c_id INT PRIMARY KEY,
customer_id INT NOT NULL,
customer_name VARCHAR(40),
phone VARCHAR(40),
email VARCHAR(50),
address VARCHAR(50),
city VARCHAR(40),
state VARCHAR(40),
country VARCHAR(40),
zip_code VARCHAR(10)
);

CREATE TABLE salesperson(
s_id INT PRIMARY KEY,
staff_id INT NOT NULL,
staff_name VARCHAR(40),
staff_store VARCHAR(40) NOT NULL
);

CREATE TABLE invoices(
i_id INT,
invoice_number INT PRIMARY KEY,
invoice_date DATE NOT NULL,
invoice_car INT,
invoice_customer INT,
invoice_salesperson INT
);

ALTER TABLE invoices
ADD FOREIGN KEY (invoice_customer) -- in invoices table
REFERENCES customers(c_id) -- in costumer table
ON DELETE SET NULL;

ALTER TABLE invoices
ADD FOREIGN KEY (invoice_car) -- in invoices table
REFERENCES cars(car_id) -- in cars table
ON DELETE SET NULL;

ALTER TABLE invoices
ADD FOREIGN KEY (invoice_salesperson) -- in invoices table
REFERENCES salesperson(s_id) -- in staff table
ON DELETE SET NULL;




