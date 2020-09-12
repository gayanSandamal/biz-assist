<?php

include_once '../inc/baseUrl.php';
include_once '../controllers/connection.php';

$get_null_buy = "
SELECT
p.product_id,
p.product_name
FROM
product p
WHERE p.buying_price = 0
";
$result_get_null_buy = $conn->query($get_null_buy);
if ($result_get_null_buy->num_rows > 0) {
    while ($row = $result_get_null_buy->fetch_assoc()) {
        echo $product_name = '<li><a href="' . $baseUrl . '/views/products/edit.php?id=' . $row["product_id"] . '">'.$row["product_name"].'</a></li>';
    }
}
?>