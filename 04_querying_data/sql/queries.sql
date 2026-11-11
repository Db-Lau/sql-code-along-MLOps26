-- return all columns
SELECT * FROM data_jobs;

-- return a subset of columns
SELECT job_title, salary 
FROM data_jobs;

SELECT * EXCLUDE(salary, salary_currency)
FROM data_jobs; 

-- sort rows with one column
SELECT * FROM data_jobs
ORDER BY salary_in_usd DESC;

-- sort rows with two columns
SELECT * FROM data_jobs
ORDER BY job_title, salary_in_usd DESC;

-- use of alias
SELECT COUNT(job_title) AS nr_of_rows
FROM data_jobs;

SELECT COUNT(DISTINCT job_title) AS nr_distinct_title
FROM data_jobs;

-- aggregate functions
SELECT 
  MIN(salary_in_usd) AS min_salary,
  MAX(salary_in_usd) AS max_salary,
  COUNT(salary_in_usd) AS nr_rows,
  AVG(salary_in_usd) AS avg_salary,
  MEDIAN(salary_in_usd) AS med_salary
FROM data_jobs;