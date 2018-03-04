SELECT Customers.cname, Salespeople.sname, Salespeople.city FROM Salespeople, Customers WHERE Salespeople.city = Customers.city;
SELECT Customers.cname, Salespeople.sname FROM Customers, Salespeople WHERE Salespeople.snum = Customers.snum;
SELECT sname, cname FROM Salespeople, Customers WHERE sname < cname AND rating < 200;
SELECT onum, cname, Orders.cnum, Orders.snum FROM Salespeople, Customers,Orders WHERE Customers.city <> Salespeople.city AND Orders.cnum = Customers.cnum AND Orders.snum = Salespeople.snum;

SELECT onum, cname FROM Orders, Customers WHERE Customers.cnum = Orders.cnum;
SELECT onum, cname, sname FROM Orders, Customers, Salespeople WHERE Customers.cnum = Orders.cnum AND Salespeople.snum = Orders.snum;
SELECT onum, comm * amt FROM Salespeople, Orders, Customers WHERE rating > 100 AND Orders.cnum = Customers.cnum AND Orders.snum = Salespeople.snum;
