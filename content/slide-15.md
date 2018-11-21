## Unnesting (2)

An alternate way to formulate the previous query is to use a comma (",") in
the *FROM* clause instead of the *UNNEST* keyword.

The language feature that we see here is an implicit left correlation between
the variables in the *FROM* clause, i.e. the variables that are bound on the
left side of the comma are accessible on the right side of the comma.

<pre id="example">
SELECT o.orderno,
       o.order_date,
       i.itemno AS item_number,
       i.qty AS quantity
FROM orders AS o, o.items AS i
WHERE i.qty > 100
ORDER BY o.orderno, item_number;
</pre>

The query result is the same.
