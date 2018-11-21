## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
SELECT VALUE
  {"high-rated customers, ordered by rating":
      (SELECT c.rating, c.custid, c.name
       FROM customers AS c
       WHERE c.rating > 650
       ORDER BY c.rating DESC),
  "high-rated customers, ordered by zipcode":
      (SELECT c.address.zipcode, c.custid, c.name
       FROM customers AS c
       WHERE c.rating > 650
       ORDER BY c.address.zipcode)
  };
</pre>
