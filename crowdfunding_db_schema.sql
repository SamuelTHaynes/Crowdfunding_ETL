-- Drop the table if it exsists 
--DROP TABLE contacts; 

--Create table campaign 

CREATE TABLE Campaign(
	cf_id int PRIMARY KEY,
	contact_id int,
	company_name VARCHAR(35),
	description VARCHAR(35),
	goal int ,
	pledged int,
	outcome VARCHAR(35),
	backers_count INT,
	country  VARCHAR(10),
	currency VARCHAR(10),
	launched_date DATE,
	end_date DATE,
	spotlight BOOL,
	category_id VARCHAR(35) UNIQUE,
	subcategory_id VARCHAR(35) UNIQUE
);
SELECT *
FROM Campaign;

--Create table Category
CREATE TABLE Category(
	category_id varchar(35) PRIMARY KEY,
	category varchar(35),
	FOREIGN KEY(category_id) REFERENCES Campaign(category_id)
);

SELECT * 
FROM Category;
--Create table subcategory 

CREATE TABLE Subcategory(
	subcategory_id varchar(35) PRIMARY KEY,
	subcategories varchar(35),
	FOREIGN KEY(subcategory_id) REFERENCES Campaign(subcategory_id)

);

SELECT *
FROM Subcategory;

--Create table contcts 

CREATE TABLE contacts(
	contact_id int, 
	first_name VARCHAR(25),
	last_name varchar(25),
	email varchar(255)
);
SELECT *
FROM contacts