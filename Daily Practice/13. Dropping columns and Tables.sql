ALTER TABLE users_table
ADD COLUMN useless_column INT;

SELECT * FROM users_table;

ALTER TABLE users_table
DROP COLUMN useless_column;

SELECT * FROM users_table;

CREATE TABLE useless_table(
id_ INT
);
SELECT * FROM useless_table;

DROP TABLE useless_table;
