-- Get each day with the total number of assignments and the total duration of the assignmentsSELECT assignments.id as id, assignments.name as name,
SELECT assignments.day as day, COUNT(assignments.id) as total_Number_of_assignment, SUM(assignments.duration) as duration
FROM assignments
GROUP BY assignments.day
ORDER by day asc;