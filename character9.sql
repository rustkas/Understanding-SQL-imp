SELECT first.cname, second.cname, first.rating FROM Customers first, Customers second WHERE first.rating = second.rating;
SELECT first.cname, second.cname, first.rating FROM Customers first, Customers second WHERE first.rating = second.rating AND first.cname < second.cname;
SELECT first.cname, second.cname, first.rating FROM Customers first, Customers second WHERE first.rating = second.rating AND first.cname <= second.cname;
SELECT first.onum, first.cnum, first.snum, second.onum, second.cnum, second.snum FROM Orders first, Orders second WHERE first.cnum = second.cnum AND first.snum <> second.snum;
SELECT a.cnum, b.cnum, c.cnum FROM Customers a, Customers b, Customers c WHERE a.rating = 100 AND b.rating = 200 AND c.rating = 300;
SELECT sname, Salespeople.snum, first.cname, second.cname FROM Customers first, Customers second, Salespeople WHERE first.snum = second.snum AND Salespeople.snum = first.snum AND first.cnum < second.cnum;

SELECT first.sname, second.sname FROM Salespeople first, Salespeople second WHERE first.city = second.city AND first.sname < second.sname;
SELECT cname, first.onum, second.onum FROM Orders first, Orders second, Customers WHERE first.cnum = second.cnum AND first.cnum = Customers.cnum AND first.onum < second.onum;
SELECT a.cname, a.city FROM Customers a, Customers b WHERE a.rating = b.rating AND b.cnum = 2001;