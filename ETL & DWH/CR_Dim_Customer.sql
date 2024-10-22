USE Supplychain;
GO;
CREATE EXTERNAL TABLE dbo.Dim1_Customer
WITH (
    LOCATION = 'Files_SC_ETL_Dim1_Customer/',
    DATA_SOURCE = Supplychain_data,
    FILE_FORMAT = ParquetFormat
)
AS
SELECT *
FROM OPENROWSET(
    BULK 'Files_SC_ETL/Dim1Customer.csv',
    DATA_SOURCE = 'Supplychain_data',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0'
) AS [Data];