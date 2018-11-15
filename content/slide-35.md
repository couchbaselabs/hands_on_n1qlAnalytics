## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
SELECT ARRAY_AVG(
   (SELECT VALUE c.rating
    FROM customers AS c) ) AS `avg credit rating`;
</pre>
