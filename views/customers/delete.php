<?php include_once '../../controllers/connection.php'; ?>

<?php
$id = $_POST['del_id'];

$sql_delete_customer = "DELETE FROM customer
WHERE customer_id = $id";

if ($conn->query($sql_delete_customer) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_delete_customer."<br>".  $conn->error;
}

$conn->close();
?>