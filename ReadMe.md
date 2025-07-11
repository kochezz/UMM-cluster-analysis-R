# ABC Bank Cluster Analysis Assignment

[![R](https://img.shields.io/badge/Built%20With-R-blue?logo=r)](https://www.r-project.org/)
[![Status](https://img.shields.io/badge/Status-Complete-brightgreen.svg)]()
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](./LICENSE)

## 🌐 Project Overview

This project explores **customer segmentation** using unsupervised machine learning for ABC Bank. The goal is to identify clusters of similar customers based on their demographic and financial attributes to inform targeted marketing strategies.

GitHub Repo: [UMM Cluster Analysis R](https://github.com/kochezz/UMM-cluster-analysis-R)

---

## ⚖️ Objective

To segment customers based on:

- Minimum and Maximum Account Balances
- Monthly Income
- Age
- Duration with the bank (Years)

Using **K-means clustering** in R.

---

## 📂 Folder Structure

```
UMM-cluster-analysis-R/
├── data/
│   └── Customer data.csv
├── outputs/
│   ├── elbow_plot.png
│   ├── cluster_plot.png
│   └── customer_clusters.csv
├── scripts/
│   └── cluster_analysis.R
├── LICENSE
└── README.md
```

---

## 📊 Key Results

- **Optimal Clusters**: 3 (validated via Elbow Method)
- **Distinct Segments Identified**:
  - Cluster 1: Mid-income, mid-age
  - Cluster 2: High-value, mature
  - Cluster 3: Young, low-value

---

## 🔬 Techniques Used

- Data preprocessing
- Feature scaling
- K-means clustering
- PCA for visualization
- Elbow Method for cluster selection

---

## 📊 Visual Outputs

### Elbow Plot

Shows that 3 clusters are optimal:

### PCA Cluster Plot

Visualizes the separation between clusters:

---

## 💡 Insights

| Cluster | Income   | Age     | Loyalty   | Strategy             |
| ------- | -------- | ------- | --------- | -------------------- |
| 1       | Moderate | Mid-age | Medium    | Standard offers      |
| 2       | High     | Older   | Long-term | Premium services     |
| 3       | Low      | Young   | New       | Entry-level products |

---

## 📅 Next Steps

- Incorporate transaction data for behavioral segmentation
- Integrate results into CRM system for targeting
- Automate clustering updates monthly

---

## 🚀 Tools

- R (tidyverse, ggplot2, factoextra)
- RStudio
- GitHub for version control

---
## 📬 Contact

Developed by **Business Enterprise Data Architecture (BEDA)**  
📩 Email: [wphiri@beda.ie](mailto:wphiri@beda.ie)  
🔗 LinkedIn: [William Phiri](https://www.linkedin.com/in/william-phiri-866b8443/) 
**License**: MIT License. See [LICENSE](./LICENSE) file for more info.
🧭  _"Get it done the BEDA way"_

## 📅 Author & License

---

## 🏷️ Tags

`clustering` `kmeans` `r-programming` `marketing-analysis` `customer-segmentation`
