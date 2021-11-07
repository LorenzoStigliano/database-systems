SELECT A.pcode, P.price
FROM (SELECT D.pcode FROM Details D GROUP BY D.pcode HAVING AVG(D.qty) >= 8) A, Products P
WHERE A.pcode = P.pcode;
