USE nvidia_sales;

-- Total rows
SELECT COUNT(*) FROM gpu_sales_1000;

-- Top Selling GPU
SELECT GPU_Name,
       SUM(Units_Sold) AS Total_Units_Sold
FROM gpu_sales_1000
GROUP BY GPU_Name
ORDER BY Total_Units_Sold DESC;

-- Revenue by GPU
SELECT GPU_Name,
       SUM(Revenue) AS Total_Revenue
FROM gpu_sales_1000
GROUP BY GPU_Name
ORDER BY Total_Revenue DESC;

-- Revenue by Region
SELECT Region,
       SUM(Revenue) AS Total_Revenue
FROM gpu_sales_1000
GROUP BY Region
ORDER BY Total_Revenue DESC;