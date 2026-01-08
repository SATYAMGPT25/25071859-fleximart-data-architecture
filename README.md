# FlexiMart Data Architecture Project

**Student Name:** [Satyam Gupta]
**Student ID:** [bitsom_ba_25071859]
**Email:** [satyamgpt25@gmail.com]
**Date:** [8Jan2026]

## Project Overview

This project demonstrates a complete data architecture for FlexiMart, covering ETL pipelines, relational database management, NoSQL implementation, and data warehousing for analytics. It includes Python-based ETL scripts, SQL queries for business insights, MongoDB operations for flexible product catalogs, and OLAP queries on a star schema.


## Repository Structure
├── part1-database-etl/
│   ├── etl_pipeline.py
│   ├── schema_documentation.md
│   ├── business_queries.sql
│   └── data_quality_report.txt
├── part2-nosql/
│   ├── nosql_analysis.md
│   ├── mongodb_operations.js
│   └── products_catalog.json
├── part3-datawarehouse/
│   ├── star_schema_design.md
│   ├── warehouse_schema.sql
│   ├── warehouse_data.sql
│   └── analytics_queries.sql
└── README.md

## Technologies Used

- Python 3.x, pandas, mysql-connector-python
- MySQL 8.0 / PostgreSQL 14
- MongoDB 6.0

## Setup Instructions

### Database Setup

```bash
# Create databases
mysql -u root -p -e "CREATE DATABASE fleximart;"
mysql -u root -p -e "CREATE DATABASE fleximart_dw;"

# Run Part 1 - ETL Pipeline
python part1-database-etl/etl_pipeline.py

# Run Part 1 - Business Queries
mysql -u root -p fleximart < part1-database-etl/business_queries.sql

# Run Part 3 - Data Warehouse
mysql -u root -p fleximart_dw < part3-datawarehouse/warehouse_schema.sql
mysql -u root -p fleximart_dw < part3-datawarehouse/warehouse_data.sql
mysql -u root -p fleximart_dw < part3-datawarehouse/analytics_queries.sql


### MongoDB Setup

mongosh < part2-nosql/mongodb_operations.js

## Key Learnings

1.Learned how to design and implement an end-to-end ETL pipeline using Python and MySQL.

2.Gained experience in NoSQL modeling for flexible, nested product catalogs with MongoDB.

3.Developed dimensional modeling skills for data warehouses and OLAP analytics.

4.Practiced writing advanced SQL queries with aggregations, window functions, and drill-down analysis.

## Challenges Faced

1.Data Quality Handling: Managing missing and inconsistent data in raw CSVs required careful cleaning and transformation. Solution: Implemented validation functions and logging to track data issues.

2.Schema Design: Designing a flexible star schema while ensuring referential integrity and avoiding anomalies. Solution: Used surrogate keys and proper normalization for dimension tables.

3.Integration of Multiple Technologies: Coordinating MySQL, Python, and MongoDB workflows was initially complex. Solution: Documented setup steps and automated insert scripts to streamline execution.
