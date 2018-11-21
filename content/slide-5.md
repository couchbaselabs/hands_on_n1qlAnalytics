## Just like SQL (2)

Another example is this simple join query that selects the customer identified
by "C41", joins the customer with his orders and returns the cutomer name
along with the order name for each order.

<pre id="example">
SELECT c.name, o.order_date
FROM customers AS c, orders AS o
WHERE c.custid = o.custid
  AND c.custid = "C41";
</pre>
