SELECT e.department_id         AS 'Department ID',
       ROUND(AVG(e.salary), 2) AS 'Average Salary'
  FROM employees e
 GROUP BY e.department_id