<?php include_once 'connection.php'; ?>

<?php
$user_id = htmlspecialchars($_GET["user_id"]);
$customer_id = htmlspecialchars($_GET["customer_id"]);
$customer_name = htmlspecialchars($_GET["customer_name"]);
$phone = htmlspecialchars($_GET["customer_no"]);
$email = htmlspecialchars($_GET["customer_email"]);
$nic = htmlspecialchars($_GET["customer_nic"]);

$sql_edit_customers = "
UPDATE customer
SET
customer_name = '$customer_name',
phone = '$phone',
email = '$email',
nic = '$nic',
user_id =  '$user_id'
WHERE customer_id = $customer_id";

if ($conn->query($sql_edit_customers) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_edit_customers. "<br>" . $conn->error;
}

$conn->close();
?>