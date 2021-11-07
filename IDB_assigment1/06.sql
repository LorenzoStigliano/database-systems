SELECT X.student, SUM(X.a) as A, SUM(X.b) as B, SUM(X.c) as C, SUM(X.d) as D
FROM (SELECT E.student, CASE WHEN E.grade >= 80 THEN COUNT(E.grade >= 80) ELSE 0 END AS A,
                  CASE WHEN E.grade < 80 AND E.grade >=60 THEN COUNT(E.grade < 80 AND E.grade >=60) ELSE 0 END AS B,
                  CASE WHEN E.grade >= 40 AND E.grade < 60 THEN COUNT(E.grade >= 40 AND E.grade < 60) ELSE 0 END AS C,
                  CASE WHEN E.grade < 40 THEN COUNT(E.grade < 40) ELSE 0 END AS D
      FROM Exams E
      GROUP BY E.student, E.grade) X
GROUP BY X.student;
