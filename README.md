# Superstore Sales Analysis - SQL Project

![Database Schema](docs/ER_diagram.png)

## 📋 Project Overview
A comprehensive analysis of Superstore sales data using MySQL, demonstrating SQL skills for data exploration, transformation, and visualization.

**Dataset**: [Sample Superstore Data]

**Database Design Approach**
To enable efficient analysis of the Superstore dataset, I designed a relational database with three normalized tables:

Customers Table: Contains all customer demographic information including unique Customer ID, name, segment, and geographic details (city, state, postal code, region). This table serves as the master record for customer attributes.

Products Table: Stores product information with Product ID as the primary key, along with category, sub-category, and product names. This structure allows for hierarchical analysis of product performance.

Orders Table: Acts as the fact table recording all transactional data - order dates, shipping details, quantities, sales, discounts, and profits. It maintains relationships to both Customers and Products tables through foreign keys (Customer ID and Product ID).

This normalized structure eliminates data redundancy while enabling complex business analysis through SQL joins. By separating dimensional data (customers/products) from transactional facts (orders), the database supports both granular performance analysis and aggregate reporting. The ER diagram visually represents these relationships and their cardinalities.

## 🛠️ Technical Skills Demonstrated
- Database design (ER modeling)
- Complex SQL queries (JOINs, CTEs, window functions)
- Data aggregation and transformation
- Performance optimization

## 📊 Database Schema
The database consists of 3 main tables with the following relationships:
- **Customers** can place multiple **Orders**
- **Products** can appear in multiple **Orders**

![ER Diagram](docs/ER_diagram.png)

## 🔍 Key Findings
1. **Office Supplies** generate the highest profit margins (16.83%)
2. **February sales** is the highest sales (40,602.27)
3. Corporate segment has the highest average order value
4. New York City shows strongest sales value

## 🚀 How to Run This Project

### Prerequisites
- MySQL 8.0+
- MySQL Workbench (optional)

### Setup Instructions
1. Clone repository:
   ```bash
   git clone https://github.com/annkaveesha69/superstore-analysis.git
   cd superstore-analysis
