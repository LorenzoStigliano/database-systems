SELECT A.student
FROM (select E.student, count(E.course) as failed from Exams E where grade<40 group by E.student) A,
     (select E.student, count(E.course) as all from Exams E group by E.student) B
WHERE A.student = B.student and CAST (A.failed as NUMERIC)/B.all > 0.3;
