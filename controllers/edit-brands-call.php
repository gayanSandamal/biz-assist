<?php include_once 'connection.php'; ?>

<?php
$user_id = htmlspecialchars($_GET["user_id"]);
$brand_id = htmlspecialchars($_GET["brand_id"]);
$brand_name = htmlspecialchars($_GET["brand_name"]);

$sql_insert_brand = "UPDATE brand
SET brand_name = '$brand_name',
user_id = '$user_id'
WHERE brand_id = $brand_id";

if ($conn->query($sql_insert_brand) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_insert_brand. "<br>" . $conn->error;
}

$conn->close();
?>