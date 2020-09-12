<?php include_once '../../controllers/connection.php'; ?>
<?php
$customer_num = htmlspecialchars($_GET["customer_num"]);
$retreive_cart = "
SELECT
customer_mobile_number,
product_id,
item_count,
item_name,
item_price,
item_discounted_price,
item_single_total
FROM hold_items
WHERE customer_mobile_number = '$customer_num'
";

$result_retreive_cart = $conn->query($retreive_cart);
if ($result_retreive_cart->num_rows > 0) {
    $numOrder = 1;
    while ($row = $result_retreive_cart->fetch_assoc()) {
        ?>
        <tr id="<?php echo $row["product_id"]; ?>" phone="<?php echo $row["customer_mobile_number"]; ?>">
            <td style="width:10px; padding: 10px 0px;"><input class="invoice-cart-single-count" type="number" value="<?php echo $row["item_count"]; ?>" onchange="calc_qty()" onkeyup="calc_qty()"/></td>
            <td><div class="invoice-cart-single-name"><?php echo $row["item_name"]; ?></div></td>
            <td class="text-right"><div class="invoice-cart-single-price">Rs.<span><?php echo $row["item_price"]; ?></span></div></td>
            <td class="text-right discount-td"><div class="invoice-cart-single-ondeal-discount">Rs.<input type="text" class="discount-field number text-right" onkeyup="single_discount(<?php echo $row["product_id"]; ?>)" onchange="single_discount(<?php echo $row["product_id"]; ?>)" value="<?php echo $row["item_discounted_price"]; ?>"></div></td>
            <td class="text-right"><div class="invoice-cart-single-total">Rs.<span><?php echo $row["item_single_total"]; ?></span></div></td>
            <td class="text-right" style="width:10px; padding: 10px 0px;"><span class="remove-from-invoice text-right" onclick="remove_from_invoice()"><i class="material-icons">close</i></span></td>
        </tr>
        <?php
    }
} else {
    
}
?>
