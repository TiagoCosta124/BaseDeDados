SELECT * FROM sys.databases
CREATE DATABASE BikeStoresPlus
USE BikeStoresPlus
SELECT * FROM INFORMATION_SCHEMA.TABLES
SELECT * FROM INFORMATION_SCHEMA.SCHEMATA

CREATE SCHEMA "marketing"
CREATE SCHEMA "analytics"
SELECT * FROM sys.schemas WHERE name NOT LIKE 'db%'

USE BikeStoresPlus
CREATE TABLE marketing.products (
    product_id INT,
    product_name VARCHAR (255)
    )


SELECT * FROM marketing.products
INSERT INTO marketing.products (product_id, product_name)
VALUES (0, 'gel')
INSERT INTO marketing.products (product_id, product_name)
VALUES (1, 'Pneus')
INSERT INTO marketing.products (product_id, product_name)
VALUES (2, 'Carregadores')



