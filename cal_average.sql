# http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-26.php

/*
Write a SQL query to calculate the average price of all products of the manufacturer which code is l6.

Sample table : item_mast

 PRO_ID PRO_NAME                   PRO_PRICE    PRO_COM
------- ------------------------- ---------- ----------
    101 Mother Board                    3200         15
    102 Key Board                        450         16
    103 ZIP drive                        250         14
    104 Speaker                          550         16
    105 Monitor                         5000         11
    106 DVD drive                        900         12
    107 CD drive                         800         12
    108 Printer                         2600         13
    109 Refill cartridge                 350         13
    110 Mouse                            250         12
*/

SELECT AVG(pro_price) FROM item_mast   
  WHERE pro_com=16;  



#  http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-29.php

/*
Write a SQL query to display the average price of the items for each company, showing only the company code.

Sample table : item_mast
*/
SELECT AVG(pro_price), pro_com  
    FROM item_mast  
GROUP BY pro_com; 
