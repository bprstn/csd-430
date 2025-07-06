-- CSD430.sql
CREATE DATABASE IF NOT EXISTS CSD430;
USE CSD430;

DROP TABLE IF EXISTS books;

CREATE TABLE books (
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(255),
    author VARCHAR(255),
    genre VARCHAR(100),
    year VARCHAR(10),
    publisher VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO books (title, author, genre, year, publisher) VALUES
('The Midnight Library', 'Matt Haig', 'Fiction', '2020', 'Viking'),
('Dune', 'Frank Herbert', 'Science Fiction', '1965', 'Chilton Books'),
('The Alchemist', 'Paulo Coelho', 'Philosophical', '1988', 'HarperOne'),
('Becoming', 'Michelle Obama', 'Memoir', '2018', 'Crown'),
('Educated', 'Tara Westover', 'Memoir', '2018', 'Random House');

