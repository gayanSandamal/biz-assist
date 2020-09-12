<?php include_once '../../controllers/connection.php'; ?>

<?php

$user_id = htmlspecialchars($_GET["user_id"]);
$branch_id = htmlspecialchars($_GET["branch_id"]);
$id = htmlspecialchars($_GET["id"]);
$name = htmlspecialchars($_GET["name"]);
$desc = htmlspecialchars($_GET["desc"]);
$cat = htmlspecialchars($_GET["cat"]);
$brand = htmlspecialchars($_GET["brand"]);
$model = htmlspecialchars($_GET["model"]);
$code = htmlspecialchars($_GET["code"]);
$img_id = htmlspecialchars($_GET["last_img_id"]);
//echo $img_id = !empty($intLng) ? htmlspecialchars($_GET["last_img_id"]) : "0";
$supplier = htmlspecialchars($_GET["supplier"]);
$buy_price = htmlspecialchars($_GET["buy"]);
$expenses = htmlspecialchars($_GET["expenses"]);
$sell_price = htmlspecialchars($_GET["sell"]);
$availability = (htmlspecialchars($_GET["availability"]) == 'on' ? '1' : '0');
$vat_rate = htmlspecialchars($_GET["tax"]);
$offer_type = htmlspecialchars($_GET["offer_type"]);
$offer_amount = htmlspecialchars($_GET["offer_amount"]);
$discounted = htmlspecialchars($_GET["discounted"]);

date_default_timezone_set('Asia/Calcutta');
$added_date = date("Y-m-d h-i-s");

$exp = htmlspecialchars($_GET["exp"]);
$condition = htmlspecialchars($_GET["condition"]);
$qty = htmlspecialchars($_GET["qty"]);

$sql_insert_product = "UPDATE product
SET product_name = '$name',
product_desc = '$desc',
product_cat_id = '$cat',
product_brand_id = '$brand',
product_model_no = '$model',
product_code_no = '$code',
img_id = '$img_id',
supplier_id = '$supplier',
buying_price = '$buy_price',
expenses = '$expenses',
selling_price = '$sell_price',
availability = '$availability',
tax_id = '$vat_rate',
offer_type_id = '$offer_type',
offer_value = '$offer_amount',
product_added_date = '$added_date',
product_exp_date = '$exp',
product_condition_id = '$condition',
qty = '$qty',
discounted = '$discounted',
user_id = '$user_id',
branch_id = '$branch_id'
WHERE product_id = $id";

if ($conn->query($sql_insert_product) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_insert_product . "<br>" . $conn->error;
}
$conn->close();
?>