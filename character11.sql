SELECT * FROM Customers outer_orders WHERE '1990-03-10' IN(SELECT odate FROM Orders inner_orders WHERE outer_orders.cnum = inner_orders.cnum);
SELECT * FROM Customers first, Orders second WHERE first.cnum = second.cnum AND second.odate = '1990-03-10';
SELECT snum, sname FROM Salespeople main WHERE 1 < (SELECT COUNT(*) FROM Customers WHERE snum = main.snum);
SELECT * FROM Orders main WHERE NOT snum = (SELECT snum FROM Customers WHERE cnum = main.cnum);
SELECT * FROM Orders outer_orders WHERE amt > (SELECT AVG(amt) FROM Orders iner_orders WHERE iner_orders.cnum = outer_orders.cnum);
SELECT * FROM Orders outer_orders WHERE amt >= (SELECT AVG(amt) FROM Orders iner_orders WHERE iner_orders.cnum = outer_orders.cnum);
SELECT odate, SUM(amt) FROM Orders a GROUP BY odate HAVING SUM(amt) > (SELECT 2000.00 + MAX(amt) FROM Orders b WHERE a.odate = b.odate);

SELECT cnum, cname FROM Customers outer_customers WHERE rating = (SELECT MAX(rating) FROM Customers inner_customers WHERE inner_customers.city = outer_customers.city);
SELECT snum, sname FROM Salespeople main WHERE city IN(SELECT city FROM Customers inner_customers WHERE inner_customers.snum <> main.snum);
SELECT DISTINCT first.snum, sname FROM Salespeople first, Customers second WHERE first.city = second.city AND first.snum <> second.snum;