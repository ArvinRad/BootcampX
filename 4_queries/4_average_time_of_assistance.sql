-- Get the average time of an assistance request
SELECT (assistance_requests.started_at - assistance_requests.completed_at) as average_assistance_request_duration
FROM assistance_requests
WHERE id = 100;