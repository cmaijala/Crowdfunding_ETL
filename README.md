# Crowdfunding_ETL (Extract, Transform, Load)
![cowomen-cKQkMFzXHAI-unsplash](https://github.com/user-attachments/assets/504c9cce-19c3-4d11-bfd4-cf923960bccd)

Photo by <a href="https://unsplash.com/@cowomen?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">CoWomen</a> on <a href="https://unsplash.com/photos/a-group-of-women-sitting-around-a-wooden-table-cKQkMFzXHAI?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Unsplash</a>

## Project 2 for the University Of Minnesota Data Visualization and Analytics Boot Camp

### Contributors: Chinna Maijala, Abigail Serpa, and Kat Chu
  
# Project Overview

## For the ETL mini project, we focused practicing building an ETL pipeline using Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the data. After transforming the data, we created four CSV files and use the CSV file data to create an ERD and a table schema. Finally, we uploaded the CSV file data into a Postgres database.

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
		• Quick DBD - free DBD canvas
		• Python 3.10 or newer versions

# Objective

## Our goal is to understand the ETL concepts relevant to the dataset through systematic steps and effective tools commonly used in database modeling and analysis. The outline of our deliverables and written report includes:

☑️ Deliverable 1: Extract Data

☑️ Deliverable 2: Transform and Clean Data

☑️ Deliverable 3: Create an ERD and Load Data

☑️ Deliverable 4: SQL Analysis and written report for the ETL analysis (this “README.md”).

# ETL Process
## Deliverable 1: Extract Data
  * ### Data Sources: Describe where the data was sourced from (e.g., databases, APIs, files).
  * ### Methods: Explain how the data was extracted (e.g., SQL queries, web scraping).
  * ### Create the Category and Subcategory DataFrames
    <img width="1000" alt="image" src="https://github.com/user-attachments/assets/dbd83c39-80ce-4758-bd09-aac8790aaf9a">
  * ### Create the Campaign DataFrame
    <img width="1600" alt="image" src="https://github.com/user-attachments/assets/a6c7f4e6-8268-4848-a78a-ee3bf62466c3">
  * ### Create the Contacts DataFrame
    <img width="500" alt="image" src="https://github.com/user-attachments/assets/e7c9bb20-505b-4319-8f9e-19fbe48fd419">
  * ### Create the Crowdfunding Database
    <img width="1400" alt="image" src="https://github.com/user-attachments/assets/2226079c-6591-4c9b-b985-4729c9815df0">

## Deliverable 2: Transform Data
  * ### Data Cleaning: The data cleaning process involved several steps to ensure that the extracted data was ready for loading into the target database:
    •	Handling Missing Values: We used dropna() to remove rows with missing or null values where applicable, ensuring that the datasets were complete.
    •	Removing Duplicates: Duplicate entries were removed using the drop_duplicates() function to maintain data integrity.
    •	Standardizing Column Names: All column names were converted to a consistent format using str.lower().replace() to make them more readable and to avoid issues when querying the database.
    •	Data Validation: We checked for inconsistencies, outliers, and erroneous data entries to ensure the final dataset was reliable.
  * ### Data Transformation: After cleaning, various transformations were applied to prepare the data for analysis and database loading:
    •	Changing Data Types: Data types were converted where necessary using pd.to_numeric() and astype() to ensure compatibility with the database. For example, monetary values were converted to floats, and campaign-related dates were parsed as datetime objects.
    •	Merging DataFrames: The category and subcategory DataFrames were merged with the campaign DataFrame to include the full campaign category structure.
    •	New Calculations: We derived new columns, such as calculating the percentage of the goal achieved by dividing pledged amounts by goal amounts.

## Deliverable 3: Load Data and Create ERD
  * ### Target Database: The cleaned and transformed data was loaded into a PostgreSQL database. The database schema was designed to support relationships between campaigns, categories, subcategories, and contacts.
  * ### Loading Process: 	
      •	We used SQLAlchemy to connect to the PostgreSQL database from Python, which allowed us to create tables and insert data programmatically.
	    •	Bulk Loading: The transformed DataFrames were loaded into PostgreSQL in bulk, ensuring efficient and fast insertion of data. The Pandas .to_sql() function was used to send the cleaned DataFrames directly to the database tables.

  ### The Entity Relationship Diagrams (ERDs) representing relationships in our database can be reviewed in Fig. 1, created using [insert tool name or software]. During the process, we utilized Pandas, Numpy, and SQLAlchemy to extract, clean, and transform the data. We then loaded and explored the cleaned datasets using PostgreSQL and pgAdmin.
  
  # Entity-Relationship Diagram:
  <img width="1400" alt="image" src="https://github.com/cmaijala/Crowdfunding_ETL/blob/c2baeab287f900217948e6e17f4f984f85d84c84/ERD-project2.png">
  #### Fig. 1: Entity Relationship Diagrams of ETL databases


## Deliverable 4: SQL Analysis and written report for the ETL analysis (this “README.md”).
  ### After loading the cleaned data into PostgreSQL, we performed various SQL queries to analyze the data. The queries focused on understanding crowdfunding campaign outcomes, backers, and funding amounts. We also created summary tables to identify trends and insights.
    For example:
      •	We used JOIN queries to link campaigns with their respective categories and contacts.
      •	We calculated the remaining goal amount for each campaign.
      
      The SQL scripts for this analysis can be found in crowdfunding_SQL_Analysis.sql.

# Conclusions:
  * ### Key Findings: Summarize the main insights gained from the project.
  * ### Impact: Discuss the implications of your findings and any potential applications.

## References
      •	Pandas Documentation
      •	PostgreSQL Documentation
### Data for this dataset was generated by edX Boot Camps LLC, and is intended for educational purposes only.









