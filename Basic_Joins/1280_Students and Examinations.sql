-- Write your PostgreSQL query statement below

SELECT
    s.student_id,
    s.student_name,
    sub.subject_name,
    COUNT(e.subject_name) AS attended_exams
FROM
    Students s
CROSS JOIN
    Subjects sub
LEFT JOIN
    Examinations e
    ON s.student_id = e.student_id AND sub.subject_name = e.subject_name
GROUP BY
    s.student_id,
    s.student_name,
    sub.subject_name
ORDER BY
    s.student_id,
    sub.subject_name;

-- WITH all_combinations AS (
--     SELECT
--         s.student_id,
--         s.student_name,
--         sub.subject_name
--     FROM
--         Students s
--     CROSS JOIN
--         Subjects sub
-- )

-- SELECT
--     ac.student_id,
--     ac.student_name,
--     ac.subject_name,
--     COUNT(e.subject_name) AS attended_exams
-- FROM
--     all_combinations ac
-- LEFT JOIN
--     Examinations e
--     ON ac.student_id = e.student_id AND ac.subject_name = e.subject_name
-- GROUP BY
--     ac.student_id,
--     ac.student_name,
--     ac.subject_name
-- ORDER BY
--     ac.student_id,
--     ac.subject_name;
