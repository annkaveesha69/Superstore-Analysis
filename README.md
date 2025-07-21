# Superstore Sales Analysis - SQL Project

![Database Schema](docs/er_diagram.png)

## 📋 Project Overview
A comprehensive analysis of Superstore sales data using MySQL, demonstrating SQL skills for data exploration, transformation, and visualization.

**Dataset**: [Sample Superstore Data](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final) (2015-2018)

## 🛠️ Technical Skills Demonstrated
- Database design (ER modeling)
- Complex SQL queries (JOINs, CTEs, window functions)
- Data aggregation and transformation
- Performance optimization
- Data visualization

## 📊 Database Schema
The database consists of 3 main tables with the following relationships:
- **Customers** can place multiple **Orders**
- **Products** can appear in multiple **Orders**

![ER Diagram](docs/er_diagram.png)

## 🔍 Key Findings
1. **Technology products** generate the highest profit margins (22.3%)
2. **December sales** are 34% higher than monthly average
3. Corporate segment has 25% higher average order value than consumers
4. West region shows strongest YoY growth (+18.7%)

## 🚀 How to Run This Project

### Prerequisites
- MySQL 8.0+
- MySQL Workbench (optional)

### Setup Instructions
1. Clone repository:
   ```bash
   git clone https://github.com/yourusername/superstore-analysis.git
   cd superstore-analysis
