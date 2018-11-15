## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
ROM customers AS c LEFT OUTER JOIN
   /* This subquery unnests the items in each order,
         returning an array of results named sq */
   (FROM orders AS o, o.items AS i
    SELECT o.custid, o.order_date, i.itemno, i.qty) AS sq
ON c.custid = sq.custid
GROUP BY c.custid, c.name
GROUP AS g
SELECT c.custid, c.name,
      (FROM g AS gi
       SELECT gi.sq.order_date, gi.sq.itemno, gi.sq.qty
       ORDER BY gi.sq.order_date, gi.sq.itemno)
       AS recent_items
ORDER BY c.custid;
</pre>
