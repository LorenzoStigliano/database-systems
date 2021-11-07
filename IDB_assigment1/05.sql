SELECT D.code, 0
FROM Degrees D
WHERE D.code IN (SELECT D.code
                 FROM Degrees D
                 EXCEPT ALL
                 SELECT P.degree
                 FROM Programmes P, Courses C
                 WHERE P.course = C.code
                 GROUP BY P.degree)

UNION

SELECT P.degree, SUM(C.credits)
FROM Programmes P, Courses C
WHERE P.course = C.code
GROUP BY P.degree;
