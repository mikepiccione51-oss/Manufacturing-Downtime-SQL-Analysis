SELECT COUNT(*)
FROM Line_Productivity;



SELECT DISTINCT Product
FROM Line_Productivity;



SELECT DISTINCT Operator
FROM Line_Productivity;



SELECT p.Flavor,
       COUNT(lp.Batch) AS Total_Batches
FROM Line_Productivity lp
JOIN Line_Product p
ON lp.Product = p.Product
GROUP BY p.Flavor
ORDER BY Total_Batches DESC;



SELECT Operator,
       COUNT(Batch) AS Total_Batches
FROM Line_Productivity
GROUP BY Operator
ORDER BY Total_Batches DESC;
