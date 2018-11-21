## Added "VALUE" (4)

Going one step further, we don't need to restrict ourselves to a simple field
access to detarmins a value for newly constructed the field.

In this example we construct a record that contains the customer name and an
array of all order numbers for this customer. The array is constructed using a
nested *SELECT VALUE* query.

<pre id="example">
SELECT VALUE {
  "CustomerName": c.name,
  "Orders": (SELECT VALUE o.orderno FROM orders AS o
            WHERE o.custid = c.custid)
}
FROM customers AS c
WHERE c.custid = "C41";
</pre>
