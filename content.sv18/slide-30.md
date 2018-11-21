## SQL++ for SQL Users: Dealing with different "cases"

<pre id="example">
SELECT VALUE {
  "orderno": o.orderno,
  "order_date": o.order_date,
  "ship_date":
    CASE
      WHEN o.ship_date IS MISSING THEN "TBD"
      ELSE o.ship_date
    END,
  "custid": o.custid
}
FROM orders o
ORDER BY ship_date DESC
</pre>
