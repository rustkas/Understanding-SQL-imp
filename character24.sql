SELECT a.tname, a.owner, b.cname, b.datatype
FROM SYSTEMCATOLOG a, SYSTEMCOLUMNS b
WHERE a.tname = b.tname AND
a.owner = b.owner AND
a.numcolumns > 4;

SELECT tname, synowner, COUNT(ALL synonym)
FROM SYTEMSYNONS
GROUP BY tname, synowner;

SELECT COUNT(*)
FROM SYSTEMCATALOG a
WHERE numcolumns/2 < (SELECT COUNT (DISTINCT cnumber)
FROM SYSTEMINDEXES b
WHERE a.owner = b.tabowner AND a.tname = b.tname);