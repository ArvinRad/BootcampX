SELECT assignments.id as id, assignments.name as name,
assignments.day as day, assignments.chapter as chapter, COUNT(assistance_requests.assignment_id) as total_requests
FROM assignments
JOIN assistance_requests ON assignment_id = assignments.id
GROUP BY assignments.id
ORDER by total_requests desc;