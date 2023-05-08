<!DOCTYPE html>
<html>
<head>
	<title>Registration Page</title>
	<link rel="stylesheet" type="text/css" href="style.css">
    <style>
        body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
}

.container {
	background-color: #fff;
	padding: 20px;
	margin: auto;
	margin-top: 50px;
	width: 50%;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}

h1 {
	text-align: center;
	margin-bottom: 20px;
}

label {
	display: block;
	margin-bottom: 5px;
}

input[type="text"],
input[type="email"],
input[type="password"] {
	padding: 10px;
	border-radius: 5px;
	margin-bottom: 20px;
	width: 100%;
}

input[type="submit"] {
	background-color: #4CAF50;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #3e8e41;
}

    </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
	<div class="container">
        <form action="signup_submission.php" method="post">
            <h1 style = "text-align:center;">Register</h1>
  <div class="form-group">
    <label for="exampleInputEmail1">Username</label>
    <input type="text" class="form-control" id="username" aria-describedby="emailHelp" name = "user_name">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="password"  name = "pass_word">
  </div>
  <div class="form-group">
    <label for="exampleConfirmInputPassword1">Confirm Password</label>
    <input type="password" class="form-control" id="confirmPassword" name = "confirm_password">
  </div>
  <button type="submit" class="btn btn-primary">Register</button>
</form>
	</div>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

		<script>
    const form = document.querySelector('form');
    const usernameField = document.querySelector('#username');
    const passwordField = document.querySelector('#password');
    const confirmPasswordField = document.querySelector('#confirmPassword');

    form.addEventListener('submit', function(event) {
        event.preventDefault();

        if (usernameField.value.length < 6) {
            alert('Username must be at least 6 characters long');
            return;
        }

        if (passwordField.value.length < 8) {
            alert('Password must be at least 8 characters long');
            return;
        }
        if (passwordField.value !== confirmPasswordField.value) {
            alert('Passwords do not match');
            return;
        }
        form.submit();
    });
</script>

</body>
</html>

