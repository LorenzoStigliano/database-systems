SELECT I.invid, I.issued, I.ordid, O.odate
FROM Invoices I, Orders O
WHERE I.ordid = O.ordid AND I.issued < O.odate;
