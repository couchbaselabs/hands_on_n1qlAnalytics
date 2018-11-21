## Not exactly like SQL ... (1)

However, there are a few differences. In this example the difference is, that
the there are no schemas for the datasets *customers* and *orders*. I.e. we do
not know what fields are available in each record.

Looking at the query
<pre>
SELECT name, order_date
FROM customers, orders
WHERE customers.custid = orders.custid
  AND rating > 650;
</pre>

we see that 2 fields (*name* and *order_date*) are selected from 2 datasets,
but we do now know which field is selected from which dataset. In SQL we could
associate a field with a dataset based on the schema of the dataset. Without a
schema the query is amibigous.

Luckily it is easy to resolve the ambiguity by following SQL best practices to
introduce aliases and to fully qualify the selected fields.

<pre id="example">
SELECT c.name, o.order_date
FROM customers AS c, orders AS o
WHERE c.custid = o.custid
  AND c.rating > 650;
</pre>
