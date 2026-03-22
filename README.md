# 📊 Customer Churn Rate Analysis

## 🚀 Project Overview

Customer churn is one of the biggest challenges for subscription-based businesses. In this project, I performed an end-to-end churn analysis to identify key factors that influence customer retention and provide actionable business insights.

---

## 🎯 Objective

* Analyze customer data to understand churn behavior
* Identify key factors contributing to churn
* Generate insights to improve customer retention

---

## 🧰 Tech Stack

* **Python** (Pandas, NumPy)
* **Data Visualization** (Matplotlib, Seaborn)
* **Database** (MySQL)
* **Environment Management** (Anaconda)
* **Version Control** (Git & GitHub)

---

## ⚙️ Project Workflow

1. **Data Collection**

   * Imported Telco Customer Churn dataset

2. **Database Integration**

   * Stored data in MySQL
   * Connected MySQL with Python using SQLAlchemy

3. **Data Cleaning**

   * Handled missing values
   * Converted data types (e.g., TotalCharges)
   * Encoded categorical variables

4. **Exploratory Data Analysis (EDA)**

   * Analyzed churn distribution
   * Studied impact of tenure, contract type, and charges

5. **Feature Engineering**

   * Created tenure groups
   * Derived average monthly spend
   * Identified high-value customers
   * Defined contract risk levels

6. **Visualization**

   * Churn distribution plots
   * Contract vs churn analysis
   * Correlation heatmap

---

## 📊 Key Insights

* Customers with **month-to-month contracts** have the highest churn rate
* Customers with **low tenure** are more likely to churn
* **Higher monthly charges** are associated with increased churn
* Long-term customers show significantly higher retention

---

## 💡 Business Impact

* Helps companies identify **high-risk customers**
* Enables targeted retention strategies
* Improves customer lifetime value (CLV)
* Supports data-driven decision-making

---

## 📁 Project Structure

```
churn-analysis/
│
├── data/
|    └── WA_Fn-UseC_-Telco-Customer-Churn
├── notebooks/
│   └── churn_analysis.ipynb
├── sql/
|    ├── schema.sql
│    └── analysis.sql
├── .env
├── .gitignore
└── README.md
```

---

## 🔐 Security Note

Sensitive information such as database credentials is stored securely using environment variables (`.env`) and excluded from version control.

---

## 📌 Future Improvements

* Build a machine learning model to predict churn
* Deploy dashboard using Power BI or Streamlit
* Automate data pipeline

---

## 🤝 Connect with Me

If you found this project interesting, feel free to connect and discuss data analytics!
