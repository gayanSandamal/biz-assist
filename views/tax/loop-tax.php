<?php include_once '../../controllers/connection.php'; ?>
<?php // include_once '../../controllers/edit-categories.php'; ?>
<?php

$get_brands_to_check = "
SELECT
tax_id,
tax_rate,
tax_desc
FROM tax
WHERE NOT tax_id = 0
";

$result_get_brands_to_check = $conn->query($get_brands_to_check);

if ($result_get_brands_to_check->num_rows > 0) {
    while ($row = $result_get_brands_to_check->fetch_assoc()) {
        ?>
        <li><a href="<?php echo $row["tax_id"]; ?>"><?php echo $row["tax_rate"] .'% ('. $row["tax_desc"].')'; ?></a></li>
        <?php
    }
} else {
    echo "0 results";
}
?>