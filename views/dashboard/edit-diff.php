<?php
include_once '../../controllers/connection.php';

$id = $_GET['del_id'];
$get_products = "
SELECT
    p.product_id,
    p.product_name,
    p.product_desc,
    c.cat_name,
    b.brand_name,
    p.product_model_no,
    p.product_code_no,
    s.supplier_name,
    p.buying_price,
    p.selling_price,
    p.availability,
    p.tax_id,
    p.offer_type_id,
    p.offer_value,
    p.discounted,
    p.product_added_date,
    p.product_exp_date,
    p.user_id,
    p.qty,
    p.product_condition_id,
    pcon.product_condition_state
FROM product p
LEFT OUTER JOIN category c ON c.cat_id = p.product_cat_id
LEFT OUTER JOIN brand b ON b.brand_id = p.product_brand_id
LEFT OUTER JOIN suppliers s ON s.supplier_id = p.supplier_id
LEFT OUTER JOIN product_condition pcon ON pcon.product_condition_id = p.product_condition_id
WHERE p.product_id = '$id'
";
$result_get_products = $conn->query($get_products);

if ($result_get_products->num_rows > 0) {
    while ($row = $result_get_products->fetch_assoc()) {
        $b_id = $row["product_id"];
        $b_name = $row["product_name"];
        $b_cat = $row["cat_name"];
        $b_brand = $row["brand_name"];
        $b_model = $row["product_model_no"];
        $b_code = $row["product_code_no"];
        $b_supp = $row["supplier_name"];
        $b_buy = $row["buying_price"];
        $b_sell = $row["selling_price"];
        $b_tax = $row["tax_id"];
        $b_offType = $row["offer_type_id"];
        $b_off = $row["offer_value"];
        $b_disc = $row["discounted"];
        $b_qty = $row["qty"];
        $b_cond = $row["product_condition_state"];
    }
}

$get_products_edit = "
SELECT
    p.product_id,
    p.product_name,
    p.product_desc,
    c.cat_name,
    b.brand_name,
    p.product_model_no,
    p.product_code_no,
    s.supplier_name,
    p.buying_price,
    p.selling_price,
    p.availability,
    p.tax_id,
    p.offer_type_id,
    p.offer_value,
    p.discounted,
    p.product_added_date,
    p.product_exp_date,
    p.user_id,
    p.qty,
    p.product_condition_id,
    pcon.product_condition_state
FROM edit_log p
LEFT OUTER JOIN category c ON c.cat_id = p.product_cat_id
LEFT OUTER JOIN brand b ON b.brand_id = p.product_brand_id
LEFT OUTER JOIN suppliers s ON s.supplier_id = p.supplier_id
LEFT OUTER JOIN product_condition pcon ON pcon.product_condition_id = p.product_condition_id
WHERE p.product_id = '$id'
";
$result_get_products_edit = $conn->query($get_products_edit);

if ($result_get_products_edit->num_rows > 0) {
    while ($row = $result_get_products_edit->fetch_assoc()) {
        $a_id = $row["product_id"];
        $a_name = $row["product_name"];
        $a_cat = $row["cat_name"];
        $a_brand = $row["brand_name"];
        $a_model = $row["product_model_no"];
        $a_code = $row["product_code_no"];
        $a_supp = $row["supplier_name"];
        $a_buy = $row["buying_price"];
        $a_sell = $row["selling_price"];
        $a_tax = $row["tax_id"];
        $a_offType = $row["offer_type_id"];
        $a_off = $row["offer_value"];
        $a_disc = $row["discounted"];
        $a_qty = $row["qty"];
        $a_cond = $row["product_condition_state"];
    }
}
?>
<div class="edit-diff-window-container">
    <div class="edit-diff-window">
        <div class="card">
            <div class="card-header" data-background-color="green">
                Difference comparison
                <div class="close-detail-btn" onclick="remove_diff()">
                    <i class="material-icons">close</i>
                </div>
            </div>
            <div class="card-content">
                <table id="diffTable">
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Before edit</th>
                            <th>After edit</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Name</td>
                            <td><?php echo $b_name; ?></td>
                            <td><?php echo $a_name; ?></td>
                        </tr>
                        <tr>
                            <td>Category</td>
                            <td><?php echo $b_cat; ?></td>
                            <td><?php echo $a_cat; ?></td>
                        </tr>
                        <tr>
                            <td>Brand</td>
                            <td><?php echo $b_brand; ?></td>
                            <td><?php echo $a_brand; ?></td>
                        </tr>
                        <tr>
                            <td>Model</td>
                            <td><?php echo $b_model; ?></td>
                            <td><?php echo $a_model; ?></td>
                        </tr>
                        <tr>
                            <td>Code</td>
                            <td><?php echo $b_code; ?></td>
                            <td><?php echo $a_code; ?></td>
                        </tr>
                        <tr>
                            <td>Supplier</td>
                            <td><?php echo $b_supp; ?></td>
                            <td><?php echo $a_supp; ?></td>
                        </tr>
                        <tr>
                            <td>Buy</td>
                            <td><?php echo $b_buy; ?></td>
                            <td><?php echo $a_buy; ?></td>
                        </tr>
                        <tr>
                            <td>Sell</td>
                            <td><?php echo $b_sell; ?></td>
                            <td><?php echo $a_sell; ?></td>
                        </tr>
                        <tr>
                            <td>Tax</td>
                            <td><?php echo $b_tax; ?></td>
                            <td><?php echo $a_tax; ?></td>
                        </tr>
                        <tr>
                            <td>Offer type</td>
                            <td><?php echo $b_offType; ?></td>
                            <td><?php echo $a_offType; ?></td>
                        </tr>
                        <tr>
                            <td>Offer value</td>
                            <td><?php echo $b_off; ?></td>
                            <td><?php echo $a_off; ?></td>
                        </tr>
                        <tr>
                            <td>Discount</td>
                            <td><?php echo $b_disc; ?></td>
                            <td><?php echo $a_disc; ?></td>
                        </tr>
                        <tr>
                            <td>Quantity</td>
                            <td><?php echo $b_qty; ?></td>
                            <td><?php echo $a_qty; ?></td>
                        </tr>
                        <tr>
                            <td>Condition</td>
                            <td><?php echo $b_cond; ?></td>
                            <td><?php echo $a_cond; ?></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<script>
    $('#diffTable tbody > tr').each(function () {
        var self = $(this);
        var before = $.trim($('td:nth-child(2)', this).text());
        var after = $.trim($('td:nth-child(3)', this).text());
        if(before !== after) {
            self.addClass('diff');
        } else {
            self.removeClass('diff');
        }
        console.log(before + ', ' + after);
    });
</script>