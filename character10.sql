SELECT * FROM Orders WHERE snum = (SELECT snum FROM Salespeople WHERE sname = 'Motika');
SELECT * FROM Orders WHERE snum = (SELECT snum FROM Salespeople WHERE city = 'Barcelona');
SELECT * FROM Orders WHERE snum = (SELECT DISTINCT snum FROM Orders WHERE cnum = 2001);
SELECT * FROM Orders WHERE (SELECT DISTINCT snum FROM Orders WHERE cnum = 2001) = snum;
SELECT * FROM Orders WHERE amt > (SELECT AVG(amt) FROM Orders WHERE odate = '1990-04-10');
#SELECT AVG(comm) FROM Salespeople GROUP BY city HAVlNG city = "London";
SELECT AVG (comm) FROM Salespeople WHERE city = "London";
SELECT * FROM Orders WHERE snum IN(SELECT snum FROM Salespeople WHERE city = "LONDON");
SELECT onum, amt, odate, cnum, Orders.snum FROM Orders, Salespeople WHERE Orders.snum = Salespeople.snum AND Salespeople.city = "London";
SELECT onum, amt, odate FROM Orders WHERE snum = (SELECT snum FROM Orders WHERE cnum = 2001 );
SELECT onum, amt, odate FROM Orders WHERE snum IN (SELECT snum FROM Orders WHERE cnum = 2001);
SELECT comm FROM Salespeople WHERE snum IN (SELECT snum FROM Customers WHERE city = "London");
SELECT * FROM Customers WHERE cnum = (SELECT snum + 1000 FROM Salespeople WHERE sname = 'Serres');
SELECT rating, COUNT(DISTINCT cnum) FROM Customers GROUP BY rating HAVING rating > (SELECT AVG(rating) FROM Customers WHERE city = 'San Jose');

SELECT * FROM Orders WHERE cnum = (SELECT cnum FROM Customers WHERE cname = 'Cisneros');
SELECT * FROM Orders WHERE cnum IN (SELECT cnum FROM Customers WHERE cname = 'Cisneros');
SELECT DISTINCT cname, rating FROM Customers, Orders WHERE amt > (SELECT AVG (amt) FROM Orders) AND Orders.cnum = Customers.cnum;

