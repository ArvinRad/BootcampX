-- Calculate the average time it takes to start an assistance request.
SELECT avg(assistance_requests.started_at - assistance_requests.created_at) as average_waiting_time
FROM assistance_requests
;