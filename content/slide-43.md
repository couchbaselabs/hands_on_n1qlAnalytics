## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
FROM orders AS o, o.items AS i
GROUP BY o.order_date
GROUP AS g
LET revenue = SUM(i.price * i.qty)
HAVING revenue > 1000.00
SELECT o.order_date AS `good day`, revenue,
   (FROM g AS gi
    WHERE gi.i.price > 100.00
    SELECT gi.i.itemno, gi.i.price
    ORDER BY gi.i.itemno) AS `expensive items`
ORDER BY o.order_date;
</pre>
