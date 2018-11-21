## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
FROM orders AS o, customers AS c
WHERE o.custid = c.custid
AND EXISTS
     (SELECT i.itemno
          FROM o.items AS i
          WHERE i.itemno = 680)
SELECT c.custid, c.name, o.order_date AS date
ORDER BY c.custid, date;
</pre>
