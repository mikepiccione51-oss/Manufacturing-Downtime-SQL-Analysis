SELECT p.Flavor,
       ROUND(
           AVG(
               (strftime('%s', lp."End Time") -
                strftime('%s', lp."Start Time")) / 60.0
           ),2
       ) AS Avg_Production_Minutes
FROM Line_Productivity lp
JOIN Line_Product p
ON lp.Product = p.Product
GROUP BY p.Flavor
ORDER BY Avg_Production_Minutes DESC;

-----------------------------------------------------



SELECT Operator,
       ROUND(
           AVG(
               (strftime('%s', "End Time") -
                strftime('%s', "Start Time")) / 60.0
           ),2
       ) AS Avg_Production_Minutes
FROM Line_Productivity
GROUP BY Operator
ORDER BY Avg_Production_Minutes DESC;

-----------------------------------------------------



SELECT p.Flavor,
       lp.Operator,
       ROUND(
           AVG(
               (strftime('%s', lp."End Time") -
                strftime('%s', lp."Start Time")) / 60.0
           ),2
       ) AS Avg_Production_Minutes
FROM Line_Productivity lp
JOIN Line_Product p
ON lp.Product = p.Product
GROUP BY p.Flavor, lp.Operator
ORDER BY Avg_Production_Minutes DESC;
