# Part 1: Setup, Getting Started and Querying

## Documents, not rows

Data in Couchbase Server is stored in the form of documents, not rows or columns.

The keyspace name can be used to project the complete document.

<pre id="example">
SELECT name
FROM customers
WHERE rating > 650;
</pre>
