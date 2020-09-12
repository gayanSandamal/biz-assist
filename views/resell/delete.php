<?php include_once '../../controllers/connection.php'; ?>

<?php

$id = $_POST['del_id'];

$sql_delete_invoice = "DELETE FROM invoice
WHERE invoice_id = $id
AND NOT invoice_id = 0
";

if ($conn->query($sql_delete_invoice) === TRUE) {
    echo "New record created successfully";

    $sql_delete_sale_details = "DELETE FROM sale_details
WHERE sale_details_id = $id";

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