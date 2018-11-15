## <b>Part 1: SQL++ (SQL for JSON) Tutorial </b>

Example explanation

<b>Session Goals</b>

* UPDATE THIS

<pre id="example">
SELECT VALUE { "Average credit rating by zipcode" :
   (FROM customers AS c
    WHERE c.address.zipcode IS KNOWN
    GROUP BY c.address.zipcode AS zip
    SELECT VALUE { zip : ROUND(AVG(c.rating)) }
    ORDER BY zip
   )
};
</pre>
