# CREATE TABLE COMMAND
```
CREATE TABLE table_name (
    column1 datatype1,
    column2 datatype2,
    ...
    columnN datatypeN
);
```

# DROP TABLE COMMAND
```
DROP TABLE IF EXISTS table_name;
```

# INSERT TABLE COMMAND
```
INSERT INTO table_name (column1, column2, ..., columnN)
VALUES (value1, value2, ..., valueN);
```

# ALTER TABLE COMMAND
**Add a new column:**
```
ALTER TABLE table_name
ADD COLUMN column_name datatype;
```
**Drop a column:**

```ALTER TABLE table_name
DROP COLUMN column_name;
```

**Rename a column:**

```ALTER TABLE table_name
RENAME COLUMN old_column_name TO new_column_name;
```

**Modify column data type:**

```
ALTER TABLE table_name
ALTER COLUMN column_name TYPE new_data_type;
```
**Add a primary key constraint:**

```
ALTER TABLE table_name
ADD CONSTRAINT constraint_name PRIMARY KEY (column_name);
```

**Drop a primary key constraint:**


```
ALTER TABLE table_name
DROP CONSTRAINT constraint_name;
```
**Add a foreign key constraint:**


```
ALTER TABLE table_name
ADD CONSTRAINT constraint_name
FOREIGN KEY (column_name)
REFERENCES other_table_name (referenced_column_name);
```


**Drop a foreign key constraint:**


```ALTER TABLE table_name
DROP CONSTRAINT constraint_name;
```

**Add a unique constraint:**

```ALTER TABLE table_name
ADD CONSTRAINT constraint_name UNIQUE (column_name);
```

**Drop a unique constraint:**

```
ALTER TABLE table_name
DROP CONSTRAINT constraint_name;
```