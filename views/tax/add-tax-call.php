<?php include_once '../../controllers/connection.php'; ?>
<?php
$user_id = htmlspecialchars($_GET["user_id"]);
$tax_rate = htmlspecialchars($_GET["tax_rate"]);
$tax_desc = htmlspecialchars($_GET["tax_desc"]);

$sql_insert_tax = "
INSERT INTO tax
(tax_rate, tax_desc, user_id)
VALUES ('$tax_rate', '$tax_desc', '$user_id')
";

if ($conn->query($sql_insert_tax) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_insert_tax. "<br>" . $conn->error;
}

$conn->close();
?>