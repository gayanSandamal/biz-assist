<?php include_once '../../controllers/connection.php'; ?>

<?php
//$id = $_POST['del_id'];

if (!empty($_POST['check_list'])) {
    foreach ($_POST['check_list'] as $check) {
//        echo $check.',';
        $checkstr[] = $check;
        //echoes the value set in the HTML form for each checked checkbox.
        //so, if I were to check 1, 3, and 5 it would echo value 1, value 3, value 5.
        //in your case, it would echo whatever $row['Report ID'] is equivalent to.
    }
    echo $del_cat_id_list = implode(",", $checkstr);
}

$sql_delete_cat = "DELETE FROM category
WHERE cat_id IN ($del_cat_id_list)";

if ($conn->query($sql_delete_cat) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_delete_cat . "<br>" . $conn->error;
}

$conn->close();
?>