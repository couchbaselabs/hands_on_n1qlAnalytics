## Added "VALUE"

Going one step further, we don't need to restrict ourselves to a simple field
lookup to get a value.

In this example we construct a record that contains the customer name and and
an array of all order numbers for this customer. The array is constructed
using a nested *SELECT VALUE* query.

<pre id="example">
SELECT VALUE {
  "CustomerName": c.name,
  "Orders": (SELECT VALUE o.orderno FROM orders AS o
            WHERE o.custid = c.custid)
}
FROM customers AS c
WHERE c.custid = "C41";
</pre>
