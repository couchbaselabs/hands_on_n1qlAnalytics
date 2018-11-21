## Quantification (2)

Universal quantification (a *EVERY* expression) looks very similar, but it
determines if every *i* in *o.items* has a price that is greater than or equal
to 25.

The result of the query are the *custids* of all customers that had at least
one order for which all items have a price that is greater than or equal to
25. The *DISTINCT* in the *SELECT* clause again ensures that each *custid* is
only returned once.

<pre id="example">
SELECT DISTINCT VALUE o.custid
FROM orders AS o
WHERE EVERY i IN o.items SATISFIES i.price >= 25.00;
</pre>
