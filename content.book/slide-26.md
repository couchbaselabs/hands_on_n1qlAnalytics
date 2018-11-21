## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
FROM orders AS o
WHERE DATE_PART_STR(o.order_date, "year") = 2017
GROUP BY DATE_PART_STR(o.order_date, "month") AS month
SELECT month, COUNT(*) AS order_count
ORDER BY month;
</pre>
