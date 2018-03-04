CREATE INDEX Clientgroup ON Customers (snum);
CREATE UNIQUE INDEX Custid ON Customers (cnum);
DROP INDEX Custid;
DROP TABLE Customers;

CREATE UNIQUE INDEX Onumkey ON Orders(onum);
CREATE INDEX Mydate ON Orders(snum, odate);
CREATE UNIQUE INDEX Combination ON Customers(snum, rating);
