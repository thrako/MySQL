SELECT p.category_id AS 'Category ID',
       ROUND(AVG(p.price), 2) AS 'Average Price',
       ROUND(MIN(p.price), 2) AS 'Cheapest Product',
       ROUND(MAX(p.price), 2) AS 'Most Expensive Product'
  FROM products p
 GROUP BY p.category_id;