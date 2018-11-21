## Added "VALUE"

One addition to SQL is the *SELECT VALUE* statment.

It is used to return the result of an arbitrary expression - without a
wrapping record.

In this example the expression is the simple access of the variable *name* and
so the result is a simple array of strings.

<pre id="example">
SELECT VALUE name
FROM customers
WHERE rating > 650;
</pre>
