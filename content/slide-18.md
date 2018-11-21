## SQL++ for SQL Users: Quantification

An interesting aspect of the *EVERY* expression is that it is trivially true,
if the array is empty. I.e. The previous query would return the *custid* for
an order, if *o.items* is empty.

If this is not intended, we can address this by ensuring that *o.items* has at
least one element.

As there are no orders with 0 items in the dataset this query will return the
same result as the previous one.

<pre id="example">
SELECT DISTINCT VALUE o.custid
FROM orders AS o
WHERE EVERY i IN o.items SATISFIES i.price >= 25.00
  AND array_count(o.items) > 0;
</pre>
