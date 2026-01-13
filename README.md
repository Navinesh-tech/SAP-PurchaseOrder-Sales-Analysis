# SAP Purchase Order & Sales Analysis – Power BI Dashboard

This project presents an interactive Power BI dashboard built on
SAP Business One transactional data to analyze Purchase Orders,
Sales, and Revenue trends.

---

## 🔹 Business Objective
Enable management and finance teams to:
- Monitor Purchase Order activity
- Analyze vendor-wise and item-wise quantities
- Track sales revenue and customer segments
- Identify trends across months and years

---

## 🔹 Data Source
- SAP Business One (SAP HANA)
- Sales Invoices (OINV, INV1)
- Purchase Orders
- Item Master and Business Partner data

> ⚠️ Actual production schemas are masked for security reasons.

---

## 🔹 Dashboard Pages

### 📌 Purchase Order Analysis
- Open PO Count
- Closed PO Count
- PO Quantity by Vendor
- PO Quantity by Month & Year
- Item-level PO analysis

### 📌 Sales & Revenue Analysis
- Total Revenue
- Invoice Count
- Quantity Sold
- Revenue by Item Group
- Revenue by Customer Group
- Salesperson performance
- Monthly revenue trend

---

## 🔹 Data Model
- Fact tables: Sales & Purchase Orders
- Dimensions: Vendor, Item, Customer, Salesperson
- One-to-many relationships implemented
- Optimized star-schema design

---

## 🔹 Technologies Used
- Power BI
- SAP HANA
- SQL
- DAX
- SAP Business One

---

## ⚠️ Notes
- Sample / masked data used for demonstration
- SQL queries are reference-only
- No confidential business data included
