USE Supplychain;
GO;
CREATE EXTERNAL TABLE dbo.Dim_Warehouse
WITH (
    LOCATION = 'Files_SC_ETL_Dim_Warehouse/',
    DATA_SOURCE = Supplychain_data,
    FILE_FORMAT = ParquetFormat
)
AS
SELECT *
FROM OPENROWSET(
    BULK 'Files_SC_ETL/DimWarehouse.csv',
    DATA_SOURCE = 'Supplychain_data',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0'
) AS [Data];