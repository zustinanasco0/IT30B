select br.borrow_id, s.student_id,
    CONCAT(s.student_first_name, ' ', s.student_last_name) AS student_name, s.student_course,
    b.book_title, b.book_author, b.book_category,
    br.borrow_date 
FROM borrow br
    JOIN students s ON br.student_id = s.student_id
    JOIN books b ON br.book_id = s.student_id
ORDER BY br.borrow_date DESC;

create table borrow(
    borrow_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id int not null,
    book_id int not null,
    borrow_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    borrow_return_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_borrow_student FOREIGN KEY (student_id) REFERENCES students(student_id),
    CONSTRAINT fk_borrow_book FOREIGN KEY (book_id) REFERENCES books(book_id)
    );

create table books(
    book_id INT auto_increment primary key,
    book_title varchar(100) not null,
    book_author varchar(100) not null,
    book_category varchar(50) not null
    book_created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP);

    select br.borrow_id, s.student_id,
    CONCAT(s.student_first_name, ' ', s.student_last_name) AS student_name, s.student_course,
    b.book_title, b.book_author, b.book_category,
    br.borrow_date 
FROM borrow br
    JOIN students s ON br.student_id = s.student_id
    JOIN books b ON br.book_id = s.student_id
ORDER BY br.borrow_date DESC;


SELECT br.borrow_id, s.student_id,
    CONCAT(s.student_first_name, ' ', s.student_last_name) AS student_name, s.student_course,
    b.book_title, b.book_author, b.book_category,
    br.borrow_date 
FROM borrow br
    JOIN students s ON br.student_id = s.student_id
    JOIN books b ON br.book_id = s.student_id
    WHERE br.borrow_date IS  NULL 
ORDER BY br.borrow_date DESC;



--Alter the borrow return_date column to allow  NULL values and set the default to NULL--


ALTER TABLE borrow
MODIFY borrow_return_date TIMESTAMP NULL DEFAULT NULL;
UPDATE borrow 
SET borrow_return_date = NULL
WHERE borrow_return_date = '2026-08-26 19:38:26'


--

UPDATE borrow 
SET borrow_return_date = CURRENT_TIMESTAMP 
WHERE borrow_id = 1 AND borrow_return_date 

--Change 

SELECT br.borrow_id, s.student_id,
    CONCAT(s.student_first_name, ' ', s.student_last_name) AS student_name, s.student_course,
    b.book_title, b.book_author, b.book_category,
    br.borrow_date 
FROM borrow br
    JOIN students s ON br.student_id = s.student_id
    JOIN books b ON br.book_id = b.book_id
    WHERE br.borrow_date IS  NOT NULL 
ORDER BY br.borrow_date DESC;

-------------------

SELECT br.borrow_id, s.student_id,
    CONCAT(s.student_first_name, ' ', s.student_last_name) AS student_name, s.student_course,
    b.book_title, b.book_author, b.book_category,
    br.borrow_date 
FROM borrow br
    JOIN students s ON br.student_id = s.student_id
    JOIN books b ON br.book_id = b.book_id
   
ORDER BY br.borrow_date DESC;


