-- Write a solution to find the number of times each student attended each exam.
-- Return the result table ordered by student_id and subject_name.

select a.student_id, a.student_name, b.subject_name, count(c.subject_name) as attended_exams
from
    students a
    cross join subjects b
    left join examinations c
    on
        a.student_id = c.student_id and
        b.subject_name = c.subject_name
        group by
            a.student_id,
            a.student_name,
            b.subject_name
        order by
            a.student_id,
            b.subject_name
