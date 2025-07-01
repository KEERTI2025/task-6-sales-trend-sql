/* ───────────────────────────
   1. Monthly revenue
──────────────────────────── */
SELECT
  strftime('%Y', order_date) AS yr,
  strftime('%m', order_date) AS mon,
  SUM(amount)                AS monthly_revenue
FROM orders
GROUP BY yr, mon
ORDER BY yr, mon;

/* ───────────────────────────
   2. Monthly order volume
──────────────────────────── */
SELECT
  strftime('%Y', order_date) AS yr,
  strftime('%m', order_date) AS mon,
  COUNT(DISTINCT order_id)   AS order_volume
FROM orders
GROUP BY yr, mon
ORDER BY yr, mon;

/* ───────────────────────────
   3. Top-3 months by revenue
──────────────────────────── */
SELECT yr, mon, monthly_revenue
FROM (
  SELECT
    strftime('%Y', order_date) AS yr,
    strftime('%m', order_date) AS mon,
    SUM(amount)                AS monthly_revenue
  FROM orders
  GROUP BY yr, mon
)
ORDER BY monthly_revenue DESC
LIMIT 3;

/* ───────────────────────────
   4. Revenue & volume together
──────────────────────────── */
SELECT yr, mon, monthly_revenue, order_volume
FROM (
  SELECT
    strftime('%Y', order_date) AS yr,
    strftime('%m', order_date) AS mon,
    SUM(amount)                AS monthly_revenue,
    COUNT(DISTINCT order_id)   AS order_volume
  FROM orders
  GROUP BY yr, mon
)
ORDER BY yr, mon;
