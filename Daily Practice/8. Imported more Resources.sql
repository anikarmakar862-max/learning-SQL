CREATE TABLE company_dim
(
company_id INT,
name VARCHAR(255),
link VARCHAR(700),
link_google VARCHAR(700),
thumbnail VARCHAR(500)
);
COPY company_dim
FROM '.Resources/company_dim.csv'
DELIMITER '	' CSV HEADER;

CREATE TABLE skills_job_dim
(
job_id INT,
skill_id INT
);
COPY skills_job_dim
FROM '.Resources/skills_job_dim.csv'
DELIMITER ',' CSV HEADER;

CREATE TABLE skills_dim
(
skill_id INT,
skills VARCHAR(80),
type VARCHAR(100)
);

COPY skills_dim
FROM '.Resources/skills_dim.csv'
DELIMITER '	' CSV HEADER;
