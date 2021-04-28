-- Get the total number of assignments greater than 10 for each day of bootcamp
SELECT day, count(*) as total_assignments
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;