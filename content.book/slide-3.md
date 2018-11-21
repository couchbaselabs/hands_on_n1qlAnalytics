# Part 1: Setup, Getting Started and Querying

## Documents, not rows

Data in Couchbase Server is stored in the form of documents, not rows or columns.

The keyspace name can be used to project the complete document.

<pre id="example">
SELECT c.name, c.rating
FROM customers AS c
WHERE c.custid = "C41";
</pre>
