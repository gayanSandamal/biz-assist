<?php include_once '../../controllers/connection.php'; ?>
<?php // include_once '../../controllers/edit-categories.php'; ?>
<?php

$get_suppliers_to_check = "
SELECT
supplier_id,
supplier_name
FROM suppliers
";

$result_get_suppliers_to_check = $conn->query($get_suppliers_to_check);

if ($result_get_suppliers_to_check->num_rows > 0) {
    while ($row = $result_get_suppliers_to_check->fetch_assoc()) {
        ?>
        <li><a href="<?php echo $row["supplier_id"]; ?>"><?php echo $row["supplier_name"]; ?></a></li>
        <?php
    }
} else {
    echo "0 results";
}
?>