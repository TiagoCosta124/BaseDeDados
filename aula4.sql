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

CREATE TABLE analytics.products2(
    product_id INT PRIMARY KEY,
    product_name VARCHAR (255) NOT NULL,
    brand_id INT NOT NULL,
    category_id INT NOT NULL,
    model_year SMALLINT NOT NULL,
    list_price DECIMAL (10, 2) NOT NULL
)

SELECT * FROM analytics.products2

INSERT INTO analytics.products2 (product_id, product_name, brand_id, category_id, model_year, list_price)
VALUES (0, 'gel', 0, 0, 2024, 6.32)

INSERT INTO analytics.products2 (product_id, product_name, brand_id, category_id, model_year, list_price)
VALUES (1, 'Pneus', 1, 1, 1977, 66.74)

INSERT INTO analytics.products2 (product_id, product_name, brand_id, category_id, model_year, list_price)
VALUES (2, 'Carregadores', 2, 2, 2032, 13.31)


SELECT * FROM analytics.products2



CREATE TABLE analytics.products3(
    product_id INT IDENTITY (1, 1) PRIMARY KEY,
    product_name VARCHAR (255) NOT NULL,
    brand_id INT NOT NULL,
    category_id INT NOT NULL,
    model_year SMALLINT NOT NULL,
    list_price DECIMAL (10, 2) NOT NULL
)
 INSERT INTO analytics.products3 (product_name, brand_id, category_id, model_year, list_price)
VALUES ('gel', 0, 0, 2024, 6.32)

SELECT * FROM analytics.products3













