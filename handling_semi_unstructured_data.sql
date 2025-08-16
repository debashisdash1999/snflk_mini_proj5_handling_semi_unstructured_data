-- TASK 1:- Loading JSON Format Data into Snowflake
USE WAREHOUSE demo;

create database json_db;

CREATE TABLE json_data (
    id INTEGER AUTOINCREMENT PRIMARY KEY,
    json_content VARIANT
);

CREATE STAGE s3_json_stage
URL = 's3://snowflake-hands-on-data/sample_data_json/sales_sample.json'
CREDENTIALS = (
    AWS_KEY_ID = 8888888888888 
    AWS_SECRET_KEY = 888888888888
);

COPY INTO json_data (json_content)
FROM @s3_json_stage
FILE_FORMAT = (TYPE = JSON);

SELECT * FROM json_data;

SELECT 
    value:name::STRING AS name,
    value:age::INTEGER AS age,
    value:address.city::STRING AS city
FROM json_data,
LATERAL FLATTEN(input => json_content) AS f;




-- TASK 2:- Loading Parquet Data into Snowflake
--Use the demo warehouse
USE WAREHOUSE demo;

--Create the database
CREATE DATABASE parquet_db;

--Create the table to store Parquet data
CREATE TABLE parquet_data (
    id INTEGER,
    name STRING,
    age INTEGER,
    city STRING,
    email STRING
);

--Create a stage for the Parquet file
CREATE OR REPLACE STAGE s3_parquet_stage
URL = 's3://snowflake-hands-on-data/sample_data_parquet/sample.parquet'
CREDENTIALS = (
  AWS_KEY_ID = 88888888888888 
  AWS_SECRET_KEY = 88888888888888888
);

--Check if Snowflake detects the Parquet file
LIST @s3_parquet_stage;

--Load the data (FIX: Use CASE_INSENSITIVE for better mapping)
COPY INTO parquet_data
FROM @s3_parquet_stage
FILE_FORMAT = (TYPE = PARQUET)
MATCH_BY_COLUMN_NAME = CASE_INSENSITIVE;

--Verify the data load
SELECT * FROM parquet_data;
