## SQL++ for SQL Users: Pitfalls and the value of VALUE

SELECT name
FROM customers
WHERE rating =
  (SELECT MAX(rating) FROM customers);

SELECT c1.name
FROM customers AS c1
WHERE c1.rating =
   (SELECT MAX(c2.rating) FROM customers AS c2);

SELECT c1.name
FROM customers AS c1
WHERE c1.rating =
   (SELECT VALUE MAX(c2.rating) FROM customers AS c2);

SELECT VALUE c1.name
FROM customers AS c1
WHERE c1.rating =
   (SELECT VALUE MAX(c2.rating) FROM customers AS c2)[0];

<pre id="example">
SELECT VALUE c1.name
FROM customers AS c1
WHERE c1.rating =
   (SELECT VALUE MAX(c2.rating) FROM customers AS c2)[0];
</pre>
