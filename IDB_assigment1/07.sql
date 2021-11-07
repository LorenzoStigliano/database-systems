SELECT P.course
FROM Programmes P, Degrees D
WHERE P.degree = D.code and d.type = 'PG'

INTERSECT

SELECT P.course
FROM Programmes P, Degrees D
WHERE P.degree = D.code and d.type = 'UG';
