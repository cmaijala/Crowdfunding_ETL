# Crowdfunding_ETL (Extract, Transform, Load)
<img src="https://github.com/user-attachments/assets/504c9cce-19c3-4d11-bfd4-cf923960bccd" alt="cowomen-cKQkMFzXHAI-unsplash" width="300"/>

Photo by <a href="https://unsplash.com/@cowomen?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">CoWomen</a> on <a href="https://unsplash.com/photos/a-group-of-women-sitting-around-a-wooden-table-cKQkMFzXHAI?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Unsplash</a>

## Project 2 for the University Of Minnesota Data Visualization and Analytics Boot Camp

### Contributors: Chinna Maijala, Abigail Serpa, and Kat Chu
  
# Project Overview

### In this Extract, Transform, Load (ETL) mini project, we focused on building an ETL pipeline using Python and Pandas to extract and transform data. We utilized Python dictionary methods and regular expressions to handle the extraction and transformation. After cleaning and transforming the data, we generated four CSV files.

### These files were then used to create an Entity-Relationship Diagram (ERD) to map out relationships between the different entities, and we developed a table schema to define the structure of the PostgreSQL database. The schema ensured proper data organization, relationships between tables, and integrity constraints.

### Finally, we uploaded the cleaned data into a PostgreSQL database to store and manage the data efficiently. Using PostgreSQL enabled us to perform advanced queries and analysis, and provided a scalable solution for handling large datasets while maintaining data integrity and security.

## Resources
	Source Code:
	  	• Final-ETL_Mini_Project_CMaijala_ASerpa_KChu.ipynb
	SQL Scripts:
		• crowdfunding_db_schema.sql
	Output Files:
		• campaign.csv
		• category.csv
  		• subcategory.csv
		• contacts.csv
		• crowdfunding.xlsx
		• ERD-ETLproject2.png
	Software:
		• PostgreSQL
		• PGAdmin
		• Python 3.10 or newer versions

## Objective

### Our goal is to understand the ETL concepts relevant to the dataset through systematic steps and effective tools commonly used in database modeling and analysis. The outline of our deliverables and written report includes:

☑️ Deliverable 1: Extract Data

☑️ Deliverable 2: Clean and Transform Data

☑️ Deliverable 3: Load Data and Create ERD (Entity-Relationship Diagram)

## ETL Process
## Deliverable 1: Extract Data
  * ### Data Sources: The data was sourced from a combination of CSV files and Excel spreadsheets.
 	 * These included: campaign.csv, category.csv, subcategory.csv, contacts.xlsx, crowdfunding.xlsx.

  * ### Methods: The data was extracted using Pandas and Python.
  
The code to extract these datasets can be found in the file Final_ETL_Mini_Project_CMaijala_ASerpa_KChu.ipynb.

  * ### Create the Category and Subcategory DataFrames
    <img width="500" alt="image" src="https://github.com/user-attachments/assets/bc7a6f88-2239-4707-aad9-5362000522fc">
  * ### Create the Campaign DataFrame
    <img width="1000" alt="image" src="https://github.com/user-attachments/assets/2baf9eee-16c0-42bd-9808-98dd70425893">
  * ### Create the Contacts DataFrame
    <img width="400" alt="image" src="https://github.com/user-attachments/assets/e7c9bb20-505b-4319-8f9e-19fbe48fd419">
  * ### Create the Crowdfunding Database
    <img width="1000" alt="image" src="https://github.com/user-attachments/assets/2226079c-6591-4c9b-b985-4729c9815df0">

## Deliverable 2: Clean and Transform Data
  * ### Data Cleaning:
	  * Handling Missing Values: dropna() was used to remove rows with missing data.
	  * Removing Duplicates: drop_duplicates() was applied to ensure data integrity.
	  * Standardizing Column Names: str.lower().replace() was used to ensure consistency across columns.
	  * Data Validation: Checked for inconsistencies and corrected erroneous entries.

  * ### Data Transformation:
  	* Changing Data Types: Applied pd.to_numeric() and astype() to convert data for database compatibility.
   	* Merging DataFrames: Combined category and subcategory DataFrames with the campaign DataFrame to maintain campaign structure.
    	* New Calculations: Derived columns like percentage goal achieved by dividing pledged by goal.
   
The code used can be found in Final-ETL_Mini_Project_CMaijala_ASerpa_KChu.ipynb. 
The final data can be found in the Resources folder as: campaign.csv, category.csv, subcategory.csv, contacts.csv. 

## Deliverable 3: Load Data and Create ERD (Entity-Relationship Diagram)
  * ### Target Database: The cleaned data was loaded into PostgreSQL. The database schema was designed to support relationships between campaigns, categories, subcategories, and contacts.
  * ### Loading Process:
  	* We used the crowdfunding_db_schema.sql file to create the database schema in PostgreSQL. This file defined the structure of the tables and relationships necessary to load the transformed data.
   	* We used SQLAlchemy to connect to the PostgreSQL database from Python, which allowed us to create tables and insert data programmatically.
   	* Bulk Loading: The transformed DataFrames were loaded into PostgreSQL in bulk, ensuring efficient and fast insertion of data. The Pandas .to_sql() function was used to send the cleaned DataFrames directly to the database tables.

  ### Campaign Table
   <img width="800" alt="image" src="https://github.com/cmaijala/Crowdfunding_ETL/blob/0660dbbe3e1a7a37b8c697934601d5d49ddc39d3/SELECT-CAMPAIGN.png">

  ### Category Table
   <img width="800" alt="image" src="https://github.com/cmaijala/Crowdfunding_ETL/blob/0660dbbe3e1a7a37b8c697934601d5d49ddc39d3/SELECT-CATEGORY.png">

   ### Contacts Table
   <img width="800" alt="image" src="https://github.com/cmaijala/Crowdfunding_ETL/blob/0660dbbe3e1a7a37b8c697934601d5d49ddc39d3/SELECT-CONTACTS.png">

   ### Subcategory Table
   <img width="800" alt="image" src="https://github.com/cmaijala/Crowdfunding_ETL/blob/0660dbbe3e1a7a37b8c697934601d5d49ddc39d3/SELECT-CONTACTS.png">

  ### Entity-Relationship Diagram:
  <img width="600" alt="image" src="https://github.com/cmaijala/Crowdfunding_ETL/blob/cca806373af0a6df4b27af9e5b624eb987808491/ERD-ETLProject2.png">

The ERD can be found in ERD-ETLproject2.png.

## References
• Data Sources: The data was sourced from campaign.csv, category.csv, subcategory.csv, contacts.xlsx, and crowdfunding.xlsx as provided for this ETL challenge.

• Code: The code for extracting and transforming the data is located in the Jupyter notebook file Final-ETL_Mini_Project_CMaijala_ASerpa_KChu.ipynb, which can be accessed within the project repository.

• Pandas Documentation: Used for data extraction and cleaning with functions like read_csv() and read_excel() for CSV and Excel files.
URL: https://pandas.pydata.org/docs/

• ChatGPT Assistance: Ongoing guidance and support were provided by ChatGPT throughout the project for ETL best practices and Python implementation.
	
### Data for this dataset was generated by edX Boot Camps LLC, and is intended for educational purposes only.





