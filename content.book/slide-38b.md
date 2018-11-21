## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
FROM customers AS c
GROUP BY c.address.zipcode AS zip
GROUP AS g
SELECT zip, AVG(c.rating) AS `avg credit rating`,
   (FROM g
    SELECT c.custid, c.name
    ORDER BY c.custid) AS `local customers`
ORDER BY zip;
</pre>
