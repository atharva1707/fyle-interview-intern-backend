SELECT COUNT(*) AS number_of_grade_as
FROM assignments
WHERE grade = 'A' AND teacher_id = (
    SELECT teacher_id
    FROM assignments
    GROUP BY teacher_id
    ORDER BY COUNT(*) DESC
    LIMIT 1
);
