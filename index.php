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



]

try{

$pdo = new PDO ($dsn,$user,$pass,$options);
echo 'connection successful' ;
}catch(PDOException $e){
  die("Database connection failed") .$e->getMessage();


}









<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
</body>
</html>