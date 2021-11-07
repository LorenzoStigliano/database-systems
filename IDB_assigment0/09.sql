 SELECT C.country, COUNT(O.ordid)
 FROM Orders O, Customers C
 WHERE O.ocust = C.custid AND O.odate < '2017-01-01' AND O.odate > '2015-12-31'
 GROUP BY C.country;
