
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Book Store</title>
    <style>
        #introcontainer{
            text-align:center;
        }
        #login-box {
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
      margin: auto;
      margin-top: 50px;
      max-width: 500px;
      padding: 20px;
    }
    
    h1 {
      color: #333;
      font-size: 28px;
      margin-bottom: 20px;
      text-align: center;
    }
    
    input[type=text], input[type=password] {
      border: none;
      border-radius: 3px;
      box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
      font-size: 16px;
      margin-bottom: 20px;
      padding: 10px;
      width: 100%;
    }
    
    input[type=submit] {
      background-color: #4CAF50;
      border: none;
      border-radius: 3px;
      color: #fff;
      cursor: pointer;
      font-size: 16px;
      padding: 10px;
      width: 100%;
    }
    
    input[type=submit]:hover {
      background-color: #3e8e41;
    }
    </style>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="#">Book Store</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="home.php">Home <span class="sr-only">(current)</span></a>
          </li>
        </ul>
      </div>
    </nav>

    <div class="container" id = "introcontainer">
    <div class="jumbotron">
      
        <h1>Welcome to online CSE bookstore</h1>
        <p class="lead">This site has been made using PHP with MYSQL</p>
        <p>The layout use Bootstrap to make it more responsive. It's just a simple web!</p>
    </div>
      </div>
      <div class="container" id="main">
<!-- Example row of columns -->

<div id="login-box">
    <h1>Login</h1>
    <form action = "dashboard.php" method = "post">
      <input type="text" placeholder="Username" name = "user_name" required>
      <input type="password" placeholder="Password" name = "pass_word" required>
      <p style="text-align:center;">Dont have an Account? <a style = "text-decoration:none;"href="signup.php">Sign UP</a></p>
      <input type="submit" value="Login">
    </form>
  </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>


