<?php
// 1. Connect to Database
$conn = mysqli_connect("localhost", "root", "", "library_db");

$user_id = "root";
$user_email = "root";

// 2. Button List
$buttons = [
    'Add Book',
    'Register Student',
    'Issue Borrow',
    'View Records'
];

// 3. Database Action Function
function logActivity($conn, $user_id, $user_email, $action, $status) {
    if ($action == 'Add Book') {
        return mysqli_query($conn, "INSERT INTO books (book_title, book_author, book_category) VALUES ('New Book', 'Author', 'General')");
    } 
    if ($action == 'Register Student') {
        return mysqli_query($conn, "INSERT INTO students (student_first_name, student_last_name, student_course) VALUES ('Alex', 'Smith', 'BSIT')");
    } 
    if ($action == 'Issue Borrow') {
        return mysqli_query($conn, "INSERT INTO borrow (student_id, book_id) VALUES (20240888, 1)");
    } 
    if ($action == 'View Records') {
        return mysqli_query($conn, "SELECT * FROM books");
    }
    return false;
}
?>


<table border="1" cellpadding="10">
    <tr>
        <th>Action</th>
        <th>Test</th>
    </tr>

    <?php foreach($buttons as $button) : ?>
    <tr>
        <td><?= $button ?></td>
        <td>
            <form method="post">
                <input type="hidden" name="action" value="<?= $button ?>">
                <button type="submit">Test</button>
            </form>
        </td>
    </tr>
    <?php endforeach; ?>
</table>

<?php
    
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $action = $_POST['action'] ?? "test_activity";
    $status = rand(0, 1) == 1 ? 'success' : 'failed';

    $success = logActivity($conn, $user_id, $user_email, $action, $status);

    if ($success) {
        echo "<p>Activity: " . $action . " | Status: " . $status . " | Log inserted successfully</p>";
    } else { 
        
        echo "<p>failed to insert activity log</p>";
    }
}
?>