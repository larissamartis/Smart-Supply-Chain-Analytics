# Smart-Supply-Chain-Analytics

## 🎯 Project Overview

The objective of this capstone project was to perform a comprehensive analysis of a supply chain dataset (100+ rows and 24 columns, covering sales, manufacturing, and logistics) to **extract meaningful insights** and develop **actionable recommendations** aimed at **optimizing operations and significantly improving overall profitability.**

## 🛠️ Tools and Technologies

This project utilized a robust modern data stack to complete the analysis:

* **Data Analysis & Processing:** **Python** (Pandas, NumPy) was used for data cleaning, transformation, exploratory data analysis (EDA), and complex statistical calculations.
* **Relational Database:** **MySQL** was essential for executing complex aggregate queries, profitability ranking, and supplier performance analysis on the structured data.
* **Data Visualization & Reporting:** **Power BI** and **Microsoft Excel** were used to create interactive dashboards, key performance indicators (KPIs), and executive summary reports.
* **Code Management:** **Jupyter Notebooks (.ipynb)** and **Git/GitHub** were used for documentation, version control, and reproducible analysis.

---

## 💻 Project Files

The core analysis is documented in two main files, which demonstrate the end-to-end data pipeline:

* **`Supply Chain Analysis.ipynb`:** Contains the full **Python Analysis**, including data loading, cleaning, EDA, and initial visualizations.
* **`Supply Chain Analysis - MySQL.sql`:** Contains the **8 analytical SQL queries** used to derive specific business insights not easily calculated in Python.

---

## 📊 Key Findings and Business Insights

The analysis across all tools revealed critical areas for intervention:

### Profitability and Sales

* **Skincare products are the undeniable revenue driver**, accounting for 45% of total sales and exhibiting the highest overall profitability. Haircare and Cosmetics follow at 29% and 25%, respectively.
* The highest regional sales concentration is found in **Kolkata and Delhi**, indicating strong regional demand.
* Customer segmentation shows that the **female demographic** primarily purchases the high-quality Skincare and Cosmetic products, while an **unknown demographic group** currently purchases the highest overall quantity across all categories.

### Operational and Quality Bottlenecks

* **Critical Quality Issue:** **Haircare products exhibit the highest defect rate at 37%**. This suggests a major quality control failure within the manufacturing or inspection process that requires immediate attention to reduce scrap costs and preserve brand quality.
* **Inventory Challenge:** **Cosmetics and Haircare** lines are suffering from a flow issue, characterized by **high stock levels** but surprisingly **low product availability**. This is a direct result of long manufacturing lead times that prevent prompt shipment, creating an internal bottleneck.
* **Skincare Logistics:** Skincare products have higher order quantities and longer lead times, a necessary trade-off associated with their higher production volumes required to meet high customer demand.

### Logistics and Cost Optimization

* **Carrier Efficiency:** **Carrier B is the most cost-efficient shipping carrier**, possessing the lowest average shipping costs, making it the preferred partner for general fulfillment. Carrier C and Carrier A are the costliest options.
* **Transportation Mode Costs:** **Air transportation** is the costliest mode, while **Sea transportation** is the most economical. The **road transportation mode** was determined to be the fastest and most efficient for timely deliveries.

---

## 💡 Actionable Recommendations

Based on these findings, the following strategic actions are recommended to optimize the supply chain:

1.  **Mandatory Quality Intervention on Haircare:** Immediately audit and fix the manufacturing process responsible for the **37% defect rate in Haircare**. This single action will provide the quickest return on investment through reduced loss.
2.  **Expedite Cosmetics and Haircare Manufacturing:** Investigate and optimize the manufacturing lead times for Cosmetics and Haircare to unlock their inventory. The goal is to move these products from high stock to high availability, improving fulfillment speed.
3.  **Optimize Logistics Strategy:**
    * **Prioritize Carrier B** for all standard shipments to minimize cost.
    * **Utilize Road transportation** for all time-sensitive regional deliveries.
    * **Reserve Air transportation** only for emergency or high-value shipments, and leverage **Sea transportation** for large, non-urgent bulk orders.
4.  **Strategic Resource Allocation:** Continue to strategically invest resources (marketing, production scaling) into the **Skincare** product line to maximize returns from the most profitable segment.
