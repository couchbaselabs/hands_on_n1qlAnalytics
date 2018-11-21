## Data

Before looking at queries let us first look briefly at the data. We have 2
datasets *customers* and *orders*. Looking at 2 records from *customers* by
running (but not looking at) the query on this page we can see 2 things that
are not allowed in SQL's relational model:

* the *address* field contains a nested record and
* the *address* field in the record with the *custid* *C37* contains a
  *zipcode* field while the *address* field in the record with the *custid* *C47* does not, i.e. the data model allows for *missing* data (this is different from *NULL* which still exists.)

<pre id="example">
SELECT VALUE c
FROM customers c
WHERE c.custid in ["C37", "C47"];
</pre>
