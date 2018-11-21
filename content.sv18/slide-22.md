## SQL++ for SQL Users: SQL++ Aggregation (only)

<pre id="example">
SELECT c.name, array_count(o.items) AS order_size
FROM customers AS c, orders AS o
WHERE c.custid = o.custid
ORDER BY order_size DESC
LIMIT 3
</pre>
