## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
FROM orders AS o, o.items as i
GROUP BY o.orderno
SELECT o.orderno, SUM(i.qty * i.price) AS revenue
ORDER BY o.orderno;
</pre>
