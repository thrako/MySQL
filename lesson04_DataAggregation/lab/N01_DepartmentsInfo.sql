SELECT d.id        AS 'Department id',
       COUNT(e.id) AS 'Number of employees'
  FROM departments d
       LEFT JOIN employees e ON d.id = e.department_id
 GROUP BY d.id
 ORDER BY d.id,
          COUNT(e.id);