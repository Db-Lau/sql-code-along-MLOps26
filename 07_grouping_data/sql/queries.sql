SELECT * FROM food;

CREATE TABLE IF NOT EXISTS cleaned_food AS (
  SELECT 
    id as food,
    week_id as week,
    SUBSTRING(week, 1, 4) as year,
    value as search_index
  FROM food
);

SELECT * FROM cleaned_food; 

-- use aggregation functions without GROUP BY
SELECT 
  AVG(search_index) AS avg_search_index
FROM cleaned_food;

-- compare averages between food groups
SELECT 
  food, 
  AVG(search_index) AS avg_search_index
FROM cleaned_food
GROUP BY food
ORDER BY avg_search_index DESC;

-- use Having clause to filter groups
SELECT 
  food, 
  AVG(search_index) AS avg_search_index
FROM cleaned_food
GROUP BY food
HAVING avg_search_index > 50
ORDER BY avg_search_index DESC;

-- use Where clause to filter rows
-- use Having clause to filter groups
SELECT 
  food, 
  --search_index
  AVG(search_index) AS avg_search_index
FROM cleaned_food
WHERE food IN ('sushi', 'beer', 'salmon')
GROUP BY food
HAVING avg_search_index > 59
ORDER BY avg_search_index DESC;



