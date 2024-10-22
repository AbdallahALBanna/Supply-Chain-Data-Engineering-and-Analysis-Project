# Supply Chain Management Data Analysis Project

## Project Overview

This project analyzes supply chain inefficiencies for **Just in Time Company** by evaluating business performance, customer data, product data, and inventory management. The goal is to identify key issues and suggest **data-driven solutions** to optimize operations and improve the overall supply chain process.

## Table of Contents

1. [Introduction](#introduction)
2. [Database Design](#database-design)
3. [ETL Process](#etl-process)
4. [Data Warehouse Design](#data-warehouse-design)
5. [Machine Learning & Prediction](#machine-learning--prediction)
6. [Data Analysis & Visualization](#data-analysis--visualization)
7. [Conclusion](#conclusion)

---

## Introduction

### Dataset Overview
This dataset contains key supply chain components such as:
- **Sales:** Sales transaction records including product pricing, discounts, and order details.
- **Transactions:** Financial details like earnings and profit per order.
- **Customer Interactions:** Data on customer profiles, segmentation, and geographical locations.
- **Shipping Logistics:** Real vs. scheduled delivery times, shipping methods, and statuses.
- **Product Management:** Product IDs, names, descriptions, pricing, and availability.

### Project Goals:
- **Personalize interactions:** Use customer data to tailor marketing efforts.
- **Evaluate product performance:** Guide inventory and development decisions.
- **Increase revenue:** Refine pricing, promotions, and sales strategies.
- **Optimize shipping:** Improve accuracy and reduce delays in deliveries.

---

## Database Design

- **Entity-Relationship Diagram (ERD):** Visual representation of data organized into entities such as orders, products, customers, and categories.
- **Mapping & Data Transfer:** Data is mapped and transferred from Excel files into SQL using SSIS (SQL Server Integration Services).

---

## ETL Process

- **ETL (Extract, Transform, Load):** Python scripts are used for data extraction and cleaning.
- **Data Sources:** Multiple sources including Excel and SQL databases.
- **Data Transformation:** Cleaning, filtering, and aggregating to ensure data consistency and accuracy.
- **Incremental Loading:** Only new or updated records are loaded to optimize performance.

---

## Data Warehouse Design

- **Star Schema Design:** Includes **fact tables** (e.g., sales, profits) and **dimension tables** (e.g., products, time, shipping).
- **Optimization for Analysis:** Denormalized tables help in faster query performance and better analytics in OLAP systems.

---

## Machine Learning & Prediction

### Models Used:
1. **Logistic Regression:** Predicts shipment mode based on customer and order details.
2. **Random Forest Regression:** Predicts profits based on sales-related features.

### Model Evaluation:
- **Logistic Regression:** Evaluated using accuracy, precision, recall, and F1-score.
- **Random Forest Regression:** Evaluated using Mean Absolute Error (MAE), Mean Squared Error (MSE), and R² score.

---

## Data Analysis & Visualization

### Key Insights:
- **Business Performance:** Analyzing financial health through key metrics like net sales and profit.
- **Customer Insights:** Understanding customer behavior for better strategic decisions.
- **Product Performance:** Evaluating product trends and performance.
- **Inventory Management:** Assessing current practices and suggesting improvements.

### Power BI Dashboards:
- Business Performance Dashboard
- Inventory Management Dashboard
- Shipment Management Dashboard

---

## Conclusion

This project leverages **data-driven insights** to improve supply chain operations, focusing on business performance, customer behavior, product management, and inventory optimization. Future improvements include refining machine learning models and expanding data collection to cover more comprehensive supply chain metrics.

---

## Team Members

- **Abdallah Al-Banna** - [GitHub Profile](https://github.com/AbdallahALBanna)  
  *Role: Visualization and analysis*

- **Khaled Tarek Mohamed** - [GitHub Profile](https://github.com/KhaledTarekMohamed)  
  *Role: Visualization and analysis*

- **Abdelrhman Ibrahim** - [GitHub Profile](https://github.com/AbdelrhmanIbrahim)  
  *Role: Database design*  

- **Abdelrhamn Samir** - [GitHub Profile](https://github.com/AbdelrhamnSamir)  
  *Role: ETL and Machine Learning*  

- **Mohammed Elmehy** - [GitHub Profile](https://github.com/M-Elmehy)  
  *Role: Azure DWH*  
