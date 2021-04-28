-- Get the average duration of assistance requests for each cohort.
SELECT cohorts.name as name, avg(assistance_requests.started_at - assistance_requests.completed_at) as average_assistance_time
FROM assistance_requests
JOIN students ON student_id = students.id
Join cohorts ON cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC;
