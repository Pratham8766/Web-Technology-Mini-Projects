<!DOCTYPE html>
<html>
<head>
    <title>Marksheet</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<img align="right" src="logo.jpg" width="110" height="110" />
<center><h1>Provisional Marksheet</h1>
    <p>Bansilal Ramnath Agarwal Charitable Trust's<br>
        <b>Vishwakarma Institute of Technology, Pune</b><br>(An Autonomous Institute affiliated to Savitribai Phule Pune University)</center>  
</p>
<hr>
<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "college";

    $conn = mysqli_connect($servername, $username, $password, $dbname);

    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    if(isset($_GET['prnno'])) {
        $prnno = $_GET['prnno'];

        $sql = "SELECT * FROM result WHERE prn = '$prnno'";

        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) > 0) {
            while($row = mysqli_fetch_assoc($result)) {
                $rollno=$row['roll_no'];
                $name = $row['name'];
                $mothersname = $row['mother_name'];
                $branch = $row['branch'];
                $class = $row['class'];
                $year = $row['year_of_exam'];
                $semester = $row['semester'];
                $wt_mse = $row['wt_mse'];
                $daa_mse = $row['daa_mse'];
                $cd_mse = $row['cd_mse'];
                $cc_mse = $row['cc_mse'];
                $wt_ese = $row['wt_ese'];
                $daa_ese = $row['daa_ese'];
                $cd_ese = $row['cd_ese'];
                $cc_ese = $row['cc_ese'];

                $total_mse = $wt_mse + $daa_mse + $cd_mse + $cc_mse;
                $total_ese = $wt_ese + $daa_ese + $cd_ese + $cc_ese;
                $total_marks = (($total_mse * 0.3) + ($total_ese * 0.7));
                $percentage = (($total_marks / 400) * 100);
                $sgpa =(($percentage+7.5) / 10);

                if($sgpa >= 10) {
                    $sgpa=10;
                    $grade = 'A+';
                } elseif($sgpa >= 9) {
                    $grade = 'A';
                } elseif($sgpa >= 8) {
                    $grade = 'B+';
                } elseif($sgpa >= 7) {
                    $grade = 'B';
                } elseif($sgpa >= 6) {
                    $grade = 'C+';
                } elseif($sgpa >= 5) {
                    $grade = 'C';
                } elseif($sgpa >= 4) {
                    $grade = 'D';
                } else {
                    $grade = 'F';
                }
            }
        }
        else {
            exit("No results found for PRN number $prnno");
        }
    }
?>

<div class="mark-sheet">
    <h2 style = "text-align:center;">Result</h2>
  <div class="details">
    <div class="detail">
      <span>Roll No.:</span>
      <span><?php echo $rollno?></span>
    </div>
    <div class="detail">
      <span>PRN:</span>
      <span><?php echo $prnno ?></span>
    </div>
    <div class="detail">
      <span>Name:</span>
      <span><?php echo $name ?></span>
    </div>
    <div class="detail">
      <span>Mother's Name:</span>
      <span><?php echo $mothersname ?></span>
    </div>
    <div class="detail">
      <span>Branch:</span>
      <span><?php echo $branch ?></span>
    </div>
    <div class="detail">
      <span>Class:</span>
      <span><?php echo $class ?></span>
    </div>
    <div class="detail">
      <span>Year of Exam:</span>
      <span><?php echo $year ?></span>
    </div>
    <div class="detail">
      <span>Semester:</span>
      <span><?php echo $semester ?></span>
    </div>
</div>


<table>
    <tr>
      <th>Subject</th>
      <th>MSE</th>
      <th>ESE</th>
    </tr>
    <tr>
      <th class = "subjects">WT</th>
      <td><?php echo $wt_mse ?></td>
      <td><?php echo $wt_ese ?></td>
    </tr>
    <tr>
      <th class = "subjects">DAA</th>
      <td><?php echo $daa_mse ?></td>
      <td><?php echo $daa_ese ?></td>
    </tr>
    <tr>
      <th class = "subjects">CD</th>
      <td><?php echo $cd_mse ?></td>
      <td><?php echo $cd_ese ?></td>
    </tr>
    <tr>
      <th class = "subjects">CC</th>
      <td><?php echo $cc_mse ?></td>
      <td><?php echo $cc_ese ?></td>
    </tr>
    <tr>
        <th class = "subjects">Total</th>
        <td><?php echo $total_mse ?></td>
        <td><?php echo $total_ese ?></td>
    </tr>
</table>
<h3 style = "text-align:center;"> Total Percentage: <?php echo $percentage ?></h3>
<h3 style = "text-align:center;"> SGPA: <?php echo $sgpa ?></h3>
<h3 style = "text-align:center;"> Grade: <?php echo $grade ?></h3>

<h3>Grade Points:</h3>
    <div class="grades">
        <p>
            A+ : (Excellent / Outstanding): 10 <br>
            B+ : (Good): 8 <br>
            C+ : (Above Average): 6 <br>
            D : (Below Average): 4 <br>
            XX : (Detained): 0 <br>
            P : (Audit Course Passed): 0 <br>
        </p>
        <p>
            A : (Very Good): 9 <br>
            B : (Fair): 7 <br>
            C : (Average): 5 <br>
            F : (Fail): 0 <br>
            II : (Absent): 0 <br>
            NP : (Audit Course Not Passed): 0
        </p>
    </div>

    <div class="coe">
        <img class="coe_sign" src="sign.jpg">
    </div>
    <h3 class="coe">Controller of Examinations</h3>
</body>

</body>
</html>