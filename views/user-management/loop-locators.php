<?php include_once '../../controllers/connection.php'; ?>
<?php
$get_locators = "
SELECT
b.branch_id,
b.branch_name,
b.branch_location
FROM
branch b
";
$result_get_locators = $conn->query($get_locators);
?>
<!--<option value="0" class="init">Don't add a parent category</option>-->
    <?php
    if ($result_get_locators->num_rows > 0) {
        while ($row = $result_get_locators->fetch_assoc()) {
            ?>
            <option value="<?php echo $row["branch_id"]; ?>"><?php echo $row["branch_name"] . "(" . $row["branch_location"] . ")"; ?></option>
            <?php
        }
    } else {
        echo "0 results";
    }
    ?>