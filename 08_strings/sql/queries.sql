SELECT * FROM sql_glossary;

--extract one character with indexing
SELECT 
  sql_word,
  sql_word[0], --duckdb use index 0 for the first character before duckdb version 1.5.6
  sql_word[1],
  sql_word[-1]
FROM sql_glossary;

-- use slicing for extracting multiple characters
SELECT 
  sql_word,
  sql_word[:2], 
  sql_word[:3],
  sql_word[2:3],
FROM sql_glossary;

SELECT * FROM sql_glossary;

SELECT 
  sql_word,
  TRIM(sql_word, ' ') AS trimmed_word, -- use TRIM() to take away leading and trailing spaces 
  UPPER(sql_word) AS capital_word, 
  LOWER(sql_word) AS lowercase_word
FROM sql_glossary;

SELECT 
  sql_word,
  REPLACE(sql_word, ' ', '_') AS replaced_word,
  CONCAT('Command: ', UPPER(TRIM(sql_word, ' '))) AS sql_command --use of nested strings functions
FROM sql_glossary;

--use LIKE operator to describe a pattern
--find all rows begin with 'select'

SELECT *
FROM sql_glossary
WHERE
  example LIKE 'select%' --use % for any characters after 'select'

-- use regular expression functions instead
SELECT *
FROM sql_glossary
WHERE 
  --regexp_matches(example, '^s') -- begin with s
  --regexp_matches(example, '^S') -- begin with S
  regexp_matches(example, '^[SsCc]') -- begin with either one of the letters: S, s, C, c