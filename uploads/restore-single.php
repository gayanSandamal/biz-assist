<?php include_once '../controllers/connection.php'; ?>
<?php include_once '../inc/session.php'; ?>

<?php
$id = $_POST['del_id'];

echo $sql_restore_product = "
UPDATE product
SET flag = '1',
user_id = $user_id_new
WHERE product_id = $id";

if ($conn->query($sql_restore_product) === TRUE) {
    echo "Successfully restoreed";
} else {
    echo "Error: " . $sql_restore_product . "<br>" . $conn->error;
}
$conn->close();
?>