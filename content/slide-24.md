## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
FROM orders AS o
GROUP BY o.custid
SELECT o.custid, COUNT(o.orderno) AS `order count`
ORDER BY o.custid;
</pre>
