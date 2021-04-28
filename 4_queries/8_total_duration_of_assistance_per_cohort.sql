-- Get the total duration of all assistance requests for each cohort
SELECT cohorts.name as name, SUM(assistance_requests.completed_at - assistance_requests.started_at) as total_duration
FROM assistance_requests
JOIN students ON student_id = students.id
Join cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_duration ASC;