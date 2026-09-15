-- student SQL #1
SELECT * FROM student;

--student SQL #2  : select students in asc order by id

SELECT * FROM STUDENT 
 ORDER BY student_id ASC;

 --student SQL #3 : select students in asc order by id

SELECT * FROM STUDENT 
 ORDER BY student_id DESC;

--student SQL #4  : select students in asc order by student_last_name

SELECT * FROM STUDENT 
 ORDER BY student_last_name ASC;



 --student SQL #5  : select students in desc student_last_name

SELECT * FROM students
 ORDER BY student_last_name DESC;

 --student SQL #6  : select books in asc book_author

SELECT * FROM books
 ORDER BY book_author ASC; 


--student SQL #6  : select books in asc book_author

SELECT * FROM books
 ORDER BY book_author DESC; 






 -- you can modify displayed columns by selecting
 --specific columns after SELECT command
 --student SQL#8 display all students: first_name and last_name


 SELECT student_first_name,
         student_last_name

FROM students
ORDER BY student_first_name ASC;

--student SQL#9 LIMIT 1

SELECT student_first_name,
         student_last_name

FROM students
ORDER BY student_first_name ASC;
LIMIT 1;

--student SQL#10 - select a student based on id

SELECT student_first_name,
         student_last_name

FROM students
WHERE student_id = 1
LIMIT 1;


--student SQL#10 - update a student name  based on id

UPDATE Students
SET student_first_name='mervin',
  student_last_name='adag'
  WHERE student_id = 20240888;


UPDATE books
SET book_author='zustin',
  book_category='comedy'
  WHERE  book_id = 4;









