SELECT *
FROM Customers C
WHERE C.custid NOT IN (
  SELECT O.ocust
  FROM Orders O
  WHERE O.odate < '2017-01-01'
  AND O.odate > '2015-12-31');

SELECT *
FROM Customers C
EXCEPT
SELECT C.custid, C.name, C.country
FROM  Customers C  JOIN Orders O ON C.custid = O.ocust
WHERE O.odate < '2017-01-01'
AND O.odate > '2015-12-31');
