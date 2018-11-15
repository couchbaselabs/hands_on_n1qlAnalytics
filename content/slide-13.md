## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
SELECT VALUE c1.name
FROM customers AS c1
WHERE EVERY r IN
   (SELECT VALUE c2.rating FROM customers AS c2)
SATISFIES c1.rating >= r;
</pre>
