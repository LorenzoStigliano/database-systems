SELECT P.course
FROM Programmes P, Degrees D
WHERE P.degree = D.code and D.type = 'PG'
GROUP BY P.course
HAVING COUNT(P.course) = 1;
