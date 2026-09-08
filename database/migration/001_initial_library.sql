-- #1 students table  

CREATE TABLE IF NOT EXIST studenst (
-- Primary key for the students table--
student_id INT PRIMARY KEY AUTO_INCREMENT,

--student name 
student_first_name VARCHAR(50) NOT NULL,
student_last_name VARCHAR(50) NOT NULL,

-- student course --
student_course VARCHAR(50) NOT NULL,

--Student created at timestamp
student_created_at TIMESTAMP NOT NULL 
  DEFAULT CURRENT_TIMESTAMP



) ENGINE= InnoDB
DEFAULT CHARSE=utf8mb
COLLATE =utf8mb_general_ci;


-- #2 books table 
CREATE TABLE IF NOT EXIST books (
    --Primary key for the books table 
    book_id  INT PRIMARY KEY AUTO_INCREMENT,


    -- Book details

    book_title VARCHAR(100) NOT NULL,
    book_author VARCHAR(100) NOT NULL,
    book_category VARCHAR(50) NOT NULL,

    --Book createda at timestamp

    book_created_at TIMESTAMP NOT NULL
    DEFAULT CURRENT_TIMESTAMP 

) ENGINE= InnoDB
DEFAULT CHARSE=utf8mb
COLLATE =utf8mb_general_ci;


--#3 borrow table

CREATE TABLE IF NOT EXIST borrow (
    --Primary key  for the borrow table

    borrow_id INT AUTO_INCREMENT PRIMARY KEY,

    --foreign key references
    student_id INT NOT NULL,
    book_id INT NOT NULL,

    --Borrow timestamp not null be default

    borrow_date TIMESTAMP NOT NULL 
    DEFAULT CURRENT_TIMESTAMP,
   

   --borrow_return timestamp null by default 
   borrow_return_date TIMESTAMP NULL
   DEFAULT NULL,

   --  borrow table constraint and foreign keys
   constraint fk_borrow_student
   FOREIGN KEY (student_id)
   REFERENCES stdents(student_id)
   ON UPDATE CASCADE
   ON DELETE RESTRICT,

   CONSTRAINT fk_borrow_book
     FOREIGN KEY (book_id)
      REFERENCES books(books_id)
      ON UPDATE CASCADE
      ON UPDATE RESTRICT

      ) ENGINE= InnoDB
DEFAULT CHARSE=utf8mb
COLLATE =utf8mb_general_ci;


-- Insert statement #1 Insert Students
INSERT INTO students (
    student_first_name,
    student_last_name,
    student_course 
)

VALUES 
('ZUSTIN', 'ANASCO', 'BSIT') ;
('REXMAR', 'BOLINQUIT', 'BSIT') ;
('ELLIEZA', 'SUSON', 'BSHM') ;

-- insert statement #2 Insert book

 INSERT INTO books (
    book_title,
    book_author,
    book_category
 ) VALUES 

 ('Reply 1988', 'Park Bo-gum', 'Family Comedy') ;
 ('Vincenzo', 'Song Joong-ki', 'Dark Comedy Crime') ;
 ('Business Proposal', 'Ahn Hyo-seop', 'Office Romance') ; 