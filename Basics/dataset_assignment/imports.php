<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "college";

$csvfile = "Customers.csv";
$delimiter = ",";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (($handle = fopen($csvfile, "r")) !== FALSE) {
    while (($data = fgetcsv($handle, 1000, $delimiter)) !== FALSE) {
        $cust_id = mysqli_real_escape_string($conn, $data[0]);
        $gender = mysqli_real_escape_string($conn, $data[1]);
        $age = mysqli_real_escape_string($conn, $data[2]);
        $income = mysqli_real_escape_string($conn, $data[3]);
        $s_score = mysqli_real_escape_string($conn, $data[4]);
        $profession = mysqli_real_escape_string($conn, $data[5]);
        $experience = mysqli_real_escape_string($conn, $data[6]);
        $f_size = mysqli_real_escape_string($conn, $data[7]);

        $sql = "INSERT INTO dataset (cust_id, gender, age, income, s_score, profession, experience, f_size) 
                VALUES ('$cust_id', '$gender', '$age', '$income', '$s_score', '$profession', '$experience', '$f_size')";

        if ($conn->query($sql) === TRUE) {
            echo "Record inserted successfully";
        } else {
            echo "Error inserting record: " . $conn->error;
        }
    }

    fclose($handle);
}

$conn->close();

?>


