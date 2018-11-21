## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
FROM customers AS c
GROUP BY c.address.zipcode AS zip
SELECT zip, ROUND(AVG(c.rating)) AS avg_rating
ORDER BY zip;
</pre>
