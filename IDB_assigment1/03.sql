SELECT S.uun, MIN(E.grade), MAX(E.grade), COUNT(E.grade)
FROM Students S, Exams E
WHERE S.uun = E.student
GROUP BY S.uun
HAVING SUM(E.grade)/COUNT(E.grade) >= 75;
