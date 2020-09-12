<?php include_once '../../controllers/connection.php'; ?>
<?php // include_once '../../controllers/edit-categories.php'; ?>
<?php

$get_brands_to_check = "
SELECT
brand_id,
brand_name
FROM brand
WHERE NOT brand_id = 0
";

$result_get_brands_to_check = $conn->query($get_brands_to_check);

if ($result_get_brands_to_check->num_rows > 0) {
    while ($row = $result_get_brands_to_check->fetch_assoc()) {
        ?>
        <li><a href="<?php echo $row["brand_id"]; ?>"><?php echo $row["brand_name"]; ?></a></li>
        <?php
    }
} else {
    echo "0 results";
}
?>