<?php include_once '../../controllers/connection.php'; ?>

<?php
$id = $_POST['del_id'];

$sql_delete_brand = "DELETE FROM brand
WHERE brand_id = $id";

if ($conn->query($sql_delete_brand) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_delete_brand."<br>".  $conn->error;
}

$conn->close();
?>