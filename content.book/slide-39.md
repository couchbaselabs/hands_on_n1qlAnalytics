## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
FROM customers AS c
GROUP BY c.address.zipcode AS zip
GROUP AS g
SELECT zip, AVG(c.rating) AS `avg credit rating`,
   (FROM g AS gi
    SELECT gi.c.custid, gi.c.name
    ORDER BY gi.c.custid) AS `local customers`
ORDER BY zip;
</pre>
