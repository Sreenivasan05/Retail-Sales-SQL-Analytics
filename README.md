
# Retail Sales Analytics & Performance Dashboard

## Project Overview

This end-to-end data analytics project analyzes **retail sales transactions using SQL** and transforms the insights into an **interactive Power BI dashboard** for business decision-making.

The objective is to demonstrate the **complete analytics workflow**:

**Raw Data → SQL Analysis → Business Insights → Interactive Visualization**

This project highlights skills in **SQL, data analysis, business intelligence, and data storytelling**.

---

## Dataset Information

**Source:** OpenDataBay – Retail Sales Analytics Dataset
**Total Records:** 1,195

**Key Fields**

* Order ID
* Order Date (Year–Month)
* Category & Sub-Category
* Sales Amount, Profit, Quantity
* Customer Name
* City & State
* Payment Mode

---

## Tools & Technologies

* **PostgreSQL** – Data querying and analytical SQL
* **SQL Concepts Used**

  * CTEs
  * Window Functions
  * Aggregations
  * Time-based analysis
* **Power BI Desktop** – Interactive dashboard development
* **Power Query** – Data cleaning and transformation
* **DAX** – KPI and calculated measure creation

---

## Project Architecture

```
Retail Dataset
      ↓
PostgreSQL SQL Analysis
      ↓
Business Insights Extraction
      ↓
Power BI Dashboard Visualization
```

---

## Business Questions Answered

### Sales & Profitability

* Which categories and sub-categories generate the highest **revenue and profit**?
* Are there **loss-making products or regions**?

### Customer Behavior

* Who are the **top contributing customers**?
* What percentage of customers are **repeat buyers**?

### Time-Based Trends

* How do **sales and profits change over time**?
* Are there **seasonal demand patterns**?

### Regional & Payment Insights

* Which **cities or states** drive sales but show **low profit margins**?
* What are the **preferred payment modes**?

---

## SQL Analysis Highlights

* Performed **category-wise and sub-category profitability analysis**
* Identified **top customers using ranking window functions**
* Conducted **monthly trend analysis** for sales and profit
* Detected **low-margin regions** for optimization opportunities

---

## Key Business Insights

* Revenue and profit are **balanced across Office Supplies, Electronics, and Furniture (~₹2M each)**, reducing dependency risk.
* Specific sub-categories (**Paper, Markers, Chairs, Tables, Printers**) generate **higher profit margins**, making them strategic focus areas.
* Sales show **steady growth with seasonal fluctuations**, typical of retail demand cycles.
* Around **58% of customers are repeat buyers**, and a **small group contributes a large revenue share**, highlighting retention importance.
* Some **high-sales cities have lower profit margins**, indicating **pricing or cost optimization opportunities**.

---

## Data Preparation Steps

* Validated and corrected **data types in Power Query**
* Built **DAX measures**:

  * Total Sales
  * Total Profit
  * Profit Margin
  * Customer Segmentation
* Added **interactive slicers** for:

  * Year
  * Category
  * Region

---

## Project Outcomes

* Demonstrates **end-to-end analytics capability** from SQL to dashboarding
* Converts **raw transactional data into actionable business insights**
* Provides a **decision-support dashboard** for retail stakeholders
