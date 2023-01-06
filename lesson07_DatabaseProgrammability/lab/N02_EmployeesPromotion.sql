DROP PROCEDURE IF EXISTS usp_raise_salaries;

CREATE PROCEDURE usp_raise_salaries(department_name VARCHAR(255))
BEGIN
    UPDATE employees e
      JOIN departments d ON d.department_id = e.department_id
       SET salary = salary * 1.05
     WHERE d.name = department_name;
END;

CALL usp_raise_salaries('Tool Design');