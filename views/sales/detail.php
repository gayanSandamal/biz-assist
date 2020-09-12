<?php
include_once '../../inc/baseUrl.php';
include_once '../../controllers/connection.php';

$id = $_GET['del_id'];
$get_sale_detail = "
SELECT
s.sale_details_id,
p.product_code_no,
p.product_name,
p.product_model_no,
c.cat_name,
s.item_count,
s.item_price,
s.item_discounted_price,
s.alt_notes,
s.alt_profit
FROM
sale_details s
LEFT JOIN product p
ON p.product_id = s.product_id
LEFT JOIN category c
ON c.cat_id = p.product_cat_id
WHERE sale_details_id = $id
";
$result_get_sale_detail = $conn->query($get_sale_detail);
?>
<div class="table-responsive">
    <table>
        <thead>
            <tr>
                <th>#</th>
                <th>Code no</th>
                <th>Name</th>
                <th>Model no</th>
                <th>Category</th>
                <th>Code no</th>
                <th>Count</th>
                <th>Price</th>
                <th>Discounted price</th>
                <th>Reselling notes</th>
                <th>Reselling profit</th>
            </tr>
        </thead>
        <tbody>
            <?php
            if ($result_get_sale_detail->num_rows > 0) {
                $numOrder = 1;
                while ($row = $result_get_sale_detail->fetch_assoc()) {
                    ?>
                    <tr>
                        <td><?php echo ($numOrder++); ?></td>
                        <td><?php echo $row["product_code_no"]; ?></td>
                        <td><?php echo $row["product_name"]; ?></td>
                        <td><?php echo $row["product_model_no"]; ?></td>
                        <td><?php echo $row["product_code_no"]; ?></td>
                        <td><?php echo $row["cat_name"]; ?></td>
                        <td><?php echo $row["item_count"]; ?></td>
                        <td><?php echo $row["item_price"]; ?></td>
                        <td><?php echo $row["item_discounted_price"]; ?></td>
                        <td><?php echo $row["alt_notes"]; ?></td>
                        <td><?php echo $row["alt_profit"]; ?></td>
                    </tr>
                    <?php
                }
            } else {
                echo "0 results";
            }
            ?>
        </tbody>
    </table>
</div>