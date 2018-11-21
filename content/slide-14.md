## Unnesting (1)

In previous examples we've seen that we have nested data and that we can
construct nested data in a query.

Obviously, we also need to unnest data. One way to unnest data is using the
UNNEST clause. In this example bind each order to *o* and use *o.items* to
retrieve an array of items for the order. By unnesting *o.items*, we
effectively join each order *o* with each of its items *i*.

<pre id="example">
SELECT o.orderno,
       o.order_date,
       i.itemno AS item_number,
       i.qty AS quantity
FROM orders AS o UNNEST o.items AS i
WHERE i.qty > 100
ORDER BY o.orderno, item_number;
</pre>

The result of this query are "flat" records constructed out of order/lineitem
pairs.
