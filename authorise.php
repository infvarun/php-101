<?php
include 'connect.php';

$uname = $_POST['username'];
$pass = $_POST['password'];

$sql = "SELECT * FROM user WHERE username='$uname' AND password='$pass'";
$result = mysqli_query($dbconn, $sql);
$rows = mysqli_num_rows($result);
if($rows == 1) {
    $row = mysqli_fetch_assoc($result);
    $_SESSION['username'] = $uname;
    $_SESSION['name'] = $row['name'];
    $_SESSION['isAuthorised'] = "true";
    header("Location: home.php"); // Redirecting to other page
}
else {
    $_SESSION['error'] = "User not valid";
    $_SESSION['isAuthorised'] = "false";
    unset($_SESSION['username']);
    $dbconn->close();
    header("Location: index.php");
    die();
}
?>