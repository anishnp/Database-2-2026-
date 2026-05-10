-- Nested table type
/* unordered set of data elements
same datatype
second colleection type
contains a singel columns */

--STEP TO CREATE NESTED TABLE
-- SETP-1: Create the obj type
CREATE TYPE object_type_name AS OBJECT(
    attribute_name DATATYPE(SIZE),
    attribute_name DATATYPE(SIZE),
    attribute_name DATATYPE(SIZE));
/
-- STEP-2: Use the type defination to create the nested table object type
CREATE TYPE object_table_type_name
AS TABLE OF object_type_name;

--SETP-3: Use the nested table in relational table
CREATE TABLE relational_table_name(
    column_name DATATYPE(SIZE),
    column_name DATATYPE(SIZE),
    column_name object__table_type_name
)
NESTED TABLE nested_column_name STORE AS nested_table_object_name;




-- INSERTING INTO OBJECT COLUMNS
INSERT INTO table_name (column_name, object_column_name)
VALUES(value, object_type_name('VALUE', 'VALUE', 'VALUE'));

-- example 
INSERT INTO sites (site_id, address)
VALUES(3, address_type('22 PARK LANE', 'LONDON', 'UK'));

-- INSERTING INTO OBJECT TABLES
INSERT INTO table_name(column_name, column_name, column_name)
VALUES('VALUE', 'VALUE', 'VALUE');

--exmaple
INSERT INTO addresses(ste=reet, city, country)
VALUES('11 HIGHWAY', 'Northampton' 'UK');

-- INSERTING INTO TABLE WITH REFs TO OBJECT TABLES
INSERT INTO table_name(column_name, column_name, ref_column_name)
SELECT VALUE, 'VALUE', REF(alias)
FROM table_name alias
WHERE object_table_column_name ='VALUE';

--example
INSERT INTO students(student_id, address)
SELECT 12345, REF(a)
FROM addresses a
WHERE street = '67 KINGSTOMEP AVENEVE' 

--INSERTING A REF USING UPDATE
INSER INTO instructors(instructors_id) VALUES(123),

UPDATE instructors SET address = (
    SELECT REF(a)
    FROM addresses a
    WHERE a.street = '177 AIRPORT ROAD'
)
WHERE instructor_id = 123; 

--INSERT WITH SIMPLE ARRAY 
INSERT INTO products(product_id, available_size)
VALUES(1010101, size_carray_type('SMALL', 'MEDUIM', 'LARGE')); 


