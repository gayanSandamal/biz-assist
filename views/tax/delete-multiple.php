<?php include_once '../../controllers/connection.php'; ?>

<?php

if (!empty($_POST['check_list'])) {
    foreach ($_POST['check_list'] as $check) {
        $checkstr[] = $check;
    }
    echo $del_tax_id_list = implode(",", $checkstr);
}

$sql_delete_tax = "DELETE FROM tax
WHERE tax_id IN ($del_tax_id_list)";

if ($conn->query($sql_delete_tax) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_delete_tax . "<br>" . $conn->error;
}

$conn->close();
?>