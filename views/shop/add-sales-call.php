<?php include_once '../../controllers/connection.php'; ?>

<?php

$arr = json_decode($_POST['jsonData'], true);
/* return first ID as test */
//echo $arr[0]['id'];
//echo $arr[0];
//print_r($arr);
foreach ($arr as $item) {
    echo $sale_details_id = $item['sales_id'];
    $id = $item['id'];
    $cus_phone = $item['cus_phone'];
    $name = $item['name'];
    $count = $item['count'];
    $single_price = $item['single_price'];
    $single_discount = $item['single_discount'];
    $single_total = $item['single_total'];
    $single_resell_note = $item['single_resell_note'];
    $single_resell_profit = $item['single_resell_profit'];
    $single_resell_buy = $item['single_resell_buy'];
    $single_resell_branch_id = $item['single_resell_branch_id'];

    $sql_insert_product = "INSERT INTO sale_details
        (sale_details_id, product_id,item_count,item_name,item_price,item_discounted_price, alt_notes, alt_profit, alt_buy, alt_branch_id)
        VALUES ('$sale_details_id','$id','$count','$name','$single_price','$single_discount', '$single_resell_note', '$single_resell_profit', '$single_resell_buy', '$single_resell_branch_id')";
    
    $sql_reduce_products = "
        UPDATE product
        SET qty = qty - '$count'
        WHERE product_id = '$id'
        ";
    
    $sql_delete_hold_items = "
        DELETE FROM hold_items
        WHERE customer_mobile_number = '$cus_phone';
        ";
    
    $sql_delete_hold = "
        DELETE FROM hold
        WHERE customer_mobile_number = '$cus_phone';
        ";
    
    
    if ($conn->query($sql_insert_product) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql_insert_product . "<br>" . $conn->error;
    }
    
    if ($conn->query($sql_reduce_products) === TRUE) {
        echo "Reduced successfully";
    } else {
        echo "Error: " . $sql_insert_product . "<br>" . $conn->error;
    }
    
    if ($conn->query($sql_delete_hold_items) === TRUE) {
        echo "Removed successfully";
    } else {
        echo "Error: " . $sql_delete_hold_items . "<br>" . $conn->error;
    }
    
    if ($conn->query($sql_delete_hold) === TRUE) {
        echo "Removed successfully";
    } else {
        echo "Error: " . $sql_delete_hold . "<br>" . $conn->error;
    }
}
    $conn->close();
?>