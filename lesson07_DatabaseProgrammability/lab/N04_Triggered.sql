CREATE TABLE deleted_employees (
    employee_id   INT PRIMARY KEY AUTO_INCREMENT,
    first_name    VARCHAR(50),
    last_name     VARCHAR(50),
    middle_name   VARCHAR(50),
    job_title     VARCHAR(50),
    department_id INT DEFAULT NULL,
    salary        DECIMAL(19, 4)
);

CREATE TRIGGER tr_deleted_employees
    AFTER DELETE
    ON employees
    FOR EACH ROW
BEGIN
    INSERT
      INTO deleted_employees(first_name, last_name, middle_name, job_title, department_id, salary)
    VALUES (old.first_name, old.last_name, old.middle_name, old.job_title, old.department_id, old.salary);
END;


ALTER TABLE employees_projects
    DROP CONSTRAINT fk_employees_projects_employees;

ALTER TABLE employees_projects
    ADD CONSTRAINT fk_employees_projects_employees
        FOREIGN KEY (employee_id) REFERENCES employees (employee_id)
            ON DELETE CASCADE;

DELETE
  FROM employees
 WHERE employee_id = 15;

SELECT *
  FROM deleted_employees;