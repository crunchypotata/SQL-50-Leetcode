-- Write your PostgreSQL query statement below

SELECT p.product_id,
coalesce(round(sum(price * units) * 1.0 / sum(units), 2), 0) as average_price
FROM Prices p
LEFT JOIN UnitsSold u
ON p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;