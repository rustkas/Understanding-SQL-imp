CREATE TABLE Cityorders
(onum integer NOT NULL PRIMARY KEY,
amt decimal,
cnum integer,
snum integer,
city char (15),
FOREIGN KEY (onum, amt, snum) REFERENCES Orders (onum, amt, snum),
FOREIGN KEY (cnum, city) REFERENCES Customers (cnum, city));

CREATE TABLE Orders
(onum integer NOT NULL,
amt decimal,
odate date,
cnum integer NOT NULL,
snum integer,
prev integer,
UNIQUE (cnum, onum),
FOREIGN KEY (cnum, prev) REFERENCES Orders (cnum,onum));