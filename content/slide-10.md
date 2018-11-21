## Added "VALUE" (1)

One addition to SQL is the *SELECT VALUE* statment.

It is used to return the result of an arbitrary expression. This is different
from a *SELECT* clause which always returns a record.

In this example the expression is the simple access of the variable *name* and
so the result is a simple array of strings.

<pre id="example">
SELECT VALUE name
FROM customers
WHERE rating > 650;
</pre>
