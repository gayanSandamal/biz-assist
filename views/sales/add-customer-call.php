<?php include_once '../../controllers/connection.php'; ?>
<?php
$customer_name = htmlspecialchars($_GET["customer_name"]);
$customer_no = htmlspecialchars($_GET["customer_no"]);
$customer_nic = htmlspecialchars($_GET["customer_nic"]);
$supplier_email = htmlspecialchars($_GET["customer_email"]);
date_default_timezone_set('Asia/Calcutta');
$registered_date = date("Y-m-d h-i-s");

$sql_insert_customer = "
INSERT
INTO customer(
customer_name,
phone,
nic,
email,
registered_date
)
VALUES(
'$customer_name',
'$customer_no',
'$customer_nic',
'$supplier_email',
'$registered_date'
)
";

if ($conn->query($sql_insert_customer) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_insert_customer. "<br>" . $conn->error;
}

$conn->close();
?>