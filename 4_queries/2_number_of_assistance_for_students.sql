-- Get the total number of assistance_requests for a student.
SELECT COUNT(*), students.name as name
FROM assistance_requests
JOIN students ON student_id = students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;