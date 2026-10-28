-- Altering Table - ALTER
ALTER TABLE users_table
 ADD password_hash VARCHAR(200) UNIQUE;

UPDATE users_table
SET password_hash = '$2b$12$eImiTxAk4ss1YEG..randomhash1'
WHERE user_id = 1;
UPDATE users_table
SET password_hash = '$2b$12$eImiTxAk4ss1YEG..randomhash2'
WHERE user_id = 2;
UPDATE users_table
SET password_hash = '$2b$12$eImiTxAk4ss1YEG..randomhash3'
WHERE user_id = 3;
UPDATE users_table
SET password_hash = '$2b$12$eImiTxAk4ss1YEG..randomhash4'
WHERE user_id = 4;
UPDATE users_table
SET password_hash = '$2b$12$eImiTxAk4ss1YEG..randomhash5'
WHERE user_id = 5;
UPDATE users_table
SET password_hash = '$2b$12$eImiTxAk4ss1YEG..randomhash6'
WHERE user_id = 6;
UPDATE users_table
SET password_hash = '$2b$12$eImiTxAk4ss1YEG..randomhash7'
WHERE user_id = 7;
UPDATE users_table
SET password_hash = '$2b$12$eImiTxAk4ss1YEG..randomhash8'
WHERE user_id = 8;
UPDATE users_table
SET password_hash = '$2b$12$eImiTxAk4ss1YEG..randomhash9'
WHERE user_id = 9;
UPDATE users_table
SET password_hash = '$2b$12$eImiTxAk4ss1YEG..randomhash10'
WHERE user_id = 10;

ALTER TABLE users_table
RENAME email TO email_address;

SELECT *
FROM users_table;
