/* The SQL SELECT DISTINCT statement is used to retrieve unique (non-duplicate) values from a specified column or set of columns in a table. 
It eliminates duplicate rows from the result set, ensuring each row or value appears only once. Below, I’ll explain the SELECT DISTINCT statement,
its syntax, use cases*/

SELECT DISTINCT Column_Name From Table_Name

/*Key Points:
1. DISTINCT applies to the entire row of selected columns, not just one column.
2. If multiple columns are specified, DISTINCT considers the combination of values across those columns.
3. Performance: DISTINCT can be resource-intensive on large datasets, as it requires sorting or hashing to identify duplicates.
4. NULL values are considered equal, so only one NULL appears in the result if present.
*/