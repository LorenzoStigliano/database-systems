SELECT AA.uun, AA.name
FROM (SELECT A.uun,A.name, A.degree, COUNT(A.course) AS number_of_exams_taken_in_degree_programme
      FROM (SELECT S.uun, S.name, S.Degree, E.Course
            FROM Students S, Exams E
            WHERE S.uun = E.student
            GROUP BY S.uun, E.course
            HAVING E.Course IN (SELECT P.Course FROM Programmes P WHERE S.Degree = P.degree)) A
      GROUP BY A.uun, A.name, A.degree) AA,
      (SELECT P.Degree, COUNT(P.course)
      FROM Programmes P
      GROUP BY P.Degree) BB
WHERE BB.count = AA.number_of_exams_taken_in_degree_programme AND BB.degree = AA.degree

UNION

SELECT SS.uun , SS.name
FROM (SELECT D.code
      FROM Degrees D
      WHERE D.code IN (SELECT D.code
                       FROM Degrees D
                       EXCEPT ALL
                       SELECT P.degree
                       FROM Programmes P, Courses C
                       WHERE P.course = C.code
                       GROUP BY P.degree)) C, Students SS
WHERE SS.degree = C.code;
