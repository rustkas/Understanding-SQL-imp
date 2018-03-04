INSERT INTO Customers (city, cname, cnum) VALUES ('London', 'Honman', 2001);
INSERT INTO Londonstaff SELECT * FROM Salespeople WHERE city = 'London';
INSERT INTO Daytotals (date, total) SELECT odate, SUM (amt) FROM Orders GROUP BY odate;

INSERT INTO Salespeople (city, cname, comm, cnum) VALUES ('San Jose', 'Blanco', NULL, 1100);
DELETE FROM Orders WHERE cnum = 2006;
UPDATE Customers SET rating = rating + 100 WHERE city = 'Rome';
UPDATE Customers SET snum = 1004 WHERE snum = 1002;