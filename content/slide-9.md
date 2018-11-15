## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
SELECT c1.name
FROM customers AS c1
WHERE c1.rating =
   (SELECT MAX(c2.rating)
    FROM customers AS c2);
</pre>
