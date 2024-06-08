## Table of Contents
- [Joining](#joining)
- [Mathmatical Function](#mathematical-function)


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
