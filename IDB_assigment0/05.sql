SELECT C.custid, C.cname, O.odate
FROM Customers C, Orders O
WHERE O.ocust = C.custid
AND O.odate = (
  SELECT MAX(O.odate)
  FROM Orders O
  WHERE C.custid = O.ocust);

SELECT C.custid, C.cname, MAX(O.odate)
FROM Customers C, Orders O JOIN ON O.ocust = C.custid
GROUP BY (C.custid, c.name);
