<?php include_once '../../controllers/connection.php'; ?>

<?php

if (!empty($_POST['check_list'])) {
    foreach ($_POST['check_list'] as $check) {
        $checkstr[] = $check;
    }
    echo $del_supp_id_list = implode(",", $checkstr);
}

$sql_delete_supp = "DELETE FROM suppliers
WHERE supplier_id IN ($del_supp_id_list)";

if ($conn->query($sql_delete_supp) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_delete_supp . "<br>" . $conn->error;
}

$conn->close();
?>