## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
FROM orders AS o, o.items as i
GROUP BY o.orderno
LET revenue = SUM(i.qty * i.price)
HAVING revenue > 1000
SELECT o.orderno, revenue
ORDER BY revenue DESC;
</pre>
