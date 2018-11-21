## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
FROM orders AS o, o.items AS i
GROUP BY o.orderno, o.order_date
HAVING SUM(i.qty * i.price) > 10000
SELECT o.orderno AS order_number, o.order_date,
       SUM(i.qty * i.price) AS revenue
ORDER BY revenue DESC;
</pre>
