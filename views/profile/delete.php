<?php include_once '../../controllers/connection.php'; ?>

<?php
$id = $_POST['del_id'];

$sql_delete_cat = "DELETE FROM category
WHERE cat_id = $id";
$sql_delete_parent_cat = "DELETE FROM
category
WHERE parent_cat_id = $id";

if (($conn->query($sql_delete_cat) === TRUE) AND ($conn->query($sql_delete_parent_cat) === TRUE)) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_delete_cat. "<br>" .$sql_delete_parent_cat."<br>".  $conn->error;
}

$conn->close();
?>