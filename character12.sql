SELECT cnum, cname, city FROM Customers WHERE EXISTS(SELECT * FROM Customers WHERE city = 'San Jose');
SELECT DISTINCT snum FROM Customers outer_customers WHERE EXISTS (SELECT * FROM Customers inner_customers WHERE inner_customers.snum = outer_customers.snum AND inner_customers.cnum <> outer_customers.cnum);
SELECT DISTINCT first.snum, sname, first.city FROM Salespeople first, Customers second WHERE EXISTS (SELECT * FROM Customers third WHERE second.snum = third.snum AND second.cnum <> third.cnum) AND first.snum = second.snum;
SELECT DISTINCT snum FROM Customers outer_customers WHERE NOT EXISTS (SELECT * FROM Customers inner_customers WHERE inner_customers.snum = outer_customers.snum AND inner_customers.cnum <> outer_customers.cnum);
SELECT * FROM Salespeople first WHERE EXISTS (SELECT * FROM Customers second WHERE first.snum = second.snum AND 1 < (SELECT COUNT(*) FROM Orders WHERE Orders.cnum = second.cnum));

SELECT * FROM Salespeople first WHERE EXISTS (SELECT * FROM Customers second WHERE first.snum = second.snum AND rating = 300);
SELECT a.snum, sname, a.city, comm FROM Salespeople a, Customers b WHERE a.snum = b.snum AND b.rating = 300;
SELECT * FROM Salespeople a WHERE EXISTS (SELECT * FROM Customers b WHERE b.city = a.city AND a.snum <> b.snum);
SELECT * FROM Customers a WHERE EXISTS (SELECT * FROM Orders b WHERE a.snum = b.snum AND a.cnum <> b.cnum);
