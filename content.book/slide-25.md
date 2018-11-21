## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
FROM customers AS c
     LEFT OUTER JOIN orders AS o ON c.custid = o.custid
GROUP BY c.custid, c.name
SELECT c.custid, c.name, COUNT(o.orderno) AS `order count`
ORDER BY c.custid;
</pre>
