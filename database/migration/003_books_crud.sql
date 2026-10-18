    -- Book SQL #1
    SELECT * FROM books;

    -- Book Query #2 - Select books order by id
    SELECT * FROM books
        ORDER BY book_id ASC;
    
    -- Book Query #3 - Select books order by id
    SELECT * FROM books
        ORDER BY book_id DESC;
    
    -- Book Query #4 - Select books order by book_title ASC
    SELECT
        book_title,
        book_author
        FROM books
        ORDER BY book_title ASC;
    
    -- Book Query #5 - Select books order by book_title DESC
    SELECT
        book_title,
        book_author
        FROM books
        ORDER BY book_title DESC;
    
    -- Book Query #6 - Select books order by book_title ASC
    SELECT
        book_author,
        book_title
        FROM books
        ORDER BY book_title ASC;

    -- Book Query #7 - Select books order by book_title DESC
    SELECT
        book_author,
        book_title
        FROM books
        ORDER BY book_title DESC;
    
    -- Book Query #8 - Select books with specific id number
    SELECT 
        book_author,
        book_title
        FROM books
        WHERE book_id = 3
        LIMIT  1;

    -- Book Query #9 - Update book title, author using specific id number
    UPDATE books
    SET
        book_title = 'Oyoyara',
        book_author = 'Shekles'
        WHERE book_id = 3;