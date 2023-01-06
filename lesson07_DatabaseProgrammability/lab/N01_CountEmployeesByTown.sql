DROP FUNCTION IF EXISTS ufn_count_employees_by_town;

CREATE FUNCTION ufn_count_employees_by_town(town_name VARCHAR(255))
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN (SELECT count(e.employee_id)
            FROM employees e JOIN addresses a ON a.address_id = e.address_id
            JOIN towns t ON t.town_id = a.town_id
            WHERE t.name = town_name);
END;

SELECT ufn_count_employees_by_town('Sofia') AS count;