<?php include_once '../../controllers/connection.php'; ?>

<?php

$arr = json_decode($_POST['jsonData'], true);
foreach ($arr as $item) {
    echo $hold_id = $item['hold_id'];
    echo $id = $item['id'];
    echo $name = $item['name'];
    echo $count = $item['count'];
    echo $price = $item['price'];
    echo $discount = $item['discount'];
    echo $single_total = $item['single_total'];

    $sql_insert_product = "INSERT INTO hold_items
        (customer_mobile_number, product_id,item_count,item_name,item_price,item_discounted_price,item_single_total)
        VALUES ('$hold_id','$id','$count','$name','$price','$discount','$single_total')";
    
//    $sql_reduce_products = "
//        UPDATE product
//        SET qty = qty - '$count'
//        WHERE product_id = '$id'
//        ";

    if ($conn->query($sql_insert_product) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $sql_insert_product . "<br>" . $conn->error;
    }
    
//    if ($conn->query($sql_reduce_products) === TRUE) {
//        echo "Reduced successfully";
//    } else {
//        echo "Error: " . $sql_insert_product . "<br>" . $conn->error;
//    }
}
$conn->close();
?>