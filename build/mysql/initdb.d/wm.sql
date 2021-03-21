DROP SCHEMA IF EXISTS wallet_manager_db;
CREATE SCHEMA wallet_manager charset=utf8;
USE wallet_manager;

DROP TABLE IF EXISTS user;

CREATE TABLE user
(
    user_id VARCHAR(36),
    name    VARCHAR(40)
);
