SELECT SUM(amt) FROM Orders;
SELECT AVG(amt) FROM Orders;
SELECT COUNT(DISTINCT snum) FROM Orders;
SELECT COUNT(*) FROM Customers;
SELECT COUNT(ALL rating) FROM Customers;
SELECT snum, MAX(amt) FROM Orders GROUP BY snum;
SELECT snum, odate, MAX(amt) FROM Orders GROUP BY snum, odate;
SELECT snum, odate, MAX(amt) FROM Orders GROUP BY snum, odate HAVING MAX(amt) > 3000.00;
#SELECT snum, MAX(amt) FROM Orders GROUP BY snum HAVING odate = '1988-10-03';
SELECT snum, MAX(amt) FROM Orders GROUP BY snum HAVING snum IN (1002,1007);
#SELECT odate, MAX(SUM(amt)) FROM Orders GROUP BY odate;

SELECT COUNT(*) FROM Orders WHERE odate = '1990-03-10';
SELECT COUNT(DISTINCT city) FROM Customers;
SELECT cnum, MIN(amt) FROM Orders GROUP BY cnum;
SELECT MIN(cname) FROM Customers WHERE cname LIKE 'G%';
SELECT city, MAX(rating) FROM Customers GROUP BY city;
SELECT odate, count(DISTINCT snum) FROM Orders GROUP BY odate;
