# http://www.w3resource.com/sql-exercises/sql-retrieve-exercise-30.php
/*
Write a SQL query to find the name and price of the cheapest item.

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

SELECT pro_name, pro_price  
   FROM item_mast  
   WHERE pro_price =   
    (SELECT MIN(pro_price) FROM item_mast);  
