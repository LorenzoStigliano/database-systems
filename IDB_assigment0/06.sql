SELECT I.invid, -(I.amount - SUM(P.amount))
FROM Invoices I, Payments P
WHERE I.invid = P.invid
GROUP BY I.invid HAVING 0 > I.amount - SUM(P.amount);
