SELECT student_id, COUNT(*) AS number_of_graded_assignments
FROM assignments
WHERE state == 'GRADED'
GROUP BY student_id;
