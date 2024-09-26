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
	Input Files:
		• campaign.csv
		• category.csv
		• contacts.xlsx
		• crowdfunding.xlsx
		• subcategory.csv
	Source Code:
	  	• Final-ETL_Mini_Project_CMaijala_ASerpa_KChu.ipynb
	SQL Scripts:
		• crowdfunding_db_schema.sql
		• crowdfunding_SQL_Analysis.sql
	Output Files:
		• contacts_cleaned.csv
		• campaign_cleaned.csv
		• ERD-project2.png
	Software:
		• PostgreSQL
		• PGAdmin
		• Python 3.10 or newer versions

# Objective

## Our goal is to understand the ETL concepts relevant to the dataset through systematic steps and effective tools commonly used in database modeling and analysis. The outline of our deliverables and written report includes:

☑️ Deliverable 1: Extract Data

☑️ Deliverable 2: Clean and Transform Data

☑️ Deliverable 3: Create ERD (Entity-Relationship Diagram)

☑️ Deliverable 4: SQL Analysis 

# ETL Process
## Deliverable 1: Extract Data
  * ### Data Sources: The data was sourced from a combination of CSV files and Excel spreadsheets.
 	 * These included: campaign.csv, category.csv, subcategory.csv, contacts.xlsx, crowdfunding.xlsx.

  * ### Methods: The data was extracted using Pandas and Python.
  
The code to extract these datasets can be found in the file Final-ETL_Mini_Project_CMaijala_ASerpa_KChu.ipynb.

  * ### Create the Category and Subcategory DataFrames
    <img width="600" alt="image" src="https://github.com/user-attachments/assets/dbd83c39-80ce-4758-bd09-aac8790aaf9a">
  * ### Create the Campaign DataFrame
    <img width="600" alt="image" src="https://github.com/user-attachments/assets/a6c7f4e6-8268-4848-a78a-ee3bf62466c3">
  * ### Create the Contacts DataFrame
    <img width="400" alt="image" src="https://github.com/user-attachments/assets/e7c9bb20-505b-4319-8f9e-19fbe48fd419">
  * ### Create the Crowdfunding Database
    <img width="600" alt="image" src="https://github.com/user-attachments/assets/2226079c-6591-4c9b-b985-4729c9815df0">

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
The final data can be found in contacts_cleaned.csv and campaign_cleaned.csv. 

## Deliverable 3: Create ERD ((Entity-Relationship Diagram)
  * ### Target Database: The cleaned data was loaded into PostgreSQL. The database schema was designed to support relationships between campaigns, categories, subcategories, and contacts.
  * ### Loading Process:
  	* We used the crowdfunding_db_schema.sql file to create the database schema in PostgreSQL. This file defined the structure of the tables and relationships necessary to load the transformed data.
   	* We used SQLAlchemy to connect to the PostgreSQL database from Python, which allowed us to create tables and insert data programmatically.
   	* Bulk Loading: The transformed DataFrames were loaded into PostgreSQL in bulk, ensuring efficient and fast insertion of data. The Pandas .to_sql() function was used to send the cleaned DataFrames directly to the database tables.	

  ### Entity-Relationship Diagram:
  <img width="600" alt="image" src="https://github.com/cmaijala/Crowdfunding_ETL/blob/cca806373af0a6df4b27af9e5b624eb987808491/ERD-ETLProject2.png">

The ERD can be found in ERD-project2.png.

## Deliverable 4: SQL Analysis
  * ### After loading the cleaned data into PostgreSQL, we performed various SQL queries to analyze the data. The queries focused on understanding crowdfunding campaign outcomes, backers, and funding amounts. We also created summary tables to identify trends and insights.
  * ### Example Queries:
  	* JOIN queries to link campaigns with their respective categories and contacts.
   	* Calculated the remaining goal for each campaign using simple SQL arithmetic.
      
The SQL scripts for this analysis can be found in crowdfunding_SQL_Analysis.sql.

## Conclusions:
#### Key Findings:
- **Campaign Success Factors**: Patterns indicate higher success rates for categories like technology and creative arts.
- **Contact Information Quality**: Cleaning the contacts data improved the accuracy of marketing and outreach efforts.
- **Data Consistency**: Normalizing category and subcategory data ensured consistency, reducing potential errors during analysis.

#### Impact:
- **Improved Decision-Making**: Campaign organizers can now identify trends to optimize proposals for success.
- **Enhanced Contact Management**: The cleaned contact data can be used by marketing and outreach teams to ensure that they are working with up-to-date and accurate information, reducing wasted effort in communicating with invalid or incomplete contacts.
- **Scalability of ETL Process**: The framework created in this project can be applied to similar datasets and projects. Future applications could include further automation of the extraction, transformation, and loading processes, as well as real-time data handling for more dynamic insights.

## References
•Data Sources: The data was sourced from campaign.csv, category.csv, subcategory.csv, contacts.xlsx, and crowdfunding.xlsx as provided for this ETL challenge.

•Code: The code for extracting and transforming the data is located in the Jupyter notebook file Final-ETL_Mini_Project_CMaijala_ASerpa_KChu.ipynb, which can be accessed within the project repository.

•Pandas Documentation: Used for data extraction and cleaning with functions like read_csv() and read_excel() for CSV and Excel files.
URL: https://pandas.pydata.org/docs/

•ChatGPT Assistance: Ongoing guidance and support were provided by ChatGPT throughout the project for ETL best practices and Python implementation.
	
### Data for this dataset was generated by edX Boot Camps LLC, and is intended for educational purposes only.









