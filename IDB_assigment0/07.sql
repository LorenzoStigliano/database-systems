SELECT D.pcode, SUM(D.qty)
FROM Details D
GROUP BY D.pcode HAVING SUM(D.qty) > 10 ;
