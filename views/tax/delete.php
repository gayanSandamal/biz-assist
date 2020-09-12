<?php include_once '../../controllers/connection.php'; ?>

<?php
$id = $_POST['del_id'];

$sql_delete_tax = "DELETE FROM tax
WHERE tax_id = $id";

if ($conn->query($sql_delete_tax) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_delete_tax."<br>".  $conn->error;
}

$conn->close();
?>