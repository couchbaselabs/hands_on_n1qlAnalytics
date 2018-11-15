## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
FROM orders AS o, o.items AS i, customers AS c
WHERE o.custid = c.custid
GROUP BY o.orderno AS `order no.`,
         o.order_date AS date, c.name, c.address
SELECT `order no.`, date, c.name, c.address,
        SUM(i.qty * i.price) AS `amount due`
ORDER BY `order no.`;
</pre>
