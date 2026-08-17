create table students(
   student_Id int auto_increment primary key,
   student_Name varchar(50) not null,
   student_Course varchar(50) not null,
   student_Year varchar (5) not null,


);

 create table book (
    book_Id int autoincrement primary key,
    book_Name varchar(50) not null,


 ); 

 create table borrow(
    borrow_Id int auto_increment primary key
    student_Id int not null,
    book_Id int not null,

 );

 