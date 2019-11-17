<?php
session_start();

$uname = $_POST['username'];
$pass = $_POST['password'];

if($uname == "john" && $pass == "1234")
{
  $_SESSION['isAuthorised'] = "true";
  $_SESSION['username'] = $uname; 
?>  
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>My Blog</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">My Blog</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            </ul>
            <span class="navbar-text">
                <?php
                    echo $uname;
                 ?>
            </span>
        </div>
    </nav>
    <br/>
    <div class="container">
        <div class="card" style="width: 18rem;">
            <img class="card-img-top" src="img/card1php.png" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">PHP Tutorial</h5>
                <p class="card-text">This is Basic to Advance PHP course, procedural and object oriented concepts are covered.</p>
                <a href="read.php?id=1" class="btn btn-primary">Read</a>
            </div>
        </div>
    </div>





<?php
} else {
    header("Location: index.php");
    $_SESSION['error'] = "User not valid";
    $_SESSION['isAuthorised'] = "false";
    unset($_SESSION['username']);
    die();
}
?>
    