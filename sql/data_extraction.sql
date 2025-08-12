SELECT EXTRACT(YEAR FROM creation_date) AS year, tag
,COUNT(*) as quantidade
FROM bigquery-public-data.stackoverflow.posts_questions,

UNNEST(SPLIT(tags, '|')) AS tag
GROUP BY year, tag
ORDER BY year

LIMIT 200;