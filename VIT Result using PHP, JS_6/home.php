<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Result Assignment</title>
    <style>
        body {
  background-color: #f9f9f9;
  font-family: Arial, sans-serif;
}

.container {
  margin: 50px auto;
  max-width: 500px;
  padding: 20px;
  background-color: #fff;
  box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
  border-radius: 10px;
}

h1 {
  text-align: center;
  color: #444;
  margin-top: 0;
  margin-bottom: 30px;
}

form {
  display: flex;
  flex-direction: column;
}

label {
  margin-bottom: 10px;
  color: #444;
  font-weight: bold;
  letter-spacing: 1px;
}

input[type="text"] {
  padding: 15px;
  font-size: 16px;
  border: none;
  border-radius: 5px;
  margin-bottom: 25px;
  background-color: #f5f5f5;
  box-shadow: inset 0 1px 3px rgba(0,0,0,0.1);
}

input[type="submit"] {
  background-color: white;
  border: 1px solid blueviolet;
  padding: 15px 30px;
  font-size: 16px;
  border-radius: 5px;
  cursor: pointer;
  color: blueviolet;
  text-transform: uppercase;
  letter-spacing: 1px;
}

input[type="submit"]:hover {
  background-color: blueviolet;
  color:white;
}

    </style>
</head>
<body>
    <div class="container">
		<h1>Result Generator</h1>
		<form method="post" onsubmit="return formValidation()">
			<label>Enter your PRN Number:</label>
			<input type="text" name="prnno" id="prnno" required>
			<input type="submit" name="OK" value="Submit">
		</form>
        <?php
        if(isset($_POST['OK'])){
            $prnno = $_POST['prnno'];
        
            header("Location:generate.php?prnno=$prnno");
            exit();
        }
        ?>
	</div>

  <script>
		function formValidation() {
			var prnno = document.getElementById("prnno").value;
			if (!/^\d{8}$/.test(prnno)) {
				alert("Please enter a valid PRN number with 8 digits");
				return false;
			}
			return true;
		}
	</script>
</body>
</html>