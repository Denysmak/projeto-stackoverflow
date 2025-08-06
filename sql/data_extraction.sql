SELECT EXTRACT(YEAR FROM creation_date) AS year, tags 
FROM bigquery-public-data.stackoverflow.posts_questions
ORDER BY year
LIMIT 20;