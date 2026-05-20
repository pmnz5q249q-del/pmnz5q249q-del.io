/*
1.View all high risk transactions
2.Find the 10 largest orders by quantity
3.Filter transactions by locations and risk level
4.Identify high revenue orders with long lead times
*/
/*1.View all high risk transactions*/
SELECT 
order_id,
date,
SKU,
quantity_sold,
location,
lead_time,
risk_level
FROM inventory_transactions
WHERE risk_level= 'High Risk'
ORDER BY lead_time DESC;

/*2.Find the 10 largest orders by quantity*/
SELECT
order_id,
SKU,
quantity_sold,
location,
staff_id,
revenue
FROM inventory_transactions
ORDER BY quantity_sold DESC
LIMIT 10;

/*3.Filter transactions by locations and risk level*/

SELECT
order_id,
date,
SKU,
quantity_sold,
location,
lead_time,
risk_level
FROM inventory_transactions
WHERE location='South'
AND (risk_level='Medium Risk' OR risk_level='High Risk')
ORDER BY risk_level,lead_time DESC;

/*4.Identify high revenue orders with long lead times*/

SELECT sum(revenue) as total_revenue
FROM inventory_transactions
