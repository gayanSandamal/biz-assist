<?php include_once 'connection.php'; ?>

<?php
$user_id = htmlspecialchars($_GET["user_id"]);
$id = htmlspecialchars($_GET["id"]);
$cat = htmlspecialchars($_GET["cat"]);
$parent_cat = htmlspecialchars($_GET["parent_cat"]);

$sql_insert_cat = "UPDATE category
SET cat_name = '$cat',
parent_cat_id = '$parent_cat',
user_id = '$user_id'
WHERE cat_id = $id";

if ($conn->query($sql_insert_cat) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_insert_cat. "<br>" . $conn->error;
}

$conn->close();
?>