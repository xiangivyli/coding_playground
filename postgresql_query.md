## Table of Contents
- [Joining](#joining)
- [Manipulation](#manipulation)


### Template
```sql
SELECT AS
FROM
WHERE  ;
```
```sql
SELECT  AS 
FROM
JOIN 
ON  = ;
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
### Manipulation
- `ABS` absolute values
- `LN()/LN(64)` logarithm to base 64
- `CAST( AS DECIMAL(20, 10))` cast the result to a `DECIMAL`(total digits, decimal part)
