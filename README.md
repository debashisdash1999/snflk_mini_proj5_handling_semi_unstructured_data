# snflk_mini_proj5_handling_semi_unstructured_data

TASK 1:- Loading JSON Format Data into Snowflake

Use the demo Warehouse: Ensure you are using the demo warehouse for this assignment.
Create a Database: Create a new database called json_db.

Create a Table: Create a table named json_data with the following schema:
id → INTEGER AUTOINCREMENT PRIMARY KEY
json_content → VARIANT

Create a Stage: Create an external stage named s3_json_stage that points to the S3 bucket containing the JSON file.
Use the following S3 path and credentials: S3 Path: s3://snowflake-hands-on-data/sample_data_json/sales_sample.json
AWS Access Key: 8888888888888888
AWS Secret Key: 8888888888888888

Load the Data: Use the COPY INTO command to load the JSON file from S3 into the json_data table.

Verify Data Load: Run a SELECT * query to confirm that JSON data is successfully loaded into the table.

Query and Extract Data: Use the FLATTEN function to extract meaningful values from the JSON and transform it into a structured format.



TASK 2:- Loading Parquet Data into Snowflake

Use the demo Warehouse: Ensure you are using the demo warehouse for this assignment.
Create a Database: Create a new database called parquet_db.

Create a Table: Create a table named parquet_data with the following schema:
id INTEGER,
name STRING,
age INTEGER,
city STRING,
email STRING

Create a Stage:
Create an external stage named s3_parquet_stage that points to the S3 bucket containing the Parquet file.
Use the following S3 path and credentials:
S3 Path: s3://snowflake-hands-on-data/sample_data_parquet/sample.parquet
AWS Access Key: 88888888888888
AWS Secret Key: 88888888888888

Verify the File: List the contents of the S3 stage to ensure the Parquet file is accessible.

Load the Data: Use the COPY INTO command to load the data from the staged Parquet file into the parquet_data table.

Verify Data Load: Run a SELECT * query to confirm that the data was successfully loaded into the table.



