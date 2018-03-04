INSERT INTO Sjpeople SELECT * FROM Salespeople WHERE city = 'San Jose';
INSERT INTO Sjpeople SELECT * FROM Salespeople WHERE snum = ANY (SELECT snum FROM Customers WHERE city = 'San Jose');
INSERT INTO (Samecity SELECT * FROM (Salespeople outer_imp WHERE city IN ( SELECT city FROM Customers inner_imp WHERE inner_imp.snum = outer_imp.snum);
DELETE FROM Customers WHERE snum = ANY ( SELECT snum FROM Salespeople WHERE city = 'London' );
DELETE FROM Salespeople WHERE EXISTS ( SELECT * FROM Customers WHERE rating = 100 AND Salespeople.snum = Customers.snum );
DELETE FROM Salespeople WHERE 100 IN ( SELECT rating FROM Customers WHERE Salespeople.snum = Customers.snum);
DELETE FROM Salespeople WHERE (snum IN ( SELECT snum FROM Orders WHERE amt = ( SELECT MIN(amt) FROM Orders b WHERE a.odate = b.odate ));
DELETE FROM Salespeople WHERE snum IN ( SELECT snum FROM Orders a WHERE amt = ( SELECT MIN(amt) FROM Orders b WHERE a.odate = b.odate ) AND 1 < ( SELECT COUNT onum FROM Orders b WHERE a.odate = b.odate ));
UPDATE Salespeople SET comm = comm + .01 WHERE 2 <= ( SELECT COUNT(cnum) FROM Customers WHERE Customers.snum = Salespeople.snum );
UPDATE Salespeople SET comm = comm - .01 WHERE snum IN ( SELECT snum FROM Orders a WHERE amt = ( SELECT MIN(amt) FROM Orders b WHERE a.odate = b.odate ));

INSERT INTO Multicust SELECT * FROM Salespeople WHERE 1 < (SELECT COUNT(*) FROM Customers WHERE Customers.snum = Salespeople.snum);
DELETE FROM Customers WHERE NOT EXISTS (SELECT * FROM Orders WHERE cnum = Customers.cnum);
UPDATE Salespeople SET comm = comm + (comm * .2) WHERE 3000 < (SELECT SUM(amt) FROM Orders WHERE snum = Salespeople.snum);
UPDATE Salespeople SET comm = comm + (comm * .2) WHERE 3000 < (SELECT SUM (amt) FROM Orders WHERE snum = Salespeople.snum) AND comm + (comm * .2) < 1.0;
