CREATE TABLE Salespeople1 (snum integer NOT NULL PRIMARY KEY, sname char(10) NOT NULL UNIQUE, city char(10), comm decimal CHECK (comm < 1));

CREATE TABLE Orders
(onum integer NOT NULL PRIMARY KEY,
amt decimal,
odate date NOT NULL,
cnum integer NOT NULL,
snum integer NOT NULL,
UNIOUE (snum, cnum));

CREATE TABLE Orders
(onum integer NOT NULL UNIQUE,
amt decimal,
odate date NOT NULL,
cnum integer NOT NULL,
snum integer NOT NULL,
UNIQUE (snum, cnum));

CREATE TABLE Salespeople
(snum integer NOT NULL PRIMARY KEY,
sname char(15) CHECK (sname BETWEEN 'AA' AND 'MZ'),
city char(15),
comm decimal NOT NULL DEFAULT = .10);

CREATE TABLE Orders
(onum integer NOT NULL,
amt decimal,
odate date,
cnum integer NOT NULL,
snum integer NOT NULL,
CHECK ((cnum > snum) AND (onum > cnum)));