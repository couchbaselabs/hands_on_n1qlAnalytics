## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
FROM customers AS c, orders AS o, o.items AS i
WHERE c.custid = o.custid
GROUP BY c.custid, c.name
GROUP AS g
SELECT c.custid, c.name,
        (FROM g AS gi
         SELECT gi.o.order_date, gi.i.itemno, gi.i.qty
         ORDER BY gi.o.order_date, gi.i.itemno) AS recent_items
ORDER BY c.custid;
</pre>
