# http://www.w3resource.com/sql-exercises/sql-wildcard-special-operator-exercise-11.php

/*
Write a SQL statement to find those salesmen with all information whose name containing the 1st character is 'N' and the 4th character is 'l' and rests may be any character.

salesman_id  name        city        commission
-----------  ----------  ----------  ----------
5001         James Hoog  New York    0.15
5002         Nail Knite  Paris       0.13
5005         Pit Alex    London      0.11
5006         Mc Lyon     Paris       0.14
5003         Lauson Hen              0.12
5007         Paul Adam   Rome        0.13

*/

SELECT *  
FROM salesman  
WHERE name LIKE 'N__l%';   


# http://www.w3resource.com/sql-exercises/sql-wildcard-special-operator-exercise-12.php

/*
Write a SQL statement to find those rows from the table testtable which contain the escape character underscore ( _ ) in its column 'col1'.

col1
--------------------------
A001/DJ-402\44_/100/2015
A001_\DJ-402\44_/100/2015
A001_DJ-402-2014-2015
A002_DJ-401-2014-2015
A001/DJ_401
A001/DJ_402\44
A001/DJ_402\44\2015
A001/DJ-402%45\2015/200
A001/DJ_402\45\2015%100
A001/DJ_402%45\2015/300
A001/DJ-402\44

*/


SELECT *  
FROM testtable  
WHERE coll LIKE '%/_%' ESCAPE '/';  

# another solution without escape
SELECT *  
FROM testtable  
WHERE coll LIKE '%[_]%';  
