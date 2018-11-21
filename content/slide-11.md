## Added "VALUE" (2)

A slightly more complicated expression is a record constructor.

In this example we construct a record with the fields *CustomerName* and
*OrderDate* having the values *c.name* and *o.order_date*.

This is a simple example for a record construction as the field names are
constants. In the general case the field names can be arbitrary expressions as
well.

<pre id="example">
SELECT VALUE {
  "CustomerName": c.name,
  "OrderDate": o.order_date
}
FROM customers AS c, orders AS o
WHERE c.custid = o.custid
  AND c.rating > 650;
</pre>
