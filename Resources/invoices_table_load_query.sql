CREATE TABLE    invoices (
    activity_id INT,
    activity_date TIMESTAMP,
    project_id INT,
    project_company VARCHAR(150),
    project_tool VARCHAR(100),
    nerd_id INT,
    nerd_role VARCHAR(100),
    hours_spent INT,	
    hours_rate REAL
);
COPY invoices
FROM '/var/lib/pgsql/invoices_table.csv'
DELIMITER '	' CSV HEADER;