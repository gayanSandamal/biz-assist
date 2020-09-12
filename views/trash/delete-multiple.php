<?php include_once '../../controllers/connection.php'; ?>

<?php

if (!empty($_POST['check_list'])) {
    foreach ($_POST['check_list'] as $check) {
        $checkstr[] = $check;
    }
    echo $del_brand_id_list = implode(",", $checkstr);
}

$sql_delete_brand = "DELETE FROM brand
WHERE brand_id IN ($del_brand_id_list)";

if ($conn->query($sql_delete_brand) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_delete_brand . "<br>" . $conn->error;
}

$conn->close();
?>