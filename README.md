# 🛒 Superstore Sales Data Analysis

## 📌 Overview
The objective of this project is to analyze Superstore sales data to identify sales trends, profit patterns, and business insights.  
The analysis focuses on understanding how sales and profit vary across regions, categories, sub-categories, customer segments, and time periods.

The goal is to help management make data-driven decisions to improve profitability, optimize discounts, and reduce losses.

---

## 📂 Dataset Information

- **Total Records:** 9,994  
- **Total Features:** 21  

### Key Attributes

#### Order Information
- Order Date
- Ship Date
- Ship Mode

#### Customer Information
- Segment
- City
- State
- Postal Code
- Region

#### Product Information
- Category
- Sub-Category

#### Sales Metrics
- Sales
- Quantity
- Profit
- Discount

---
#### Dashboard Preview
https://github.com/himanshi-manral/superstore_sales_analysis/blob/main/snapshot_of_dashboard.jpeg

---
## 🛠️ Tech Stack

| Tool | Purpose |
|------|----------|
| Python | Data Cleaning & Exploratory Data Analysis (EDA) |
| SQL | Business Analysis & KPI Queries |
| Power BI | Dashboard Creation & Visualization |

---

# 🔄 Project Workflow

## 1️⃣ EDA & Data Cleaning (Python)

Performed the following preprocessing and exploratory analysis tasks:

- Checked and corrected data types of columns
- Converted `Order Date` and `Ship Date` into proper date format
- Renamed columns into `snake_case` format for standardization
- Identified missing/null values
- Extracted year and month from `order_date`
- Conducted exploratory analysis to identify patterns and trends

---

## 2️⃣ SQL Analysis

Performed business-focused analysis using SQL queries:

- Calculated key KPIs:
  - Total Orders
  - Total Sales
  - Total Profit
  - Average Order Value
- Regional, category, and sub-category level analysis
- Identified top 10 revenue-generating products
- Analyzed sales trends over time
- Identified top customer segments
- Found loss-making sub-categories
- Calculated profit margin for each category
- Identified top 5 customers by sales in each region
- Classified repeated vs one-time customers
- Calculated average delivery period for each shipping mode

---

## 3️⃣ Dashboard Development (Power BI)

Created an interactive Power BI dashboard featuring:

### Dashboard Highlights
- KPI Cards
- Segment-wise Analysis
- Category-wise Analysis
- Discount vs Profit Analysis
- Top Customers (Overall + Region-wise)
- Drill-down Interactive Visuals

---

# 📊 Key Insights

- Consumer segment contributes the highest sales and profit.
- Sales and profit have shown consistent growth over the years.
- Discounts above **40%** consistently lead to losses across categories.
- Keeping discounts under **20%** maximizes profitability.
- Loss-making sub-categories:
  - Supplies
  - Bookcases
  - Tables
- Most profitable sub-categories:
  - Copiers
  - Phones
  - Accessories
- Top customer: **Sean Miller**
- Standard Class is the most preferred shipping mode.
- Same Day Shipping accounts for only **5%** of total orders.
- Central region has the lowest profit margin.
- South region generates the lowest sales.

---

# 💡 Business Recommendations

## 1. Consumer Segment Dominance
Launch loyalty programs and personalized offers for the Consumer segment to improve retention while investing in the Corporate segment to reduce dependency on a single customer segment.

## 2. Upward Sales & Profit Trend
Reinvest profits into marketing and inventory expansion, especially in high-performing regions such as West and East.

## 3. Excessive Discounts Causing Losses
Implement a strict discount cap policy:
- Maximum standard discount: **30%**
- Discounts above **20%** require managerial approval

## 4. Loss-Making Sub-Categories
For Supplies, Bookcases, and Tables:
- Reduce excessive discounting
- Re-evaluate pricing strategy
- Discontinue low-performing SKUs where necessary

## 5. High-Profit Sub-Categories
Increase inventory visibility and promotions for:
- Copiers
- Phones
- Accessories

Bundle Phones with Accessories to increase average order value.

## 6. High-Value Customers
Provide dedicated account management and exclusive offers to top customers like **Sean Miller** to improve retention and repeat purchases.

## 7. Standard Class Optimization
Since Standard Class dominates shipping preferences, optimizing logistics costs can generate substantial operational savings.

## 8. Same Day Shipping Evaluation
Assess the ROI of Same Day Shipping services. If operational costs exceed demand, shift investment toward improving Standard or First Class delivery experiences.

## 9. Central Region Profitability Issues
Conduct a detailed audit of:
- Discount strategies
- Local pricing
- Sales representative performance
- Operational costs

## 10. South Region Growth Opportunity
Increase marketing initiatives and strengthen sales operations in the South region to improve market penetration and revenue growth.

---

# 📈 Project Outcome

This project demonstrates an end-to-end data analytics workflow involving:

- Data Cleaning
- Exploratory Data Analysis
- SQL-based Business Analysis
- Interactive Dashboard Development
- Business Insight Generation

The analysis helps stakeholders understand business performance and make informed strategic decisions.
