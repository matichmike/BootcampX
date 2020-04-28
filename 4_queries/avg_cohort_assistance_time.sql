SELECT cohorts.name, avg(completed_at - started_at)
FROM assistance_requestes
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time;