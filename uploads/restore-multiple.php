<?php include_once '../controllers/connection.php'; ?>
<?php include_once '../inc/session.php'; ?>

<?php

date_default_timezone_set('Asia/Calcutta');
$deleted_date = date("Y-m-d H-i-s");

if (!empty($_POST['check_list'])) {
    foreach ($_POST['check_list'] as $check) {
        $checkstr[] = $check;
    }
    $sql_delete_product_id = implode(",", $checkstr);
}

$sql_delete_product = "
    UPDATE product
    SET flag = '1',
    user_id = $user_id_new
    WHERE product_id IN ($sql_delete_product_id)
";
if ($conn->query($sql_delete_product) === TRUE) {
    echo "Successfully trashed";
} else {
    echo "Error: " . $sql_delete_product . "<br>" . $conn->error;
}
?>