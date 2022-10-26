-- In your script, use DISTINCT to find the unique titles in the titles table. How many unique titles have there ever been? Answer that in a comment in your SQL file.
-- There have been 7 unique titles.

SELECT DISTINCT title FROM titles;

-- Write a query to to find a list of all unique last names of all employees that start and end with 'E' using GROUP BY.

SELECT last_name FROM employees
GROUP BY last_name
HAVING last_name LIKE 'E%e';

-- Write a query to to find all unique combinations of first and last names of all employees whose last names start and end with 'E'.

SELECT first_name, last_name FROM employees
GROUP BY first_name, last_name
HAVING last_name LIKE 'E%e';



-- Write a query to find the unique last names with a 'q' but not 'qu'. Include those names in a comment in your sql code.
/* Chelq
   Lindqvist
   Qiwen */
   
SELECT last_name FROM employees
GROUP BY last_name
HAVING last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

-- Add a COUNT() to your results (the query above) to find the number of employees with the same last name.

SELECT last_name, COUNT(last_name) FROM employees
GROUP BY last_name
HAVING last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';


-- Find all all employees with first names 'Irena', 'Vidya', or 'Maya'. Use COUNT(*) and GROUP BY to find the number of employees for each gender with those names.

SELECT first_name, gender, COUNT(gender) FROM employees
GROUP BY first_name, gender 
HAVING first_name IN ('Irena', 'Vidya', 'Maya')


-- Using your query that generates a username for all of the employees, generate a count employees for each unique username. Are there any duplicate usernames? BONUS: How many duplicate usernames are there?

SELECT LOWER(CONCAT(SUBSTR(first_name, 1, 1), SUBSTR(last_name, 1, 4), '_', SUBSTR(birth_date, 6, 2), SUBSTR(birth_date, 3, 2))) AS username, COUNT(*) AS count_username FROM employees
GROUP BY username
HAVING count_username > 1;



