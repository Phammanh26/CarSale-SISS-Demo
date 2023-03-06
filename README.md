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

### Define Fact & Dim:
- Dim_Location: Stores the Location attribute of the vehicle ever sold.
- Dim_Brand: Stores the Brand attribute of each car sold
- Dim_Car: Store the Vehicle attribute of each car sold (Name, Type, Year, ...) .
- Dim_Date: Stores the Date property (Day, month, year).
- Fact_CarSales: Store attributes and keys for Dimension tables (Dim_Location, Dim_Brand, Dim_Car, Dim_Date).

### ETL Flows:
1. Connection:
- Define connections to the desired Data Source/Destination Sources.
- For example: If one of our DataSource is located on SQL Server, we need to define Authentication to access (for data source we only need Read, Destination permission we need more permissions like Write, Read, Update) to SQL Server.
2. ETL
- Define the necessary attributes for the Dim, Fact table.
- Deploy & Test.
