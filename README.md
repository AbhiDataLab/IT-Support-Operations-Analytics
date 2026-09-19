# IT Support Operations Analytics

##  Project Overview

This project analyzes IT support ticket data to understand support performance, customer issues, service-level performance, and ticket resolution patterns.

The project follows an end-to-end data analytics workflow using **Python, SQL, and Power BI**.

The goal is to transform raw IT support ticket data into meaningful business insights that can help support teams improve operational efficiency and customer experience.

---

##  Business Problem

IT support teams handle a large number of customer tickets every day. Without proper analysis, it can be difficult to understand:

* Which types of issues generate the most support tickets?
* Which customer segments create the highest ticket volume?
* How long does it take to resolve tickets?
* Which priorities have the longest resolution times?
* How are different support channels performing?
* Are SLA plans being handled efficiently?
* Which regions generate the most support demand?
* What factors are associated with longer resolution times?
* How does customer sentiment vary across support issues?

This project uses data analysis to answer these questions and identify actionable business insights.

---

##  Dataset

The project uses a synthetic IT support ticket dataset containing information about customer support interactions.

### Key Data Fields

* Ticket ID
* Customer Segment
* Channel
* Product Area
* Issue Type
* Priority
* Status
* SLA Plan
* Customer Sentiment
* Platform
* Region
* Resolution Time

The raw and cleaned datasets are available in the `Data` folder.

---

##  Tools & Technologies

| Tool         | Purpose                                     |
| ------------ | ------------------------------------------- |
| Python       | Data cleaning and exploratory data analysis |
| Pandas       | Data manipulation and transformation        |
| NumPy        | Numerical analysis                          |
| Matplotlib   | Data visualization                          |
| SQL          | Business analysis and querying              |
| MySQL        | Database storage and analysis               |
| Power BI     | Interactive dashboard and visualization     |
| Git & GitHub | Version control and project documentation   |

---

##  Project Workflow

```text
Raw Dataset
     ↓
Data Understanding
     ↓
Data Cleaning using Python
     ↓
Exploratory Data Analysis
     ↓
Load Cleaned Data into MySQL
     ↓
SQL Business Analysis
     ↓
Power BI Data Modeling
     ↓
Dashboard & Visualization
     ↓
Business Insights
```

---

##  Python Analysis

Python was used for the initial data preparation and exploratory analysis.

### Main Steps

1. Loaded the raw dataset using Pandas
2. Performed data understanding
3. Checked dataset structure and statistics
4. Identified missing values
5. Handled missing values
6. Checked and handled duplicate records
7. Analyzed categorical variables
8. Analyzed numerical variables
9. Performed univariate analysis
10. Performed bivariate analysis
11. Examined ticket resolution time
12. Visualized distributions and relationships
13. Prepared the cleaned dataset for SQL analysis

Python notebooks are available in:

```text
Python/
```

---

##  SQL Analysis

The cleaned dataset was loaded into MySQL for business-focused analysis.

SQL was used to investigate:

* Ticket volume
* Ticket status
* Priority performance
* Average resolution time
* Customer segments
* Issue types
* Support channels
* SLA performance
* Regional ticket distribution
* Business performance patterns

The SQL queries are available in:

```text
SQL/
```

---

##  Power BI Dashboard

Power BI was used to create an interactive dashboard for monitoring IT support operations.

The dashboard focuses on important operational KPIs and allows users to analyze support performance across different dimensions.

### Dashboard Analysis Includes

* Total Tickets
* Ticket Status
* Priority
* Issue Type
* Customer Segment
* Support Channel
* SLA Plan
* Customer Sentiment
* Region
* Resolution Time

Dashboard screenshots are available in:

```text
Screenshots/
```

---

##  Key Business Questions

The project answers questions such as:

### Ticket Volume

* What is the overall ticket volume?
* Which issue types generate the most tickets?
* Which customer segments generate the highest demand?

### Resolution Performance

* What is the average resolution time?
* Which priority levels require more time to resolve?
* Which issues have longer resolution times?

### Customer Experience

* How does customer sentiment vary across issues?
* Which support channels are associated with different customer experiences?

### Operational Performance

* How does ticket performance vary by region?
* How are different SLA plans performing?
* Where are potential operational bottlenecks?

---

##  Business Insights

The analysis can help IT support teams:

* Identify high-volume support issues
* Prioritize operational bottlenecks
* Improve ticket resolution processes
* Monitor SLA performance
* Understand customer support demand
* Identify areas requiring additional resources
* Improve customer support experience

> Detailed findings and supporting analysis are available in the project documentation and dashboard.

---

##  Project Structure

```text
IT-Support-Operations-Analytics/
│
├── Data/
│   ├── cleaned/
│   └── raw/
│
├── Documentation/
│   └── IT Support Analytics Report
│
├── Python/
│   ├── 01_DATA_UNDERSTANDING.ipynb
│   ├── 02_DATA_CLEANING.ipynb
│   └── 03_EDA.ipynb
│
├── SQL/
│   └── sql_file.sql
│
└── Screenshots/
    └── Dashboard & Analysis Screenshots
```

---

##  Skills Demonstrated

This project demonstrates practical experience in:

* Data Cleaning
* Exploratory Data Analysis
* Data Visualization
* Python
* Pandas
* NumPy
* SQL
* MySQL
* Power BI
* KPI Analysis
* Business Analysis
* Data Storytelling
* Git & GitHub
* End-to-End Analytics Workflow

---

## Project Purpose

This project was developed as part of a practical Data Analyst portfolio to demonstrate the complete journey from **raw data to business insights**.

The focus is not only on technical analysis but also on understanding business problems and communicating data-driven insights.
