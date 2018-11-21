## Not exactly like SQL ...

*SELECT \** is a special case.
It is often used to explore data - and in a schema-less system the exploration is even more important as there is no schema to guide query writing.

To support the exploration use-case *SELECT \** returns an record that
contains a field for each variable that is in scope (in ths case *c* and *o*)
where each field contains the binding for the variable.

So, each result record contains a *c* field containing a record from
*customers* and an *o* field containing a record from *orders*.

<pre id="example">
SELECT *
FROM customers AS c, orders AS o
WHERE c.custid = o.custid
  AND c.rating > 650;
</pre>
