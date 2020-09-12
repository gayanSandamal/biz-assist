<?php include_once '../../controllers/connection.php'; ?>

<?php

if (!empty($_POST['check_list'])) {
    foreach ($_POST['check_list'] as $check) {
        $checkstr[] = $check;
    }
    echo $del_invoice_id_list = implode(",", $checkstr);
}

$sql_delete_invoice = "DELETE FROM invoice
WHERE invoice_id IN ($del_invoice_id_list)
AND NOT invoice_id = 0
";

if ($conn->query($sql_delete_invoice) === TRUE) {
    echo "New record created successfully";
    
    $sql_delete_sale_details = "DELETE FROM sale_details
WHERE sale_details_id IN ($del_invoice_id_list)
AND NOT sale_details_id = 0
";

    if ($conn->query($sql_delete_sale_details) === TRUE) {
        echo "New record created successfully";

        $sql_invoice_auto_increment = "ALTER TABLE invoice AUTO_INCREMENT = 1";
        if ($conn->query($sql_invoice_auto_increment) === TRUE) {
            echo "Auto 1";
        } else {
            echo "Error: " . $sql_delete_sale_details . "<br>" . $conn->error;
        }
    
    } else {
        echo "Error: " . $sql_delete_sale_details . "<br>" . $conn->error;
    }
    
} else {
    echo "Error: " . $sql_delete_invoice . "<br>" . $conn->error;
}

$conn->close();
?>