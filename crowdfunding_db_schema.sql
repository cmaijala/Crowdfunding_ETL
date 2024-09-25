-- Drop existing tables if they exist
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;

-- Category Table
CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

SELECT *
FROM category;

-- Subcategory Table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory_name VARCHAR(255) NOT NULL
);

SELECT *
FROM subcategory;      

-- Contacts Table
CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255)
);

SELECT *
FROM contacts;


-- Campaign Table
CREATE TABLE campaign (
	cf_id INT PRIMARY KEY,
    contact_id INT,
	company_name VARCHAR(255),
	description VARCHAR(255),
	goal FLOAT,
	pledged FLOAT,
    outcome VARCHAR(255),
    backers_count INT,
    country VARCHAR(255),
    currency VARCHAR(255),
    launch_date DATE,
    end_date DATE,
    category_id VARCHAR(10),
    subcategory_id VARCHAR(10),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);


SELECT * FROM campaign;







