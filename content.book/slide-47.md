## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
SELECT DISTINCT VALUE i.itemno
FROM orders AS o, o.items AS i
WHERE o.custid IN
    (SELECT VALUE c.custid
     FROM customers AS c
     WHERE c.name = "T. Cruise");
</pre>
