## Data

Looking further at a record from *orders* by running the query on this
page we can see that the *items* field contains another nested
datastructure, an array (which contains 2 more records).

<pre id="example">
SELECT VALUE o
FROM orders o
WHERE o.orderno = 1004;
</pre>
