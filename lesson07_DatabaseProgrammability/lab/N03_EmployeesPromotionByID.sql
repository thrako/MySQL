DROP PROCEDURE IF EXISTS usp_raise_salary_by_id;

CREATE PROCEDURE usp_raise_salary_by_id(id BIGINT)
BEGIN
    UPDATE employees
       SET salary = salary * 1.05
     WHERE employee_id = id;
END;

CALL usp_raise_salary_by_id(1001);

SELECT first_name, last_name, salary
  FROM employees
 WHERE employee_id = 1001;