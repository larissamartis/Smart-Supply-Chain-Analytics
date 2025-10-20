# 1. Total Revenue by Product Type
SELECT `Product type`, ROUND(SUM(`Revenue generated`), 2) AS Total_Revenue
FROM supply_chain_data  
GROUP BY `Product type`
ORDER BY Total_Revenue DESC;

# 2. Shipping Costs by Carrier
SELECT `Shipping carriers`, ROUND(AVG(`Shipping costs`), 2) AS Average_Cost 
FROM supply_chain_data
GROUP BY `Shipping carriers`
ORDER BY Average_Cost ASC;

# 3. Lead Times by Supplier
SELECT `Supplier name`, AVG(`Lead time`) AS Avg_Leadtime 
FROM supply_chain_data 
GROUP BY `Supplier name`
ORDER BY Avg_Leadtime DESC;

# 4.Total Products Sold by Location
SELECT Location, SUM(`Number of products sold`) AS Product_sold 
FROM supply_chain_data 
GROUP BY Location 
ORDER BY Product_sold DESC;

# 5. Defect Rates by Inspection Results
SELECT `Inspection results`, ROUND(AVG(`Defect rates`), 2) AS Defective_Rate
FROM supply_chain_data 
GROUP BY `Inspection results`;

#6. Ranking Products by Profitability
SELECT SKU, `Product type`, (`Revenue generated` - `Manufacturing costs` - `Shipping costs`) AS Profitability, 
    DENSE_RANK() OVER(
        PARTITION BY `Product type` 
        ORDER BY (`Revenue generated` - `Manufacturing costs` - `Shipping costs`) DESC
    ) AS Profitability_Rank 
FROM supply_chain_data
ORDER BY Profitability DESC;

# 7. Supplier Performance Analysis (Higher than Overall Average)
WITH SupplierAverages AS (
    SELECT `Supplier name`, AVG(`Lead time`) AS Avg_Lead_Time 
    FROM supply_chain_data
    GROUP BY `Supplier name`
),
OverallAverage AS (
    SELECT AVG(`Lead time`) AS Total_Avg_Lead_Time
    FROM supply_chain_data
)
SELECT 
    SA.`Supplier name`, 
    ROUND(SA.Avg_Lead_Time, 2) AS Supplier_Avg_Lead_Time,
    ROUND(OA.Total_Avg_Lead_Time, 2) AS Overall_Avg_Lead_Time
FROM SupplierAverages SA
CROSS JOIN OverallAverage OA
WHERE SA.Avg_Lead_Time > OA.Total_Avg_Lead_Time
ORDER BY Supplier_Avg_Lead_Time DESC;

# 8. Top 5 Shipping Carriers by Cost Efficiency
WITH CarrierRanks AS (
    SELECT `Product type`, `Shipping carriers`, (`Shipping costs`) AS avg_shippingcost, 
        ROW_NUMBER() OVER(
            PARTITION BY `Product type` 
            ORDER BY AVG(`Shipping costs`) ASC 
        ) AS Carrier_Rank
    FROM supply_chain_data
    GROUP BY `Product type`, `Shipping carriers`
)
SELECT`Product type`,`Shipping carriers`,ROUND(avg_shippingcost, 2) AS Avg_Shipping_Cost,
    Carrier_Rank
FROM CarrierRanks
WHERE Carrier_Rank <= 5 
ORDER BY `Product type`, Carrier_Rank;

