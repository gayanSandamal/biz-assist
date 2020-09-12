<?php include_once '../../controllers/connection.php'; ?>

<?php

$user_id = htmlspecialchars($_GET["user_id"]);
$branch_id = htmlspecialchars($_GET["branch_id"]);
$name = htmlspecialchars($_GET["name"]);
$desc = htmlspecialchars($_GET["desc"]);
$cat = htmlspecialchars($_GET["cat"]);
$brand = htmlspecialchars($_GET["brand"]);
$model = htmlspecialchars($_GET["model"]);
$code = htmlspecialchars($_GET["code"]);
$img_id = htmlspecialchars($_GET["last_img_id"]);
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
$added_date = date("Y-m-d H-i-s");

$exp = htmlspecialchars($_GET["exp"]);
$condition = htmlspecialchars($_GET["condition"]);
$qty = htmlspecialchars($_GET["qty"]);

if (is_numeric($cat) && is_numeric($brand) && is_numeric($supplier)) {
    $sql_insert_product = "
        INSERT INTO product (
	product_name,
	product_desc,
	product_cat_id,
	product_brand_id,
	product_model_no,
	product_code_no,
	img_id,
	supplier_id,
	buying_price,
	expenses,
	selling_price,
	availability,
	tax_id,
	offer_type_id,
	offer_value,
	product_added_date,
	product_exp_date,
	product_condition_id,
	qty,
	discounted,
	user_id,
	branch_id,
        flag
)
VALUES
	(
		'$name',
		'$desc',
		'$cat',
		'$brand',
		'$model',
		'$code',
		'$img_id',
		'$supplier',
		'$buy_price',
		'$expenses',
		'$sell_price',
		'$availability',
		'$vat_rate',
		'$offer_type',
		'$offer_amount',
		'$added_date',
		'$exp',
		'$condition',
		'$qty',
		'$discounted',
		'$user_id',
		'$branch_id',
                '1'
	)
";

    if ($conn->query($sql_insert_product) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql_insert_product . "<br>" . $conn->error;
    }
    
} elseif (!is_numeric($cat) && is_numeric($brand) && is_numeric($supplier)) {
    echo 'cat is alpha';
} elseif (is_numeric($cat) && !is_numeric($brand) && is_numeric($supplier)) {
    echo 'brand is alpha';
} elseif (is_numeric($cat) && is_numeric($brand) && !is_numeric($supplier)) {
    echo 'supplier is alpha';
} elseif (!is_numeric($cat) && !is_numeric($brand) && is_numeric($supplier)) {
    echo 'cat n brand are alpha';
} elseif (is_numeric($cat) && !is_numeric($brand) && !is_numeric($supplier)) {
    echo 'brand n supplier are alpha';
} elseif (!is_numeric($cat) && is_numeric($brand) && !is_numeric($supplier)) {
    echo 'cat n supplier are alpha';
} else {
    echo 'all alphas';
}
$conn->close();
?>