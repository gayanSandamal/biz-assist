<?php include_once '../../controllers/connection.php'; ?>

<?php

if (!empty($_POST['check_list'])) {
    foreach ($_POST['check_list'] as $check) {
        $checkstr[] = $check;
    }
    echo $sql_delete_product_id = implode(",", $checkstr);
}

$sql_delete_product = "DELETE FROM product
WHERE product_id IN ($sql_delete_product_id)";

if ($conn->query($sql_delete_product) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_delete_product . "<br>" . $conn->error;
}

$conn->close();
?>