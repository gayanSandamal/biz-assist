<?php include_once '../../controllers/connection.php'; ?>
<?php
$get_categories_to_check = "
SELECT
cat_id,
cat_name
FROM category
WHERE NOT cat_id = 0
ORDER BY cat_name
";
$result_get_categories_to_check = $conn->query($get_categories_to_check);
?>
<option value="0" class="init">Don't add a parent category</option>
<?php
if ($result_get_categories_to_check->num_rows > 0) {
    while ($row = $result_get_categories_to_check->fetch_assoc()) {
        ?>
        <option value="<?php echo $row["cat_id"]; ?>"><?php echo $row["cat_name"]; ?></option>
        <?php
    }
} else {
    echo "0 results";
}
?>