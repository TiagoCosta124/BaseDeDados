

SELECT production.products.product_name,  production.categories.category_name
FROM production.products
INNER JOIN production.categories ON production.categories.category_id=production.products.category_id;




BEGIN TRANSACTION
SET IDENTITY_INSERT production.categories ON
INSERT INTO production.categories(category_id,category_name) VALUES (90, 'Super-Hybrid Bikes (done with a commit transaction)')
SET IDENTITY_INSERT production.categories OFF
COMMIT TRANSACTION

BEGIN TRANSACTION 
SET IDENTITY_INSERT production.brands ON
INSERT INTO production.brands(brand_id,brand_name) VALUES (99, 'Hiper-Hybrid Bikes (done with a rollback transaction)')
SET IDENTITY_INSERT production.brands OFF
ROLLBACK TRANSACTION

SELECT  * FROM production.brands
SELECT * FROM production.categories


BEGIN TRANSACTION 
SET IDENTITY_INSERT production.categories ON
DELETE FROM production.categories WHERE category_id = 99;
SET IDENTITY_INSERT production.categories OFF
ROLLBACK TRANSACTION

SELECT  * FROM production.brands
SELECT * FROM production.categories



SET IDENTITY_INSERT production.brands OFF;
SET IDENTITY_INSERT production.categories OFF;

BEGIN TRY
    BEGIN TRANSACTION;
    SET IDENTITY_INSERT production.categories ON;
    INSERT INTO production.categories (category_id, category_name)
    VALUES  (90, 'bicletas'), (99, 'biclas');
     SET IDENTITY_INSERT production.categories OFF;
    SET IDENTITY_INSERT production.brands ON;
    INSERT INTO production.brands (brand_id, brand_name) VALUES (99, 'biclas'), (90, 'bicletas');
    SET IDENTITY_INSERT production.brands OFF;
    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION;
    SET IDENTITY_INSERT production.brands OFF;
    SET IDENTITY_INSERT production.categories OFF;
    SELECT ERROR_MESSAGE() AS ERRO;
END CATCH;
SELECT * FROM production.brands WHERE brand_id = 99
SELECT * FROM production.categories WHERE categories.category_id = 99

