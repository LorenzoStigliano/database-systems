SELECT COUNT(D.type) AS number_of_PG
FROM Students S, Degrees D
WHERE S.degree = D.code AND D.type = 'PG';
