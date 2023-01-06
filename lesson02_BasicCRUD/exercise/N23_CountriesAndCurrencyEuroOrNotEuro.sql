### Task 23. Countries and Currency (Euro / Not Euro)

SELECT `country_name`,
       `country_code`,
       if(`currency_code` = 'EUR', 'Euro', 'Not Euro') AS `currency`
  FROM countries
 ORDER BY `country_name`;
