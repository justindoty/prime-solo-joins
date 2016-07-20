-- Get all customers and their addresses.

SELECT * FROM customers CROSS JOIN addresses;

-- Get all orders and their line items.

SELECT * FROM orders CROSS JOIN line_items;

-- Which warehouses have cheetos?
SELECT warehouse FROM warehouse JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
JOIN products ON products.id = warehouse_product.product_id
WHERE products.description = 'cheetos';


-- Which warehouses have diet pepsi?

SELECT warehouse FROM warehouse JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
JOIN products ON products.id = warehouse_product.product_id
WHERE products.description = 'diet pepsi';


-- Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
--
--
-- How many customers do we have?

SELECT count(customers.first_name) FROM customers;

-- How many products do we carry?

SELECT count(products.description) FROM products;

-- What is the total available on-hand quantity of diet pepsi?

SELECT sum(warehouse_product.on_hand) FROM warehouse JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
JOIN products ON products.id = warehouse_product.product_id
WHERE products.description = 'diet pepsi';
