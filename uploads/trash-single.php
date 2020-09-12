<?php include_once '../controllers/connection.php'; ?>
<?php include_once '../inc/session.php'; ?>

<?php
$id = $_POST['del_id'];

echo $sql_trash_product = "
UPDATE product
SET flag = '0',
user_id = $user_id_new
WHERE product_id = $id";

if ($conn->query($sql_trash_product) === TRUE) {
    echo "Successfully trashed";
} else {
    echo "Error: " . $sql_trash_product . "<br>" . $conn->error;
}
$conn->close();
?>