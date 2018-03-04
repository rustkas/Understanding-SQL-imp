CREATE VIEW Highratings
AS SELECT *
FROM Customers
WHERE rating = (SELECT MAX(rating)
FROM Customers);

CREATE VIEW Citynumber
AS SELECT city, COUNT(DISTINCT snum)
FROM Salespeople
GROUP BY city;

CREATE VIEW Nameorders
AS SELECT sname, AVG(amt), SUM(amt)
FROM Salespeople, Orders
WHERE Salespeople.snum = Orders.snum
GROUP BY sname;

CREATE VIEW Multcustomers
AS SELECT *
FROM Salespeople a
WHERE 1 < (SELECT COUNT(*)
FROM Customers b
WHERE a.snum = b.snum);