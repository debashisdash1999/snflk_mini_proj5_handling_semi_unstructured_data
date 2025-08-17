# snowflake_proj5_handling_semi_unstructured_data
This project demonstrates how to work with semi-structured data formats in Snowflake, specifically JSON and Parquet. The exercises cover:
Loading JSON data into Snowflake and extracting structured information
Loading Parquet data efficiently from S3
Using Snowflake stages to manage external data
Querying and validating semi-structured data

The objective is to show how Snowflake can handle a mix of structured and semi-structured data formats for analytics and reporting.

Prerequisites:
Active Snowflake account
Access to Snowflake Web UI or SnowSQL
AWS credentials with access to the specified S3 buckets
Demo warehouse created in Project 1

Tasks Performed:-
Task 1: Loading JSON Data
Created a database and table to store JSON data using a VARIANT column
Created an external stage pointing to the JSON file on S3
Loaded the JSON file into the Snowflake table using the stage
Verified successful data load
Queried and flattened the JSON data to extract structured values for analysis

Task 2: Loading Parquet Data
Created a database and table to store Parquet data
Created an external stage pointing to the Parquet file on S3
Verified the file contents in the stage
Loaded the Parquet data into Snowflake
Verified successful data load and queried the table

Real-World Relevance:
JSON and Parquet support allows Snowflake to handle semi-structured data commonly used in modern data pipelines
VARIANT columns and FLATTEN enable transforming semi-structured data into a structured format for analytics
External stages provide a scalable way to manage cloud-based datasets without manual file transfers
