SELECT COUNT(e1.employee_id) AS count
  FROM employees e1
 WHERE salary > (SELECT AVG(e2.salary)
                   FROM employees e2);
