## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
FROM orders AS o
WHERE DATE_PART_STR(o.order_date, "year") = 2017
AND DATE_PART_STR(o.order_date, "month") = 9
SELECT o.orderno, ARRAY_COUNT(o.items) AS line_items
ORDER BY o.orderno;
</pre>
