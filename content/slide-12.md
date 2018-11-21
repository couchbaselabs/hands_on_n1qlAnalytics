## Added "VALUE" (3)

For the simple case discussed before we also have a SQL syntax which uses
aliases to provide the field names.

The previous formulation of this query and this formulation are equivalent.

<pre id="example">
SELECT c.name AS CustomerName,
       o.order_date AS OrderDate
FROM customers AS c, orders AS o
WHERE c.custid = o.custid
  AND c.rating > 650;
</pre>
