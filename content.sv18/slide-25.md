## SQL++ for SQL Users: SQL++ Grouping (only)

<pre id="example">
SELECT c.address.city, g
FROM customers AS c, orders AS o
WHERE c.custid = o.custid
GROUP BY c.address.city GROUP AS g;
</pre>
