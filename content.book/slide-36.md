## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
FROM orders AS o
LET revenue = ARRAY_SUM(
       (FROM o.items AS i
        SELECT VALUE i.qty * i.price) )
WHERE revenue > 10000
SELECT o.orderno AS order_number, o.order_date, revenue
ORDER BY revenue DESC;
</pre>
