## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
FROM customers AS c
GROUP BY c.address.zipcode AS zip
GROUP AS g
LET `best rating` = MAX(c.rating)
SELECT zip, `best rating`,
   (FROM g AS gi
    WHERE gi.c.rating = `best rating`
    SELECT gi.c.custid, gi.c.name
    ORDER BY gi.c.custid) AS `best customers`
ORDER BY zip;
</pre>
