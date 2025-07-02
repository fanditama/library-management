CREATE DATABASE library_management_restful_api;

USE library_management_restful_api;

CREATE TABLE users
(
    id          VARCHAR(100) NOT NULL,
    username    VARCHAR(100) NOT NULL,
    password    VARCHAR(100) NOT NULL,
    email       VARCHAR(100) NOT NULL,
    first_name  VARCHAR(100) NOT NULL,
    last_name   VARCHAR(100) NOT NULL,
    role        ENUM("USER", "PUSTAKAWAN", "ADMIN"),
    token       VARCHAR(100),
    token_expired_at  BIGINT,
    PRIMARY KEY (id),
    UNIQUE  (token)
) ENGINE InnoDB;

SELECT * FROM users;

DESC users;

CREATE TABLE authors
(
    id          VARCHAR(100) NOT NULL,
    name        VARCHAR(100) NOT NULL,
    bio         VARCHAR(100),
    PRIMARY KEY (id)
) ENGINE InnoDB;

SELECT * FROM authors;

DESC authors;

CREATE TABLE books
(
    id                  VARCHAR(100) NOT NULL,
    author_id           VARCHAR(100) NOT NULL,
    title               VARCHAR(100) NOT NULL,
    isbn                VARCHAR(100) NOT NULL,
    published_year      INTEGER(10)  NOT NULL,
    genre               VARCHAR(100),
    total_copies        INTEGER(10)  NOT NULL,
    available_copies    INTEGER(10)  NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY fk_authors_books (author_id) REFERENCES authors (id)
)ENGINE InnoDB;

SELECT * FROM books;

DESC books;

CREATE TABLE loans
(
    id                  VARCHAR(100) NOT NULL,
    user_id             VARCHAR(100) NOT NULL,
    book_id             VARCHAR(100) NOT NULL,
    loan_date           TIMESTAMP    DEFAULT CURRENT_TIMESTAMP NOT NULL,
    due_date            TIMESTAMP    DEFAULT CURRENT_TIMESTAMP NOT NULL,
    return_date         TIMESTAMP    DEFAULT CURRENT_TIMESTAMP,
    status              ENUM("DIPINJAM", "KEMBALI", "TERLAMBAT") NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY fk_users_loans (user_id) REFERENCES users (id),
    FOREIGN KEY fk_books_loans (book_id) REFERENCES books (id)
)ENGINE InnoDB;

SELECT * FROM loans;

DESC loans;