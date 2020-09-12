<?php include_once '../../controllers/connection.php'; ?>
<?php
$user_id = htmlspecialchars($_GET["user_id"]);
$supplier_name = htmlspecialchars($_GET["supplier_name"]);
$supplier_no = htmlspecialchars($_GET["supplier_no"]);
$supplier_email = htmlspecialchars($_GET["supplier_email"]);

$sql_insert_supp = "
INSERT
INTO suppliers(
supplier_name,
supplier_contact_email,
supplier_phone_no,
user_id
)
VALUES(
'$supplier_name',
'$supplier_email',
'$supplier_no',
'$user_id'
)
";

if ($conn->query($sql_insert_supp) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_insert_supp. "<br>" . $conn->error;
}

$conn->close();
?>