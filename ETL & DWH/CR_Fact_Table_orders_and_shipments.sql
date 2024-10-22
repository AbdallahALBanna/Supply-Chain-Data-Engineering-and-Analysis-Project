USE Supplychain;
GO;
CREATE EXTERNAL TABLE dbo.Fact1_Table_orders_and_shipments
WITH (
    LOCATION = 'Files_SC_ETL_Fact1/',
    DATA_SOURCE = Supplychain_data,
    FILE_FORMAT = ParquetFormat
)
AS
SELECT *
FROM OPENROWSET(
    BULK 'Files_SC_ETL/fact1_orders_and_shipments.csv',
    DATA_SOURCE = 'Supplychain_data',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0'
) AS [Data];