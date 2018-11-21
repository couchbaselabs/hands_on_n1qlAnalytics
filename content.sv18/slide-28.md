## SQL++ for SQL Users: Missing data

<pre id="example">
SELECT o.orderno, o.order_date, o.ship_date, o.custid
FROM orders o
WHERE o.ship_date IS MISSING
</pre>
