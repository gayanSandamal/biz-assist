<?php include_once '../../controllers/connection.php'; ?>

<?php

if (!empty($_POST['check_list'])) {
    foreach ($_POST['check_list'] as $check) {
        $checkstr[] = $check;
    }
    echo $del_customer_id_list = implode(",", $checkstr);
}

$sql_delete_customer = "DELETE FROM customer
WHERE customer_id IN ($del_customer_id_list)";

if ($conn->query($sql_delete_customer) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_delete_customer . "<br>" . $conn->error;
}

$conn->close();
?>