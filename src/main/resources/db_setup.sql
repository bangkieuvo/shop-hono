--CREATE DATABASE `shop-hono`;
USE `shop-hono`;
CREATE TABLE user (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    hashed_password VARCHAR(255) NOT NULL  -- Thay đổi password thành hashed_password
);

CREATE TABLE user_info (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    full_name NVARCHAR(100) NOT NULL,
    address NVARCHAR(255) NOT NULL,
    user_id BIGINT UNIQUE
    -- Khóa ngoại liên kết với users
    --CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES user(id) ON DELETE CASCADE
);
CREATE TABLE category (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    description TEXT
);

