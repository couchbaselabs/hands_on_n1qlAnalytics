## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
FROM customers AS c
LET credit =
    CASE
      WHEN c.rating > 650 THEN "Good"
      WHEN c.rating BETWEEN 500 AND 649 THEN "Fair"
      ELSE "Poor"
    END
WHERE c.address.zipcode = "02115"
SELECT c.*, credit;
</pre>
