
-- 2. Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya' using IN. Enter a comment with the number of records returned.   
--709 records found

SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

-- 3. Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', as in Q2, but use OR instead of IN. Enter a comment with the number of records returned. Does it match number of rows from Q2?  
--709 records found

SELECT * FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

-- 4. Find all current or previous employees with first names 'Irena', 'Vidya', or 'Maya', using OR, and who is male. Enter a comment with the number of records returned.  
--441 records found

SELECT * FROM employees
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
  AND gender = 'F';

-- 5. Find all current or previous employees whose last name starts with 'E'. Enter a comment with the number of employees whose last name starts with E.    
--7330 records found

SELECT * FROM employees
WHERE last_name LIKE 'E%';

-- 6. Find all current or previous employees whose last name starts or ends with 'E'. Enter a comment with the number of employees whose last name starts or ends with E. How many employees have a last name that ends with E, but does not start with E? 
--30723 employees last name start or end with "Ee"

SELECT * FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE'%e';

SELECT * FROM employees
WHERE last_name LIKE'%e';

-- 7. Find all current or previous employees employees whose last name starts and ends with 'E'. Enter a comment with the number of employees whose last name starts and ends with E. How many employees' last names end with E, regardless of whether they start with E? 899 records found

SELECT * FROM employees
WHERE last_name LIKE 'E%e';


-- 8. Find all current or previous employees hired in the 90s. Enter a comment with the number of employees returned. 
--135214 RECORDS FOUND

SELECT * FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'; 

-- 9. Find all current or previous employees born on Christmas. Enter a comment with the number of employees returned.
-- 842 employees born on Christmas day
SELECT * FROM employees
WHERE birth_date Like '%-12-25';

-- 10 Find all current or previous employees hired in the 90s and born on Christmas. Enter a comment with the number of employees returned. 2 records found
-- 362 records returned 
SELECT * FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
  and birth_date LIKE '%-12-25';

-- 11. Find all current or previous employees with a 'q' in their last name. Enter a comment with the number of records returned. 1873 records found
-- 1873 records returned 
SELECT * FROM employees
WHERE last_name LIKE '%q%';

-- 12. Find all current or previous employees with a 'q' in their last name but not 'qu'. How many employees are found? 547 records found
--547 empolyees
SELECT * FROM employees
WHERE last_name LIKE'%q%' AND last_name NOT LIKE '%qu%';

