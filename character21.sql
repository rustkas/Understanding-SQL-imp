GRANT UPDATE (rating) ON Customers TO Janet;
GRANT SELECT ON Orders TO Stephen WITH GRANT OPTION;
REVOKE INSERT ON Salespeople FROM Claire;

#step 1
CREATE VIEW Jerrysview
AS SELECT *
FROM Customers
WHERE rating BETWEEN 100 AND 500
WITH CHECK OPTION;

# step 2
GRANT INSERT, UPDATE ON Jerrysview TO Jerry;

#step 1
CREATE VIEW Janetsview
AS SELECT *
FROM Customers
WHERE rating = (SELECT MIN (rating)
FROM Customers);

#step 2
GRANT SELECT ON Janetsview TO Janet;