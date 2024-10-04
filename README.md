# Crowdfunding_ETL (Extract, Transform, Load)
<img src="https://github.com/user-attachments/assets/504c9cce-19c3-4d11-bfd4-cf923960bccd" alt="cowomen-cKQkMFzXHAI-unsplash" width="300"/>

Photo by <a href="https://unsplash.com/@cowomen?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">CoWomen</a> on <a href="https://unsplash.com/photos/a-group-of-women-sitting-around-a-wooden-table-cKQkMFzXHAI?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash">Unsplash</a>

## Project 2 for the University Of Minnesota Data Visualization and Analytics Boot Camp
### Contributors: Chinna Maijala, Abigail Serpa, and Kat Chu
  
## Project Overview

### In this extract, transform, load (ETL) mini project, we utilized Pandas to build an ETL pipeline for data extraction and transformation. We employed Python dictionary methods, along with Pandas and NumPy, to efficiently manage the extraction and transformation processes. The project was implemented using the Pandas library within a Python kernel.

### After cleaning and transformed the data, we generated four CSV files, which served as the basis for creating an Entity-Relationship Diagram (ERD). The ERD helped us visualize the relationships between different entities, enhancing our understanding of their interactions.

### Using the ERD as a guide, we created a database schema for PostgreSQL. This schema defined the organization of our database tables and their relationships, including rules to ensure data accuracy and reliability.

### Finally, we uploaded the cleaned data into the PostgreSQL database for efficient storage and management, providing a solid foundation for future queries and operations while ensuring data integrity and security. 

## Resources
	- **Source Code:**
	  - ETL_Mini_Project_CMaijala_ASerpa_KChu.ipynb
	  
	- **SQL Scripts:**
	  - crowdfunding_db_schema.sql
	  - SELECT-CAMPAIGN.png
	  - SELECT-CATEGORY.png
	  - SELECT-CONTACTS.png
	  - SELECT-SUBCATEGORY.png
	  
	- **Input Files:**
	  - crowdfunding.xlsx 
	  - contacts.xlsx
		
	- **Output Files:**
	  - campaign.csv
	  - category.csv
	  - subcategory.csv
	  - contacts.csv
	  - ERD-ETLproject2.png
	
	- **Technologies Used:**
	  - PostgreSQL
	  - PGAdmin
	  - Pandas
	  - NumPy
	  - Python 3.10 Kernel

## Objective

### Our goal is to understand ETL concepts relevant to the dataset through systematic steps and effective tools used in database modeling and analysis. The outline of our deliverables includes:

☑️ Deliverable 1: Extract Data

☑️ Deliverable 2: Clean and Transform Data

☑️ Deliverable 3: Create ERD (Entity-Relationship Diagram) and Load Data

## ETL Process
### Deliverable 1: Extract Data

- **Data Sources:** The data came from Excel spreadsheets, including:
  - crowdfunding.xlsx
  - contacts.xlsx

- **Methods:** The data was extracted using Pandas.
The code to extract these datasets can be found in the file `ETL_Mini_Project_CMaijala_ASerpa_KChu.ipynb`.

- **Create the Category and Subcategory DataFrames:**
  
  <img width="500" alt="image" src="https://github.com/user-attachments/assets/bc7a6f88-2239-4707-aad9-5362000522fc">

- **Create the Campaign DataFrame:**
  <img width="1000" alt="image" src="https://github.com/user-attachments/assets/2baf9eee-16c0-42bd-9808-98dd70425893">

- **Create the Contacts DataFrame:**

  
  <img width="400" alt="image" src="https://github.com/user-attachments/assets/e7c9bb20-505b-4319-8f9e-19fbe48fd419">

- **Create the Crowdfunding Database:**
  <img width="1000" alt="image" src="https://github.com/user-attachments/assets/2226079c-6591-4c9b-b985-4729c9815df0">

## Deliverable 2: Clean and Transform Data

- **Data Cleaning:**
  - Standardized Column Names: Used `str.lower().replace()` to ensure consistency across columns.
  - Validated Data: Checked for inconsistencies and corrected erroneous entries.

- **Data Transformation:**
  - Changed Data Types: Applied `pd.to_numeric()` and `astype()` to convert data for database compatibility.
  - Merged DataFrames: Combined category and subcategory DataFrames with the campaign DataFrame to maintain campaign structure.

The code used can be found in the file `ETL_Mini_Project_CMaijala_ASerpa_KChu.ipynb`. The final data is located in the Resources folder as: `campaign.csv`, `category.csv`, `subcategory.csv`, `contacts.csv`. 

## Deliverable 3: Load Data and Create ERD (Entity-Relationship Diagram)

- **Final Database:**
  
  - An Entity-Relationship Diagram (ERD) was created in PGAdmin to visualize the relationships between campaigns, categories, subcategories, and contacts.
  
  - **Entity-Relationship Diagram:**
    
    <img width="600" alt="image" src="https://github.com/cmaijala/Crowdfunding_ETL/blob/cca806373af0a6df4b27af9e5b624eb987808491/ERD-ETLProject2.png">
    
    The ERD can be found in `ERD-ETLproject2.png`.

- **Define Schema:**
  - Based on the ERD, we defined the database schema to support these relationships, ensuring proper data organization and integrity. The schema can be found in the file `crowdfunding_db_schema.sql`.

- **Loading Process:**
  - We connected to the PostgreSQL database using SQL and manually loaded the data from the previously created CSV files.
  - **Bulk Loading:** The transformed DataFrames were imported into PGAdmin.

  - **Campaign Table:**
    
    <img width="800" alt="image" src="https://github.com/cmaijala/Crowdfunding_ETL/blob/0660dbbe3e1a7a37b8c697934601d5d49ddc39d3/SELECT-CAMPAIGN.png">
    
    The Campaign table can be found in `SELECT-CAMPAIGN.png`.

  - **Category Table:**
    
    <img width="800" alt="image" src="https://github.com/cmaijala/Crowdfunding_ETL/blob/0660dbbe3e1a7a37b8c697934601d5d49ddc39d3/SELECT-CATEGORY.png">


    The Category table can be found in `SELECT-CATEGORY.png`.

  - **Contacts Table:**
    
    <img width="800" alt="image" src="https://github.com/cmaijala/Crowdfunding_ETL/blob/0660dbbe3e1a7a37b8c697934601d5d49ddc39d3/SELECT-CONTACTS.png">
    
    The Contacts table can be found in `SELECT-CONTACTS.png`.

  - **Subcategory Table:**
    
    <img width="800" alt="image" src="https://github.com/cmaijala/Crowdfunding_ETL/blob/b9f2c935b6057438ad8e797a65d78c58d7b629cb/SELECT-SUBCATEGORY.png">
    The Subcategory table can be found in `SELECT-SUBCATEGORY.png`.

## References

- **Data Sources:** The data was sourced from `campaign.csv`, `category.csv`, `subcategory.csv`, `contacts.xlsx`, and `crowdfunding.xlsx`, as provided for this ETL challenge.

- **Code:** The code for extracting and transforming the data is located in the Jupyter notebook file `Final_ETL_Mini_Project_CMaijala_ASerpa_KChu.ipynb`, which can be accessed within the project repository.

- **Pandas Documentation:** Used for data extraction and cleaning with functions like `read_csv()` and `read_excel()` for CSV and Excel files.  
  URL: [Pandas Documentation](https://pandas.pydata.org/docs/)

- **ChatGPT Assistance:** Ongoing guidance and support were provided by ChatGPT throughout the project for ETL best practices and Python implementation.
	
#### Data for this dataset was generated by edX Boot Camps LLC, and is intended for educational purposes only.





