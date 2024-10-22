USE Supplychain;
GO;
CREATE EXTERNAL TABLE dbo.Dim_Product
WITH (
    LOCATION = 'Files_SC_ETL_Dim_Product/',
    DATA_SOURCE = Supplychain_data,
    FILE_FORMAT = ParquetFormat
)
AS
SELECT *
FROM OPENROWSET(
    BULK 'Files_SC_ETL/DimProduct.csv',
    DATA_SOURCE = 'Supplychain_data',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0'
) AS [Data];