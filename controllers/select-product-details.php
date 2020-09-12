<?php
$add_products_cat = "
SELECT 
cat_id,
cat_name
FROM category
";
$add_products_brand = "
SELECT 
brand_id,
brand_name
FROM brand
";
$add_products_supplier = "
SELECT
supplier_id,
supplier_name
FROM suppliers
";
$add_products_tax = "
SELECT 
tax_id,
tax_rate,
tax_desc
FROM tax
";
$add_products_offer = "
SELECT 
offer_type_id,
offer_type_name
FROM offer_type
";
$add_products_condition = "
SELECT 
product_condition_id,
product_condition_state
FROM product_condition
";

$result_cat = $conn->query($add_products_cat);
$result_brand = $conn->query($add_products_brand);
$result_supplier = $conn->query($add_products_supplier);
$result_tax = $conn->query($add_products_tax);
$result_offer = $conn->query($add_products_offer);
$result_condition = $conn->query($add_products_condition);
?>