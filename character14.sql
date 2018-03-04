SELECT snum, sname FROM Salespeople WHERE city = 'London' UNION SELECT cnum, cname FROM Customers WHERE city = 'London';
SELECT snum, city FROM Customers;
SELECT snum, city FROM Customers UNION SELECT snum, city FROM Salespeople;
SELECT a.snum, sname, onum, 'Highest on', odate FROM Salespeople a, Orders b WHERE a.snum = b.snum AND b.amt = ( SELECT MAX(amt) FROM Orders c WHERE c.odate = b.odate ) UNION SELECT a.snum, sname, onum, ' Lowest on', odate FROM Salespeople a, Orders b WHERE a.snum = b.snum AND b.amt = ( SELECT MIN(amt) FROM Orders c WHERE c.odate = b.odate );
SELECT a.snum, sname, onum, 'Highest on', odate FROM Salespeople a, Orders b WHERE a.snum = b.snum AND b.amt = ( SELECT MAX(amt) FROM Orders c WHERE c.odate = b.odate ) UNION SELECT a.snum, sname, onum, ' Lowest on', odate FROM Salespeople a, Orders b WHERE a.snum = b.snum AND b.amt = ( SELECT MIN(amt) FROM Orders c WHERE c.odate = b.odate ) ORDER BY 3;
SELECT Salespeople.snum, sname, cname, comm FROM Salespeople, Customers WHERE Salespeople.city = Customers.city UNION SELECT snum, sname, ' NO MATCH ', comm FROM Salespeople WHERE NOT city = ANY ( SELECT city FROM Customers ) ORDER BY 2 DESC;
SELECT a.snum, sname, a.city, ' MATCHED ' FROM Salespeople a, Customers b WHERE a.city = b.city UNION SELECT snum, sname, city, 'NO MATCH' FROM Salespeople WHERE NOT city = ANY ( SELECT city FROM Customers ) ORDER BY 2 DESC;

SELECT cname, city, rating, 'High Rating' FROM Customers WHERE rating >= 200 UNION SELECT cname, city, rating, ' Low Ratlng' FROM Customers WHERE rating < 200;
SELECT cname, city, rating, 'High Rating' FROM Customers WHERE rating >= 200 UNION SELECT cname, city, rating, ' Low Rating' FROM Customers WHERE NOT rating >= 200;
SELECT cnum, cname FROM Customers a WHERE 1 < (SELECT COUNT(*) FROM Orders b WHERE a.cnum = b.cnum) UNION SELECT snum, sname FROM Salespeople a WHERE 1 < (SELECT COUNT(*) FROM Orders b WHERE a.snum = b.snum) ORDER BY 2;
# SELECT snum FROM Salespeople WHERE city = 'San Jose' UNION (SELECT cnum FROM Customers WHERE city = 'San Jose' UNION ALL SELECT onum FROM Orders WHERE odate = '1990-03-10');