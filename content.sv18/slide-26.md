## SQL++ for SQL Users: SQL Grouping and Aggregation Explained

<pre id="example">
SELECT c.address.city, count(*) AS cnt
FROM customers AS c, orders AS o
WHERE c.custid = o.custid
GROUP BY c.address.city
</pre>
