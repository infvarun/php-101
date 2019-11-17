<?php
include "connect.php";

$title = "";
$intro = "";
$article = "";
$category = "";
$author = "";

if(isset($_SESSION['isAuthorised']) && $_SESSION['isAuthorised'] == "true")
{
    $blogid = $_GET['id'];
    $blog_query = "SELECT * FROM blog WHERE id='$blogid'";
    $blog_result = mysqli_query($dbconn, $blog_query);
    $blog_row = mysqli_fetch_assoc($blog_result);

    if ($blog_row) {
        $title = $blog_row["title"];
        $intro = $blog_row["intro"];
        $article = $blog_row["article"];
        $category = $blog_row["category"];
        $author = $blog_row["author"];
    }

?>
 
 
 <!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <link href="css/jumbotron.css" rel="stylesheet">

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

    <main role="main">

      <!-- Main jumbotron for a primary marketing message or call to action -->
      <div class="jumbotron">
        <div class="container">
          <h1 class="display-3"><?php echo $title; ?></h1>
          <p><?php echo $intro; ?></p>
        </div>
      </div>

      <div class="container">
        <!-- Article -->
        <div class="row">
            <?php echo $article; ?>
        </div>

        <hr>

      </div> <!-- /container -->

    </main>

    <footer class="container">
      <p>&copy; Varun 2019-2020</p>
    </footer>




<?php
} else {
    header("Location: index.php");
    $_SESSION['error'] = "Please login to continue";
    die();
}
?>
 