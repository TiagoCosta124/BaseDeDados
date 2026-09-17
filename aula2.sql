SELECT * FROM sales.stores
SELECT brand_name FROM production.brands
Select customer_id, first_name, last_name FROM sales.customers WHERE city = 'Houston'
Select * FROM sales.customers WHERE state = 'TX' OR state = 'CA'
Select * FROM production.products WHERE list_price > 1500
SELECT product_name FROM production.products WHERE model_year > 2017 AND list_price < 1000
SELECT Distinct product_name FROM production.products WHERE model_year = 2017 OR  model_year = 2018 AND list_price >= 750 AND list_price <= 1250
Select * FROM production.products WHERE list_price = (SELECT  max(list_price) FROM production.products)
SELECT  AVG(list_price) FROM production.products
