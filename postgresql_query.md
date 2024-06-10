## Table of Contents
- [Joining](#joining)
- [Mathmatical Function](#mathematical-function)
- [Pattern Match with Like](#pattern-match-with-like)
- [Regular Expression](#regular-expression)
- [String Manipulation](#string-manipulation)

### Template
```sql
SELECT 
FROM
WHERE  ;
```
```sql
SELECT  
FROM
JOIN 
ON  = ;
```
Filter rows with another table
```sql
SELECT
FROM 
WHERE IN(SELECT FROM GROUP BY HAVING ))
ORDER BY DESC
```
### Joining
- Inner Join via Using
```sql
SELECT left_table.id AS L_id,
       left_table.val AS L_val,
       right_table.val AS R_val
FROM left_table
INNER JOIN right_table
USING (id);
```
### Mathematical Function
- `ABS()` absolute values
- `log(b numeric, x numeric)` the logarithm to base `b`

### Pattern Match with Like
- `_` single character
- `%` zero or more characters
```sql
SELECT first_name, last_name
FROM names
WHERE first_name LIKE '______%';
```

### Regular Expression
#### `REGEXP_MATCHES()`
- `([0-9]+)` one or more digits

### String Manipulation
- `REPEAT(string, n)` repeats string multiple `n` times
- `WHERE special_features @> ARRAY['Trailers', 'Deleted Scenes']` means contain an array, the column should be `text[]`
- `::` changes data types, `(n^2)::integer alias`
