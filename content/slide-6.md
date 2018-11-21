## Just like SQL

We can also formulate the query using SQL's explicit JOIN syntax.
And using a LEFT OUTER JOIN in this case yields the same result.

<pre id="example">
SELECT c.name, o.order_date
FROM customers AS c LEFT OUTER JOIN orders AS o
  ON c.custid = o.custid
WHERE c.custid = "C41";
</pre>
