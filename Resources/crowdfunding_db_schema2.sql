-- Drop the table if it exsists 
DROP TABLE Campaign; 

--Create table Category
CREATE TABLE Category(
	category_id varchar(35) PRIMARY KEY,
	category varchar(35)
);

SELECT * 
FROM Category;

--Create table subcategory 

CREATE TABLE Subcategory(
	subcategory_id varchar(35) PRIMARY KEY,
	subcategories varchar(35)
);

SELECT *
FROM Subcategory;



--Create table campaign 

CREATE TABLE Campaign(
	cf_id int PRIMARY KEY,
	contact_id int,
	company_name VARCHAR(225),
	description VARCHAR(225),
	goal FLOAT ,
	pledged FLOAT,
	outcome VARCHAR(35),
	backers_count INT,
	country  VARCHAR(10),
	currency VARCHAR(10),
	launched_date VARCHAR(50), 
	end_date VARCHAR(50),	
	category_id VARCHAR(35),
	subcategory_id VARCHAR(35),
	FOREIGN KEY(category_id) REFERENCES category(category_id),
	FOREIGN KEY(subcategory_id) REFERENCES subcategory(subcategory_id)
);
SELECT *
FROM Campaign;



--Create table contcts 

CREATE TABLE contacts(
	contact_id int, 
	first_name VARCHAR(25),
	last_name varchar(25),
	email varchar(255)
);
SELECT *
FROM contacts