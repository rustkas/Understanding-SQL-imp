SELECT snum, sname, city, comm * 100 FROM Salespeople;
SELECT snum, sname, city, ' % ', comm * 100 FROM Salespeople;
SELECT ' For ', odate, ', there are ', COUNT(DISTINCT onum), 'orders.' FROM Orders GROUP BY odate;
SELECT * FROM Orders ORDER BY cnum DESC;
SELECT * FROM Orders ORDER BY cnum DESC, amt DESC;
SELECT cname, city FROM Customers GROUP BY cnum;
SELECT snum, odate, MAX(amt) FROM Orders GROUP BY snum, odate;
SELECT sname, comm FROM Salespeople GROUP BY 2 DESC;
SELECT snum, COUNT(DISTINCT onum) FROM Orders GROUP BY snum ORDER BY 2 DESC;

SELECT onum, snum, amt * .12 FROM Orders;
SELECT 'For the city ', city, ', the highest rating is ', MAX(rating) FROM Customers GROUP BY city;
SELECT rating, cname, cnum FROM Customers ORDER BY rating DESC;
SELECT odate, SUM(amt) FROM Orders GROUP BY odate ORDER BY 2 DESC;
