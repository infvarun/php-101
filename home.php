<?php
include "connect.php";

if(isset($_SESSION['isAuthorised']) && $_SESSION['isAuthorised'] == "true")
{
    $blog_query = "SELECT * FROM blog";
    $blog_result = mysqli_query($dbconn, $blog_query);

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
                <a class="nav-link" href="home.php">Home <span class="sr-only">(current)</span></a>
            </li>
            </ul>

            <a class="btn btn-link" href="#">
                <?php echo $_SESSION['name'];?>
            </a>

            <a class="btn btn-outline-danger" href="signout.php">
                Sign out
            </a>
        </div>
    </nav>
    <br/>
    <div class="container">
        <?php while ($row = mysqli_fetch_assoc($blog_result)) { ?>
        <div class="card" style="width: 18rem;">
            <img class="card-img-top" src="img/<?php echo $row['imgurl'] ?>" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title"><?php echo $row['title'] ?></h5>
                <p class="card-text"><?php echo $row['intro'] ?></p>
                <a href="read.php?id=<?php echo $row['id'] ?>" class="btn btn-primary">Read</a>
            </div>
        </div>
        <?php }?>
    </div>


<?php
} else {
    header("Location: index.php");
    $_SESSION['error'] = "You are not authorised";
    $_SESSION['isAuthorised'] = "false";
    unset($_SESSION['username']);
    die();
}
?>
    