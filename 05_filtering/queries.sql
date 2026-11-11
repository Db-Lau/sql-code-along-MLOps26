SELECT *
FROM data_jobs
WHERE salary_in_usd < 50000;


SELECT *
FROM data_jobs
WHERE experience_level = 'EN';


SELECT MEDIAN(salary_in_usd) AS median_salary
FROM data_jobs
WHERE experience_level = 'MI';


-- only salary > 500000 AND salary < 700000
SELECT salary_in_usd
FROM data_jobs
WHERE (salary_in_usd > 500000) AND (salary_in_usd < 700000)
ORDER BY salary_in_usd

--salary < 500000 OR salary > 700000
SELECT salary_in_usd
FROM data_jobs
WHERE (salary_in_usd <16000) OR (salary_in_usd > 700000)
ORDER BY salary_in_usd


--salary < 16000
SELECT salary_in_usd
FROM data_jobs
WHERE NOT (salary_in_usd > 16000) 
ORDER BY salary_in_usd


--no. of rows with experience entry
SELECT COUNT(*)
FROM data_jobs
--WHERE (experience_level = 'EN') OR (experience_level = 'MI')
WHERE experience_level IN ('EN', 'MI')


--use of filter clause
SELECT 
  COUNT(*) AS total_jobs,
  COUNT(*) FILTER (WHERE remote_ratio = 100) AS total_remote_jobs
FROM data_jobs;




