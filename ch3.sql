SELECT snum, sname, city, comm FROM Salespeople;
SELECT * FROM Salespeople;
SELECT sname, comm FROM Salespeople;
SELECT odate, snum, onum, amt FROM Orders;
SELECT snum FROM Orders;
SELECT DISTINCT snum FROM Orders;
SELECT sname, city FROM Salespeople WHERE city = "LONDON";
SELECT sname, city FROM Salespeople WHERE city = 'London';
SELECT * FROM Customers WHERE rating = 100;

SELECT * FROM Customers WHERE snum = 1001;
SELECT city, sname, snum, comm FROM Salespeople;
SELECT rating, cname FROM Customers WHERE city = 'SanJose';




