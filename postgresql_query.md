## Table of Contents
- [Joining](#joining)


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
