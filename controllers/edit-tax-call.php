<?php include_once 'connection.php'; ?>

<?php
$user_id = htmlspecialchars($_GET["user_id"]);
$tax_id = htmlspecialchars($_GET["tax_id"]);
$tax_rate = htmlspecialchars($_GET["tax_rate"]);
$tax_desc = htmlspecialchars($_GET["tax_desc"]);

$sql_insert_tax = "UPDATE tax
SET tax_rate = '$tax_rate',
    tax_desc = '$tax_desc',
    user_id = '$user_id'
WHERE tax_id = $tax_id";

if ($conn->query($sql_insert_tax) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_insert_tax. "<br>" . $conn->error;
}

$conn->close();
?>