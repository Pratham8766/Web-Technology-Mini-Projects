<?php
if(isset($_POST['units'])) {
    $units = $_POST['units'];
    $total = 0;
    if($units <= 50) {
        $total = $units * 3.50;
    } 
    elseif($units <= 150) {
        $total = 50 * 3.50 + ($units - 50) * 4.00;
    } 
    elseif($units <= 250) {
        $total = 50 * 3.50 + 100 * 4.00 + ($units - 150) * 5.20;
    } 
    else {
        $total = 50 * 3.50 + 100 * 4.00 + 100 * 5.20 + ($units - 250) * 6.50;
    }
}
?>
<!DOCTYPE html>
<html>
  <head>
    <title>Electricity Bill Generator</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>
    <script
      src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"
    >
      </script>
      <script>
      $(document).ready(function(){
      $('#billForm').submit(function(event){
      event.preventDefault();
      var units = parseInt($('#units').val());
      if(units <= 0 || isNaN(units)) {
      alert('Please enter a valid number of units consumed.');
      return;
      }
      this.submit();
      });
      });
    </script>
    <style>
      h2{
        text-align:center;
        padding-top:30px;
      }
      #calculate-btn{
        color: white;
        background-color: blueviolet;
        border: none;
      }
    </style>
  </head>
  <body>
  <div class="container">
        <h2>Electricity Bill Generator</h2>
        <h4 class="my-4">Generate your bill here</h4>
        <form method="post" action="electricity_bill.php">
            <div class="form-group my-3">
                <label for="units">Enter Total Units Consumed:</label>
                <input type="number" class="form-control my-3" id="units" name="units" required>
            </div>
            <button type="submit" class="btn btn-primary" id = "calculate-btn">Calculate</button>
        </form>
        <br>
        <?php if(isset($total)) { ?>
        <div class="alert alert-success">
            <strong>Your Total Bill:</strong> Rs.
            <?php echo $total; ?>
        </div>
        <?php } ?>
    </div>
  </body>
</html>



