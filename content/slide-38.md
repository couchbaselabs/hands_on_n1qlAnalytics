## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
FROM orders AS o, o.items AS i
WHERE DATE_PART_STR(o.order_date, "year") = 2017
AND DATE_PART_STR(o.order_date, "month") = 9
GROUP BY o.orderno
SELECT o.orderno, COUNT(i) AS line_items
ORDER BY o.orderno;
</pre>
