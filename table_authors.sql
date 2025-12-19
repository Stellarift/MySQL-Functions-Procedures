CREATE TABLE authors (
    au_id INT PRIMARY KEY,
    au_lname VARCHAR(50),
    au_fname VARCHAR(50),
    state CHAR(2)
);

INSERT INTO authors VALUES
(1, 'Иванов', 'Иван', 'CA'),
(2, 'Петров', 'Пётр', 'NY'),
(3, 'Сидоров', 'Сидор', 'CA');