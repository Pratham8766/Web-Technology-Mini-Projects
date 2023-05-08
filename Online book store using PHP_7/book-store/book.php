<?php
  session_start();
  $book_isbn = $_GET['bookisbn'];
  // connecto database
  require_once "db_functions.php";
  require_once "conn.php";
  $conn = db_connect();

  $query = "SELECT * FROM books WHERE book_isbn = '$book_isbn'";
  $result = mysqli_query($conn, $query);
  if(!$result){
    echo "Can't retrieve data " . mysqli_error($conn);
    exit;
  }

  $row = mysqli_fetch_assoc($result);
  if(!$row){
    echo "Empty book";
    exit;
  }

  $title = $row['book_title'];
  // require "home.php";
?>
<!DOCTYPE html>
<html lang="en">
  <html>
    <title>Book description</title>
    <head>
      <style>
        /* CSS for book page */

/* Page header */
header {
  background-color: #333;
  color: #fff;
  padding: 10px;
}

/* Book image */
.img-thumbnail {
  max-width: 100%;
  height: auto;
  margin-bottom: 10px;
}

/* Book details table */
table {
  width: 100%;
  max-width: 600px;
  margin-bottom: 20px;
}

table td {
  padding: 5px;
}

/* Purchase button */
input[type="submit"] {
  background-color: #337ab7;
  border-color: #2e6da4;
  color: #fff;
  padding: 5px 10px;
  font-size: 16px;
  border-radius: 3px;
  cursor: pointer;
}

/* Hover effect on purchase button */
input[type="submit"]:hover {
  background-color: #2e6da4;
  border-color: #23527c;
}

/* Breadcrumb trail */
.breadcrumb {
  background-color: #f5f5f5;
  padding: 8px 15px;
  margin-bottom: 20px;
  list-style: none;
  border-radius: 4px;
}

.breadcrumb > li {
  display: inline-block;
}

.breadcrumb > li + li:before {
  content: ">";
  padding: 0 5px;
  color: #ccc;
}

/* Book description */
.book-description {
  margin-bottom: 20px;
}

.book-description p {
  font-size: 16px;
  line-height: 1.5;
}

/* Book title */
h2.book-title {
  font-size: 24px;
  margin-bottom: 10px;
}

/* Book author */
h3.book-author {
  font-size: 18px;
  margin-top: 0;
}

/* Container for book image and details */
.book-details {
  display: flex;
  flex-wrap: wrap;
}

/* Column for book image */
.book-image {
  width: 30%;
  margin-right: 20px;
}

/* Column for book details */
.book-details-right {
  width: 70%;
}

/* Responsive design for small screens */
@media (max-width: 767px) {

  /* Columns for book image and details stack */
  .book-details {
    flex-direction: column;
  }

  .book-image {
    margin-right: 0;
    margin-bottom: 20px;
    width: 100%;
  }

  .book-details-right {
    width: 100%;
  }

  /* Center book image */
  .book-image img {
    display: block;
    margin: 0 auto;
  }
}

      </style>
    </head>

 
      <!-- Example row of columns -->
      <p class="lead" style="margin: 25px 0"><a href="books.php">Books</a> > <?php echo $row['book_title']; ?></p>
      <div class="row">
        <div class="col-md-3 text-center">
          <img class="img-responsive img-thumbnail" src="./images/<?php echo $row['book_image']; ?>">
        </div>
        <div class="col-md-6">
          <h4>Book Description</h4>
          <p><?php echo $row['book_descr']; ?></p>
          <h4>Book Details</h4>
          <table class="table">
          	<?php foreach($row as $key => $value){
              if($key == "book_descr" || $key == "book_image" || $key == "publisherid" || $key == "book_title"){
                continue;
              }
              switch($key){
                case "book_isbn":
                  $key = "ISBN";
                  break;
                case "book_title":
                  $key = "Title";
                  break;
                case "book_author":
                  $key = "Author";
                  break;
                case "book_price":
                  $key = "Price";
                  break;
              }
            ?>
            <tr>
              <td><?php echo $key; ?></td>
              <td><?php echo $value; ?></td>
            </tr>
            <?php 
              } 
              if(isset($conn)) {mysqli_close($conn); }
            ?>
          </table>
          <form method="post" action="cart.php">
            <input type="hidden" name="bookisbn" value="<?php echo $book_isbn;?>">
            <input type="submit" value="Purchase / Add to cart" name="cart" class="btn btn-primary">
          </form>
       	</div>
      </div>

      </html>