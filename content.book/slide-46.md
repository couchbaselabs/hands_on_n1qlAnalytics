## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
FROM orders AS o, o.items AS i
GROUP BY i.itemno
GROUP AS g
LET total_on_order = SUM(i.qty)
SELECT i.itemno, total_on_order,
    (FROM g AS gi
     SELECT gi.o.order_date, gi.o.custid
     ORDER BY gi.o.order_date) AS purchasers
ORDER BY i.itemno;
</pre>
