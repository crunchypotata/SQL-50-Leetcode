SELECT
    query_name,
    round(avg(rating * 1.0 / position),2) AS quality,
    round(COUNT(CASE WHEN rating < 3 THEN 1 END) * 100.0 / count(rating),2) AS poor_query_percentage
FROM Queries
GROUP BY query_name;

-- select query_name, round(avg(rating * 1.0 / position),2) as quality,
-- ROUND(SUM((rating < 3)::int) * 100. / COUNT(*), 2) AS poor_query_percentage
-- from Queries
-- group by query_name