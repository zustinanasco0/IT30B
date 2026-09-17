<?php 
// Database Connection 

$host = 'location';
$db = 'it30b_lab_db';
$user = 'root';
$pass = ' ' ;
$charset = 'utf8mb4' ;

$dsn ="msql:host=$host; dbname=$db; charset=$charset";

$options = [
 PDO:: ATTR_ERR => PDO  :: ERRMODE_EXCEPTION,
 PDO:: ATTR_DEFAULT_FETCH_MODE => PDO ::FETCH_ASSOC,
 PDO:: ATTR_EMULATE_PREPARES => false,



];

try{

 $pdo = new PDO ($dsn,$user,$pass,$options);
}catch(PDOException $e){
  die("Database connection failed". $e->getMessage());


}

// Session

session_start() ;

//determine current section
$section =$GET['section'] ?? 'students' ;

//determine CRUD operation
$action = $_GET['action'] ?? '' ;

// Fetch  Students
if($section === 'students') {

$stmt = $pdo -> query ("
  SELECT = 
  FROM students
  ORDER BY students_id DESC;



");

}
?>







<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library System</title>
</head>
<body>
    
<h1> Simple Library System </h1>

<nav>
<a href="index.php?section=Students">Students</a>
<a href="index.php?section=Books">Students</a>
<a href="index.php?section=Borrow">Students</a>

<hr>
<?php if ($section === 'students') : ?>
<h1>Students</h1>
<table>

<thead>
    <tr>
         <th>ID</th>
         <th>First</th>
         <th>Last</th>
         <th>Course</th>
         <th>Created</th>
         <th>Action</th>
    </tr>
</thead>

<tbody>

<?php foreach($students as student): ?>

    <tr>
 <td>
    <?=htmlspecialchars($students['student_id']) ?>

 </td>
  <td>
    <?=htmlspecialchars($students['student_first_name']) ?>
    
 </td>
  <td>
    <?=htmlspecialchars($students['student_last_name']) ?>
    
 </td>
   <td>
    <?=htmlspecialchars($students['student_course']) ?>
    
 </td>
   <td>
    <?=htmlspecialchars($students['student_created_at']) ?>
    
 </td>

    </tr>

    <td>
        <a>Edit</a>

        <a>Delete</a>
    </td>

</tbody>


</table>
 
<?php endif;?>

<?php if ($section === 'Books') : ?>
<h1>Books</h1>
 
<?php endif;?>

<?php if ($section === 'borrow') : ?>
<h1>Borrow</h1>
 
<?php endif;?>


</nav>
</body>
</html>