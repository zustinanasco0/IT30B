SELECT 
br.borrow_id, s.student_id,
    CONCAT(s.student_first_name,
     ' ', 
     s.student_last_name
    ) 
    AS student_name, s.student_course,
    b.book_title, 
    b.book_author, 
    b.book_category,
    br.borrow_date 
FROM borrow br

  INNER  JOIN students s ON br.student_id = s.student_id
  INNER JOIN books b ON br.book_id = b.book_id
    WHERE br.borrow_date IS  NULL 
ORDER BY br.borrow_date DESC;

--return the book

UPDATE borrow 
 SET borrow_return_date = CURRENT_TIMESTAMP
 WHERE borrow_id = 
