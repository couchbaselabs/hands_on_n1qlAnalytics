## SQL++ for SQL Users: Missing data

<pre id="example">
SELECT VALUE {
  "orderno": o.orderno,
  "order_date": o.order_date,
  "ship_date": o.ship_date,
  "custid": o.custid
}
FROM orders o
WHERE o.ship_date IS MISSING
</pre>

… WHERE o.ship_date IS NOT MISSING
… WHERE o.ship_date IS UNKNOWN
… WHERE o.ship_date IS NULL
…
