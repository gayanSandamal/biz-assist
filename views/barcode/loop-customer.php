<?php include_once '../../controllers/connection.php'; ?>
<?php // include_once '../../controllers/edit-categories.php'; ?>
<?php

$get_customers_to_check = "
SELECT
customer_id,
customer_name,
phone
FROM customer
WHERE NOT customer_id = 0
";

$result_get_customers_to_check = $conn->query($get_customers_to_check);

if ($result_get_customers_to_check->num_rows > 0) {
    while ($row = $result_get_customers_to_check->fetch_assoc()) {
        ?>
<li><a href="<?php echo $row["customer_id"]; ?>"><?php echo $row["phone"]; ?> <span>(<?php echo $row["customer_name"]; ?>)</span></a></li>
        <?php
    }
} else {
    echo "0 results";
}
?>