SELECT *
FROM Cinema
WHERE MOD(id, 2) = 1 // odd numbers
  AND description != 'boring'
ORDER BY rating DESC;