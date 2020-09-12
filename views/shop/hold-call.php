<?php include_once '../../controllers/connection.php'; ?>

<?php
$arr = json_decode($_POST['jsonData'], true);
//foreach ($arr as $item) {
$mob_num = $arr['mob_num'];
$cust_name = $arr['cust_name'];

$sql_insert_hold = "INSERT INTO hold (customer_mobile_number, customer_name) VALUES ('$mob_num', '$cust_name')";

if ($conn->query($sql_insert_hold) === TRUE) {
echo "New record created successfully";
} else {
echo "Error: " . $sql_insert_hold . "<br>" . $conn->error;
}

$conn->close();
?>