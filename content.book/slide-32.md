## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
FROM orders AS o, o.items AS i
GROUP BY o.orderno, o.order_date
LET revenue =  SUM(i.qty * i.price)
HAVING revenue > 10000
SELECT o.orderno AS order_number, o.order_date, revenue
ORDER BY revenue DESC;
</pre>
