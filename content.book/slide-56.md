## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
SELECT c.custid, "Unknown zipcode" AS reason
FROM customers AS c
WHERE c.address.zipcode IS NOT KNOWN

UNION ALL

SELECT o.custid, "Big order" AS reason
FROM orders AS o
WHERE ARRAY_COUNT(o.items) > 3
ORDER BY reason;

</pre>
