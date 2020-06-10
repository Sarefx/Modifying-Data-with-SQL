-- INSERT INTO <table> VALUES (<value  1>, <value 2>, ...);

INSERT INTO books VALUES (16, "1984", "George Orwell", "Fiction", 1949);
INSERT INTO books VALUES (NULL, "Dune", "Frank Herbert", "Science Fiction", 1965);

INSERT INTO loans (id, book_id, patron_id, loaned_on, return_by, returned_on)
VALUES (NULL, 2, 4, "2015-12-14", "2015-12-21", NULL);

INSERT INTO books 
VALUES (NULL, "1984", "George Orwell", "Fiction", 1949),
    (NULL, "1984", "George Orwell", "Fiction", 1949),
    (NULL, "1984", "George Orwell", "Fiction", 1949);

-- Challenge #1
-- Task #1
INSERT INTO products VALUES (NULL, "new product", "its a new product", 19.99);
--...
-- Challenge completed

-- UPDATE <table> SET <column> = <value>;

UPDATE patrons SET last_name = "Anonymous";

UPDATE books SET genre = "classic" WHERE id = 20;

-- Challenge #2
-- Task #1
UPDATE products SET price = 0.99;
--...
-- Challenge completed



DELETE FROM books;

SELECT * FROM books WHERE title LIKE "harry potter%";
DELETE FROM books WHERE title LIKE "harry potter%";

DELETE FROM patrons WHERE id = 4;

-- Challenge #3
-- Task #1
DELETE FROM products WHERE price >= 11;
--...
-- Challenge completed

BEGIN TRANSACTION;  -- commits all statements at once when they are ready. Turns off autocommit
-- statements..
-- statements..
COMMIT;

ROLLBACK; -- To reset the state of the database to before the begining of the transaction

-- benefits of an ORM:
-- Handles transactions
-- One language
-- examples of ORMs:
-- Hibernate
-- CoreData
-- Django ORM
-- ActiveRecord