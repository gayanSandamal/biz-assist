<?php include_once '../../controllers/connection.php'; ?>
<?php
$user_id = htmlspecialchars($_GET["user_id"]);
$brand_name = htmlspecialchars($_GET["brand_name"]);

$sql_insert_brand = "
INSERT
INTO brand (brand_name, user_id)
VALUES('$brand_name', '$user_id')";

if ($conn->query($sql_insert_brand) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_insert_brand. "<br>" . $conn->error;
}

$conn->close();
?>