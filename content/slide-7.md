## Just like SQL

Grouping and aggregation works also as expected. In this example we retrieve the number of orders for the last 3 days that had at least one order.

<pre id="example">
SELECT order_date, count(*) AS cnt
FROM orders
GROUP BY order_date
HAVING count(*) > 0
ORDER BY order_date DESC
LIMIT 3;
</pre>
