<?php include_once '../../controllers/connection.php'; ?>

<?php
$id = $_POST['del_id'];

$sql_delete_supp = "DELETE FROM suppliers
WHERE supplier_id = $id";

if ($conn->query($sql_delete_supp) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_delete_supp."<br>".  $conn->error;
}

$conn->close();
?>