SELECT e.employee_id                             AS employee_id,
       CONCAT_WS(' ', e.first_name, e.last_name) AS full_name,
       d.department_id                           AS department_id,
       d.name                                    AS department_name
  FROM departments d
       LEFT JOIN employees e ON d.manager_id = e.employee_id
 ORDER BY e.employee_id
 LIMIT 5;