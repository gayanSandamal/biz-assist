<?php include_once '../../inc/baseUrl.php';
include_once '../../controllers/connection.php';

$id = $_GET['del_id'];
$get_product_detail = "
SELECT product_id,
product_name,
product_desc,
product_cat_id,
product_brand_id,
p.supplier_id,
p.product_condition_id,
c.cat_name,
b.brand_name,
p.img_id,
i.img_path,
product_model_no,
product_code_no,
supplier_name,
buying_price,
expenses,
selling_price,
availability,
tax_id,
offer_type_id,
offer_value,
discounted,
product_added_date,
product_exp_date,
qty,
product_condition_state
FROM product p
LEFT OUTER JOIN category c
ON c.cat_id = p.product_cat_id
LEFT OUTER JOIN brand b
ON b.brand_id = p.product_brand_id
LEFT OUTER JOIN suppliers s
ON s.supplier_id = p.supplier_id
LEFT OUTER JOIN image i
ON i.img_id = p.img_id
LEFT OUTER JOIN product_condition pcon
ON pcon.product_condition_id = p.product_condition_id
WHERE product_id = $id
";
$result_get_product_detail = $conn->query($get_product_detail);
?>
<div class="close-detail-btn">
    <i class="material-icons" onclick="remove_pop_up()">close</i>
</div>
<?php
if ($result_get_product_detail->num_rows > 0) {
    while ($row = $result_get_product_detail->fetch_assoc()) {
        ?>
        <div class="detail-container">
            <div class="col-sm-6">
                <div class="detail-img" style="background-image: url(<?php echo ($row["img_path"] != '' ? $baseUrl . $row["img_path"] : $baseUrl . '/assets/img/placeholder-image.png'); ?>)">
                    <div class="detail-condition"><?php echo $row["product_condition_state"]; ?></div>
                    <div class="detail-availability"><?php echo ($row["availability"] == 1 ? 'Available' : 'Not Available'); ?></div>
                </div>
            </div>
            <div class="col-sm-6">
                <h3><?php echo $row["product_name"]; ?></h3>
                <h5><?php echo $row["product_desc"]; ?></h5>
                <div class="col-sm-6 form-group label-floating is-empty is-focused">
                    <div class="row">
                        <label class="control-label">Model / variation</label>
                        <p><?php echo $row["product_model_no"]; ?></p>
                    </div>
                </div>
                <div class="col-sm-6 form-group label-floating is-empty is-focused">
                    <div class="row">
                        <label class="control-label">Code</label>
                        <p><?php echo $row["product_code_no"]; ?></p>
                    </div>
                </div>
                <div class="col-sm-6 form-group label-floating is-empty is-focused">
                    <div class="row">
                        <label class="control-label">Category</label>
                        <p><?php echo $row["cat_name"]; ?></p>
                    </div>
                </div>
                <div class="col-sm-6 form-group label-floating is-empty is-focused">
                    <div class="row">
                        <label class="control-label">Generic</label>
                        <p><?php echo $row["brand_name"]; ?></p>
                    </div>
                </div>
                <div class="col-sm-6 form-group label-floating is-empty is-focused">
                    <div class="row">
                        <label class="control-label">Supplier</label>
                        <p><?php echo $row["supplier_name"]; ?></p>
                    </div>
                </div>
<!--                <div class="col-sm-6 form-group label-floating is-empty is-focused">
                    <div class="row">
                        <label class="control-label">Expire date</label>
                        <p><?php // echo $row["product_exp_date"]; ?></p>
                    </div>
                </div>-->
                <div class="col-sm-6 form-group label-floating is-empty is-focused">
                    <div class="row">
                        <label class="control-label">Buying price</label>
                        <p><?php echo $row["buying_price"]; ?></p>
                    </div>
                </div>
                <div class="col-sm-6 form-group label-floating is-empty is-focused">
                    <div class="row">
                        <label class="control-label">Selling price</label>
                        <p><?php echo $row["selling_price"]; ?></p>
                    </div>
                </div>
                <div class="col-sm-6 form-group label-floating is-empty is-focused">
                    <div class="row">
                        <label class="control-label">Discounted price</label>
                        <p><?php echo $row["discounted"]; ?></p>
                    </div>
                </div>
                <div class="col-sm-6 form-group label-floating is-empty is-focused">
                    <div class="row">
                        <label class="control-label">Last updated</label>
                        <p><?php echo $row["product_added_date"]; ?></p>
                    </div>
                </div>
            </div>
        </div>

        <?php
    }
} else {
    echo "0 results";
}
?>