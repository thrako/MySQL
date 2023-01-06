SELECT e.department_id AS 'Department ID',
       MIN(e.salary)   AS 'Minimum Salary'
  FROM employees e
 GROUP BY e.department_id
HAVING MIN(e.salary) > 800;