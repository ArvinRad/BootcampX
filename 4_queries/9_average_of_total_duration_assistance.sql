-- Calculate the average total duration of assistance requests for each cohort.
SELECT avg(total_duration) as average_total_duration
FROM (
  SELECT cohorts.name as name, SUM(assistance_requests.completed_at - assistance_requests.started_at) as total_duration
  FROM assistance_requests
  JOIN students ON student_id = students.id
  Join cohorts ON cohort_id = cohorts.id
  GROUP BY cohorts.name
) as total_duration;
