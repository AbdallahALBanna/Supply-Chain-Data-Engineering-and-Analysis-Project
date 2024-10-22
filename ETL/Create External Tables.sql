USE Supplychain;
GO;
CREATE EXTERNAL TABLE dbo.FactTable_orders_and_shipments
WITH (
    LOCATION = 'Files_SC_ETL_2/',
    DATA_SOURCE = Supplychain_data,
    FILE_FORMAT = ParquetFormat
)
AS
SELECT *
FROM OPENROWSET(
    BULK 'Files_SC_ETL/',
    DATA_SOURCE = 'Supplychain_data',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0'
) AS [Data];