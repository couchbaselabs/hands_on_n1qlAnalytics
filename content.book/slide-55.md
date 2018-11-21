## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
WITH order_revenue AS
  (FROM orders AS o, o.items AS i
   WHERE DATE_PART_STR(o.order_date, "year") = 2017
   GROUP BY o.orderno
   SELECT SUM(i.qty * i.price) AS revenue
  )
FROM order_revenue
SELECT ROUND(MIN(revenue)) AS minimum,
       ROUND(MAX(revenue)) AS maximum,
       ROUND(AVG(revenue)) AS average;
</pre>
