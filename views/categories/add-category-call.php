<?php include_once '../../controllers/connection.php'; ?>
<?php
$user_id = htmlspecialchars($_GET["user_id"]);
$cat = htmlspecialchars($_GET["cat"]);
$parent_cat = htmlspecialchars($_GET["parent_cat"]);

$sql_insert_cat = "INSERT INTO category (cat_name, parent_cat_id, user_id) VALUES ('$cat', '$parent_cat', '$user_id')";

if ($conn->query($sql_insert_cat) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_insert_cat. "<br>" . $conn->error;
}

$conn->close();
?>