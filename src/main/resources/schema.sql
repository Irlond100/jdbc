DROP DATABASE IF EXISTS netology_test;
CREATE DATABASE netology_test;

USE netology_test;

CREATE TABLE IF NOT EXISTS CUSTOMERS
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    name         VARCHAR(255) NOT NULL,
    surname      VARCHAR(255) NOT NULL,
    age          INT CHECK (age > 0 AND age < 150),
    phone_number VARCHAR(25)
);

CREATE TABLE IF NOT EXISTS ORDERS
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    date         DATETIME     NOT NULL DEFAULT now(),
    customer_id  INT          NOT NULL,
    product_name VARCHAR(255) NOT NULL,
    amount       INT          NOT NULL CHECK (amount > 0),
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS (id)
);

INSERT INTO CUSTOMERS (name, surname, age, phone_number)
VALUES ('Alexey', 'Ivanov', 30, '123-456-7890'),
       ('John', 'Doe', 25, '987-654-3210'),
       ('Alexey', 'Petrov', 35, '555-555-5555'),
       ('Alice', 'Johnson', 28, '111-222-2233'),
       ('Alexey', 'Sidorov', 31, '999-888-7777'),
       ('Bob', 'Smith', 27, '444-433-3322'),
       ('Alexey', 'Kozlov', 29, '666-677-7788'),
       ('Grace', 'Miller', 32, '777-766-6655'),
       ('Alexey', 'Popov', 26, '222-211-1133'),
       ('Ivy', 'Anderson', 33, '888-899-9900');


INSERT INTO ORDERS (date, customer_id, product_name, amount)
VALUES ('2023-09-01', 1, 'Product A', 100.50),
       ('2023-09-02', 2, 'Product B', 75.25),
       ('2023-09-03', 3, 'Product C', 120.75),
       ('2023-09-04', 4, 'Product A', 100.50),
       ('2023-09-05', 5, 'Product B', 75.25),
       ('2023-09-06', 6, 'Product C', 120.75),
       ('2023-09-07', 7, 'Product A', 100.50),
       ('2023-09-08', 8, 'Product B', 75.25),
       ('2023-09-09', 9, 'Product C', 120.75),
       ('2023-09-10', 10, 'Product A', 100.50);