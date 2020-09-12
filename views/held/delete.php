<?php include_once '../../controllers/connection.php'; ?>

<?php

$id = $_POST['del_id'];

$sql_delete_invoice = "DELETE FROM hold
WHERE customer_mobile_number = $id";

if ($conn->query($sql_delete_invoice) === TRUE) {
    echo "New record created successfully";

    $sql_delete_sale_details = "DELETE FROM hold_items
WHERE customer_mobile_number = $id";

    if ($conn->query($sql_delete_sale_details) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql_delete_sale_details . "<br>" . $conn->error;
    }
} else {
    echo "Error: " . $sql_delete_invoice . "<br>" . $conn->error;
}

$conn->close();
?>