-- Databricks notebook source
-- MAGIC %md
-- MAGIC ### Exploratory Data Analysis - Visualize Data
-- MAGIC

-- COMMAND ----------

-- MAGIC %md
-- MAGIC #### Create reports from data in the table

-- COMMAND ----------

-- Check the schema of the table
describe dim_superstore_order

-- COMMAND ----------

-- Check first 5 records of the table
select * from dim_superstore_order

-- COMMAND ----------

-- MAGIC %md
-- MAGIC #### Widget to filter data in reports

-- COMMAND ----------

-- Create a widget for region as dropdown
create widget dropdown Region default "Central" choices select distinct region from default.dim_superstore_order

-- COMMAND ----------

-- Build the query to filter data using the widget
select * from default.dim_superstore_order where Region = getargument("Region")
