<?php include_once 'connection.php'; ?>

<?php
$name = htmlspecialchars($_GET["name"]);
$desc = htmlspecialchars($_GET["desc"]);
$cat = htmlspecialchars($_GET["cat"]);
$brand = htmlspecialchars($_GET["brand"]);
$model = htmlspecialchars($_GET["model"]);
$code = htmlspecialchars($_GET["code"]);
$img_id = htmlspecialchars($_GET["last_img_id"]);
//echo $img_id = !empty($intLng) ? htmlspecialchars($_GET["last_img_id"]) : "0";
$supplier = htmlspecialchars($_GET["supplier"]);
$buy_price = htmlspecialchars($_GET["buy_price"]);
$sell_price = htmlspecialchars($_GET["sell_price"]);
$availability = (htmlspecialchars($_GET["availability"]) == 'on' ? '1' : '0');
$vat_rate = htmlspecialchars($_GET["vat_rate"]);
$offer_type = htmlspecialchars($_GET["offer_type"]);
$offer_amount = htmlspecialchars($_GET["offer_amount"]);
$added_date = date("Y-m-d h-i-s");
$exp = htmlspecialchars($_GET["exp"]);

$sql_insert_product = "INSERT INTO product (product_name, product_desc, product_cat_id, product_brand_id, product_model_no, product_code_no, img_id, supplier_id, buying_price, selling_price, availability, tax_id, offer_type_id, offer_value, product_added_date, product_exp_date)
VALUES ('$name', '$desc', '$cat', '$brand', '$model', '$code', '$img_id', '$supplier', '$buy_price', '$sell_price', '$availability', '$vat_rate', '$offer_type', '$offer_amount', '$added_date', '$exp')";

if ($conn->query($sql_insert_product) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_insert_product . "<br>" . $conn->error;
}

$conn->close();
?>