## SQL++ for SQL Users: Quantification

If we want to get the whole customer information (instead of just getting the
customer id), we can now take the existential quantification query that we
looked at before and use it in a subquery.

The customers that are returned are those whose customer ids are returned by
the subquery.

<pre id="example">
SELECT VALUE c
FROM customers AS c
WHERE c.custid IN (
    SELECT DISTINCT VALUE o.custid
    FROM orders AS o
    WHERE SOME i IN o.items SATISFIES i.price >= 25.00
)
</pre>
