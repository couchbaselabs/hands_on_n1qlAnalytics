## SQL++ for SQL Users: Quantification

When dealing with nested arrays one sometimes wants to find out if a statement
about the whole array is true. To do this we use the concepts of existential
and universal quantification known from predicate calculus.

In this example we use existential quantification (a *SOME* expression) to
determine if there is a value *i* in *o.items* that has a price that is
greater than or equal to 25.

The result of the query are the *custids* of all customers that had at least
one item with a price that is greater than or equal to 25. The *DISTINCT* in
the *SELECT* clause ensures that each *custid* is only returned once.

<pre id="example">
SELECT DISTINCT VALUE o.custid
FROM orders AS o
WHERE SOME i IN o.items SATISFIES i.price >= 25.00;
</pre>
