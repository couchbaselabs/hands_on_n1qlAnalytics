## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
FROM customers AS c
     LEFT OUTER JOIN orders AS o ON c.custid = o.custid
SELECT c.custid, c.name, o.orderno, o.order_date
ORDER BY c.custid, o.order_date;
</pre>
