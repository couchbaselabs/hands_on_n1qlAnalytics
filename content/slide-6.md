## Just like SQL (3)

We can also formulate the previous query using SQL's explicit JOIN syntax.

Here we use a LEFT OUTER JOIN, which does have a slightly different meaning.
But it returns the same results for the data that we are using.

<pre id="example">
SELECT c.name, o.order_date
FROM customers AS c LEFT OUTER JOIN orders AS o
  ON c.custid = o.custid
WHERE c.custid = "C41";
</pre>
