-- Data Types
CREATE TABLE users_table (
    user_id INT PRIMARY KEY,
    first_name VARCHAR(200),
    second_name VARCHAR(200),
    email VARCHAR(100) UNIQUE,
    created_at TIMESTAMP,
    is_active BOOLEAN
)

INSERT INTO users_table
(
user_id,
first_name,
second_name,
email,
created_at,
is_active
)
VALUES
(1, 'Aarav', 'Sharma', 'aarav.sharma@email.com', '2026-01-15 08:30:00', TRUE),
(2, 'Ananya', 'Patel', 'patel.ananya@email.com', '2026-02-20 14:15:22', TRUE),
(3, 'Rohan', 'Verma', 'rohan.verma@email.com', '2026-05-03 09:45:12', FALSE),
(4, 'Diya', 'Joshi', 'diya.joshi@email.com', '2026-04-12 18:20:05', TRUE),
(5, 'Kabir', 'Mehta', 'mehta.kabir@email.com', '2026-05-19 11:05:40', FALSE),
(6, 'Isha', 'Nair', 'isha.nair@email.com', '2026-06-22 16:50:15', TRUE),
(7, 'Arjun', 'Singh', 'arjun.singh@email.com', '2026-07-01 07:25:30', TRUE),
(8, 'Meera', 'Rao', 'meera.rao@email.com', '2026-08-14 13:24:55', FALSE),
(9, 'Vivaan', 'Das', 'das.vivaan@email.com', '2026-09-09 21:00:32', TRUE),
(10, 'Sanya', 'Gupta', 'gupta.sanya@email.com', '2026-10-25 10:33:45', TRUE)

SELECT *
FROM users_table