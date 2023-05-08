<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "college";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT cust_id, gender, age, income, s_score, profession, experience, f_size FROM `dataset`";
$result = mysqli_query($conn, $sql);

echo "<h1>Shop Customer Data</h1>
<table>";
echo "<tr><th>Customer ID</th><th>Gender</th><th>Age</th><th>Annual Income($)</th><th>Spending-score(1-100)</th><th>Profession</th><th>Work Experience</th><th>Family Size</th></tr>";

if (mysqli_num_rows($result) > 0) {
  while($row = mysqli_fetch_assoc($result)) {
    echo "<tr><td>".$row["cust_id"]."</td><td>".$row["gender"]."</td><td>".$row["age"]."</td><td>".$row["income"]."</td><td>".$row["s_score"]."</td><td>".$row["profession"]."</td><td>".$row["experience"]."</td><td>".$row["f_size"]."</td></tr>";
  }
} else {
  echo "<tr><td colspan='8'>No results found</td></tr>";
}

echo "</table>";

mysqli_close($conn);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <style>
        table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  text-align: left;
  padding: 8px;
  border: 1px solid #ddd;
}

th {
  background-color: #f2f2f2;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}

tr:hover {
  background-color: #ddd;
}
h1{
    text-align:center;
}
    </style>
</head>
<body>

</body>
</html>

