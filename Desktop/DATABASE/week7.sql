--To use the UNION functions in a select with objects the following structure is used:
SELECT alias.object_column_name.attribute
FROM table_name alias
WHERE alias. object_column_name.attribute = ‘value’
UNION
SELECT alias.object_colimn_name.attribute
FROM table_name alias
WHERE alias. object_column_name.attribute = ‘value’
--the WHERE clause is optional


--To use the INTERSECT functions in a select with objects the following structure is used:
SELECT alias.column_name.attribute
FROM table_name alias
WHERE alias. object_column_name.attribute = ‘value’
INTERSECT
SELECT alias.colimn_name.attribute
FROM table_name alias
WHERE alias. object_column_name.attribute = ‘value’
--the WHERE clause is optional

--To use the MINUS functions in a select with objects the following structure is used:
SELECT column_name1, column_name1
FROM object_table
MINUS
SELECT table_name_alias. object_column_name.attribute, table_name_alias.
object_column_name.attribute
FROM table_name alias;
--the WHERE clause is optional

-- To include functions in a query the following structure is used:
SELECT column_name1, FUNCTION(*)
FROM table_name
GROUP BY column_name1
HAVING FUNCTION condition;

--inner joints
SELECT tablename1.columnname, columnname
FROM tablename1
[INNER] JOIN tablename2
ON tablename1.pk = tablename2.fk;

--Compound Inner Join where repeat the keywords JOIN and ON in cascading order
SELECT columnname, columnname
FROM tablename1
JOIN tablename2
ON tablename1.table1_pk = tablename2.table_2fk
JOIN tablename_3
ON tablename3.table3_pk = tablename2.table_2fk;

--Syntax for nested queries
SELECT attribute, attribute, attribute
FROM tablename
WHERE attribute IN (
SELECT attribute
FROM another_tablename
WHERE condition );

--Negative nested query
SELECT name
FROM programming
WHERE name NOT IN (
SELECT name
FROM databases);

