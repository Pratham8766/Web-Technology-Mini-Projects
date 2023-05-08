<?php
function getAll($conn){
    $query = "SELECT * from books ORDER BY book_isbn DESC";
    $result = mysqli_query($conn, $query);
    if(!$result){
        echo "Can't retrieve data " . mysqli_error($conn);
        exit;
    }
    return $result;
}
?>