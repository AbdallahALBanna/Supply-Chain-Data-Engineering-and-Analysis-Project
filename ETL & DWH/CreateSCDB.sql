 -- Database for Supply chain data
 CREATE DATABASE Supplychain
   COLLATE Latin1_General_100_BIN2_UTF8;
 GO;
    
 Use Supplychain;
 GO;
    
 -- External data is in the Files container in the data lake
 CREATE EXTERNAL DATA SOURCE Supplychain_data WITH (
     LOCATION = 'https://datalake0ul6wsm.blob.core.windows.net/scetlfiles'
 );
 GO;
    
 -- Format for table files
 CREATE EXTERNAL FILE FORMAT ParquetFormat
     WITH (
             FORMAT_TYPE = PARQUET,
             DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
         );
 GO;