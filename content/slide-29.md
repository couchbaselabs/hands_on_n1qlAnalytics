## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
FROM orders AS o
LET revenue =
   (FROM o.items AS i
   SELECT VALUE SUM(i.qty * i.price))[0]
WHERE revenue > 1000
SELECT o.orderno, revenue
ORDER BY revenue DESC;
</pre>
