<?php

include_once '../controllers/connection.php';
$query = "
    SELECT EXISTS(
    SELECT * FROM
    product p
    WHERE p.buying_price = 0
    ) AS zero
";
$result_query = $conn->query($query);
if ($result_query->num_rows > 0) {
    while ($row = $result_query->fetch_assoc()) {
        $zero = $row["zero"];
    }
} else {
    
}
//echo $rows;

if ($zero == 1) {
    echo "zero";
} else {
    echo "ok";
}
?>