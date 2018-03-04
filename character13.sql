SELECT * FROM Salespeople WHERE city = ANY (SELECT city FROM Customers);
SELECT * FROM Salespeople WHERE city IN(SELECT city FROM Customers);
SELECT * FROM Salespeople WHERE sname < ANY ( SELECT cname FROM Customers);
SELECT * FROM Salespeople outer_imp WHERE EXISTS (SELECT * FROM Customers inner_imp WHERE outer_imp.sname < inner_imp.cname);
SELECT * FROM Customers WHERE rating > ANY(SELECT rating FROM Customers WHERE city = 'Rome');
SELECT * FROM Orders WHERE amt > ANY (SELECT amt FROM Orders WHERE odate = '1990-06-10');
SELECT * FROM Orders WHERE amt < ANY (SELECT amt FROM Orders A, Customers b WHERE a.cnum = b.cnum AND b.city = 'San Jose');
SELECT * FROM Orders WHERE amt < (SELECT MAX(amt) FROM Orders A, Customers b WHERE a.cnum = b.cnum AND b.city = 'San Jose');
SELECT * FROM Customers WHERE rating > ALL (SELECT rating FROM Customers WHERE city = 'Rome');
SELECT * FROM Customers outer_imp WHERE NOT EXISTS ( SELECT * FROM Customers inner_imp WHERE outer_imp.rating <= inner_imp.rating AND inner_imp.city = 'Rome');
SELECT * FROM Customers WHERE rating = ALL (SELECT rating FROM Customers WHERE city = 'San Jose');
# SELECT * FROM Customers WHERE rating = (SELECT DISTINCT rating FROM Customers WHERE city = 'San Jose');
SELECT * FROM Customers WHERE rating <> ALL (SELECT rating FROM Customers WHERE city = 'San Jose');
SELECT * FROM Customers WHERE rating NOT IN (SELECT rating FROM Customers WHERE city = 'San Jose');
SELECT * FROM Customers WHERE rating > ANY (SELECT rating FROM Customers WHERE city = 'Boston');
SELECT * FROM Customers WHERE rating > ALL (SELECT rating FROM Customers WHERE city = 'Boston');
SELECT * FROM Customers WHERE rating > ANY (SELECT rating FROM Customers WHERE city = 'Rome');
SELECT * FROM Customers outer_imp WHERE EXISTS ( SELECT * FROM Customers inner_imp WHERE outer_imp.rating > inner_imp.rating AND inner_imp.city = 'Rome');
SELECT * FROM Customers outer_imp WHERE NOT EXISTS (SELECT * FROM Customers inner_imp WHERE outer_imp.rating <= inner_imp.rating AND inner_imp.city = 'Rome');
SELECT * FROM Customers outer_imp WHERE 1 > (SELECT COUNT(*) FROM Customers inner_imp WHERE outer_imp.rating <= inner_imp.rating AND inner_imp.city = 'Rome');

SELECT * FROM Customers WHERE rating >= ANY (SELECT rating FROM Customers WHERE snum = 1002);
SELECT * FROM Salespeople WHERE city <> ALL (SELECT city FROM Customers);
SELECT * FROM Salespeople WHERE NOT city = ANY (SELECT city FROM Customers);
SELECT * FROM Orders WHERE amt > ANY (SELECT amt FROM Orders a, Customers b WHERE a.cnum = b.cnum AND b.city = 'London');
SELECT * FROM Orders WHERE amt > (SELECT MAX(amt) FROM Orders a, Customers b WHERE a.cnum = b.cnum AND b.city = 'London');
SELECT * FROM Orders WHERE amt > (SELECT MAX(amt) FROM Orders a, Customers b WHERE a.cnum = b.cnum AND b.city = 'San Jose');
SELECT * FROM Orders WHERE amt > (SELECT MAX(amt) FROM Orders a, Customers b WHERE a.cnum = b.cnum AND b.city = 'Berlin');

