<?php include_once '../../controllers/connection.php'; ?>

<?php

$arr = json_decode($_POST['invoice_detailsJsonData'], true);
//print_r($arr);
//foreach ($arr as $arr) {
    $sub_discount = $arr['sub_discount'];
    $sub_total = $arr['sub_total'];
    $cash_span = $arr['cash_span'];
    $balance_span = $arr['balance_span'];
    $invoice_number = $arr['invoice_number'];
    $time = $arr['time'];
    $user_id = $arr['user_id'];
    $cashier = $arr['cashier'];
    $store_location = $arr['store_location'];
    $customer_id = $arr['customer_id'];
    $customer_name = $arr['customer_name'];
    $customer_discount_rate = $arr['customer_discount_rate'];
    $customer_discounted_price = $arr['customer_discounted_price'];

    $sql_insert_product = "INSERT INTO invoice(
invoice_ref_no,
user_id,
invoice_time,
customer_id,
item_total_discount,
item_total_price,
cash_to_change,
balance,
loyalty_offer_rate,
loyalty_offered_price,
temp_customer
)
VALUES(
'$invoice_number',
'$user_id',
'$time',
'$customer_id',
'$sub_discount',
'$sub_total',
'$cash_span',
'$balance_span',
'$customer_discount_rate',
'$customer_discounted_price',
'$customer_name'
)";
    
    if ($conn->query($sql_insert_product) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql_insert_product . "<br>" . $conn->error;
    }
?>