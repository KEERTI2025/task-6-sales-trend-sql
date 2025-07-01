# Task 6 – Sales Trend Analysis Using Aggregations

**Dataset**  
A sample `orders` table (order_id, order_date, product_id, amount) created in SQLiteOnline.

**Tool**  
SQLiteOnline.com (mobile browser)

| Metric | SQL Technique |
|--------|---------------|
| Monthly revenue | `SUM(amount)` + `strftime('%Y/%m', order_date)` |
| Monthly order volume | `COUNT(DISTINCT order_id)` |
| Top 3 revenue months | `ORDER BY monthly_revenue DESC LIMIT 3` |

## Files
| File | Purpose |
|------|---------|
| `trend_analysis.sql` | All SQL queries for this task |
| `q1.png`–`q4.png` | Screenshots showing query results |

## Key Findings (sample data)
* March and April are the highest-revenue months.  
* Order volume increases steadily from January to June.  
* Top 3 months contribute about 60 % of total H1 revenue.

---

Submitted by **Keerti Neeramanigar**
