-- Get important data about each assistance request.
SELECT teachers.name as teacher, students.name as student, assignments.name as assignment,
(assistance_requests.started_at - assistance_requests.completed_at) as duration
FROM assistance_requests
JOIN students ON student_id = students.id
Join teachers ON teacher_id = teachers.id
JOIN assignments ON assignment_id = assignments.id
ORDER BY duration;