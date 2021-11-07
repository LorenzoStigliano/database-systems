SELECT A.uun, A.most_recent
FROM (SELECT S.uun, MAX(E.date) AS most_recent
      FROM Students S, Exams E
      WHERE S.uun = E.student
      GROUP BY S.uun) A, Exams EE
WHERE A.uun = EE.student AND EE.date = A.most_recent
GROUP BY A.uun, A.most_recent
HAVING COUNT(A.most_recent) > 1;
