<?php include_once 'connection.php'; ?>

<?php
$user_id = htmlspecialchars($_GET["user_id"]);
$supplier_id = htmlspecialchars($_GET["supplier_id"]);
$supplier_name = htmlspecialchars($_GET["supplier_name"]);
$supplier_phone_no = htmlspecialchars($_GET["supplier_no"]);
$supplier_contact_email = htmlspecialchars($_GET["supplier_email"]);

$sql_edit_supp = "
UPDATE suppliers
SET
supplier_name = '$supplier_name',
supplier_contact_email = '$supplier_contact_email',
supplier_phone_no = '$supplier_phone_no',
user_id = '$user_id'
WHERE supplier_id = $supplier_id";

if ($conn->query($sql_edit_supp) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_edit_supp. "<br>" . $conn->error;
}

$conn->close();
?>