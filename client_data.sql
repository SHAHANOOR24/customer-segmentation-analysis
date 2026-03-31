USE project_shopping_trends;
SHOW TABLES;
SELECT * FROM shopping_table LIMIT 10;
DESCRIBE shopping_table;
SELECT Category,
       COUNT(*) AS total_orders,
       AVG(Purchase_Amount_USD) AS avg_spending
FROM shopping_table
GROUP BY Category;

SELECT 
  CASE 
    WHEN Age BETWEEN 18 AND 25 THEN 'Young'
    WHEN Age BETWEEN 26 AND 40 THEN 'Adult'
    ELSE 'Older'
  END AS age_group,
  AVG(Purchase_Amount_USD) AS avg_spending
FROM shopping_table
GROUP BY age_group;

SELECT Season,
       Category,
       COUNT(*) AS total_sales
FROM shopping_table
GROUP BY Season, Category;

SELECT Location,
       AVG(Purchase_Amount_USD) AS avg_spending
FROM shopping_table
GROUP BY Location
ORDER BY avg_spending DESC;

SELECT Payment_Method,
       COUNT(*) AS usage_count,
       AVG(Purchase_Amount_USD) AS avg_spending
FROM shopping_table
GROUP BY Payment_Method;