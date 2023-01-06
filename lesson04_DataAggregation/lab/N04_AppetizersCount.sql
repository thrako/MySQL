SELECT count(*) AS 'Appetizers with price higher than 8.00'
  FROM products p
 WHERE p.category_id = (SELECT id
                        FROM categories c
                       WHERE c.name = 'appetizers')
   AND p.price > 8.00;
;