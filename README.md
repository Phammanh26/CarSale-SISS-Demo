# CarSale SISS Demo
### Business requirements:
+ Auto sales of the system chain by month, week?
+ Auto sales of the system chain by each car manufacturer?
+ Auto sales of the system chain by region?

### Define datasource:
- Car sales datasets: https://www.kaggle.com/datasets/ekibee/car-sales-information
+ Notes:

  ++ I had processed data for adapting with problems.
  
  ++ We upload to database (SQL Server) as Source System.

### Facts & Dim:
- Dim_Location: Stores the Location attribute of the vehicle ever sold.
- Dim_Brand: Stores the Brand attribute of each car sold
- Dim_Car: Store the Vehicle attribute of each car sold (Name, Type, Year, ...) .
- Dim_Date: Stores the Date property (Day, month, year).
- Fact_CarSales: Store attributes and keys for Dimension tables (Dim_Location, Dim_Brand, Dim_Car, Dim_Date).

### Practices:
1. Define Connection:
- Define connections to the desired Data Source/Destination Sources.
- For example: If one of our DataSource is located on SQL Server, we need to define Authentication to access (for data source we only need Read, Destination permission we need more permissions like Write, Read, Update) to SQL Server.
2. Define ETL steps
- Define the necessary attributes for the Dim, Fact table.
3. Dev on SISS Tools
  + Note SISS Tools has 3 components:
  
    ++ Connection
   
    ++ Control Flows
    
    ++ Data Flows
    
  + Step 1: Create schema
  
    ++ I use SQL Server to store datawarehouse
    
    ++ I will do create schema for Dim and Fact tables.
    
    ++ In addition, I have some Temp tables, the purpose of this table is to preprocess data that is not yet clean.
    
  + Step 2: Add connections in SISS
  
    ++ Add connection in Connection
  + Step 3: Create a data cleaning task.
    ++ Handling methods: Filter Null, transform string date -> date.
  + Step 4: Create Task to create dimension tables.
  + Step 5: Create Task to create Fact tables.
  + Step 6: Load data to Demension source
  
  + Step 6: Testing
  
    ++ Data Integrity Check
    
    ++ Check data correctness
    
    ++ Check the correctness of Business Requirements

### Best Practice Tricks:
+ Do not load all data from the source data, select the data of interest (eg table, column)
+ Remove duplicate data
+ Parallel processing of independent tasks
+ Do not add existing data
