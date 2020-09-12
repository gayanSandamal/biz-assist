<?php include_once '../../inc/header.php'; ?>
<?php include_once '../../inc/sidebar.php'; ?>

<?php include_once '../../controllers/connection.php'; ?>

<?php
$get_branch = "
SELECT
u.username,
b.branch_id,
b.branch_name,
b.branch_location
FROM user u
LEFT OUTER JOIN branch b
ON b.branch_id = u.branch_id
WHERE u.user_id = '$user_id_new'
";
$result_get_branch = $conn->query($get_branch);
if ($result_get_branch->num_rows > 0) {
    while ($row = $result_get_branch->fetch_assoc()) {
        $username = $row["username"];
        $branch_name = $row["branch_name"];
        $branch_id = $row["branch_id"];
        $branch_location = $row["branch_location"];
    }
} else {
    
}

$view_items_to_barcode = "
SELECT
p.product_id,
p.product_name,
c.cat_name,
brand.brand_name,
b.branch_id,
b.branch_name,
b.branch_location,
p.product_model_no,
p.product_code_no
FROM product p
LEFT OUTER JOIN category c
ON c.cat_id = p.product_cat_id
LEFT OUTER JOIN brand
ON brand.brand_id = p.product_brand_id
LEFT OUTER JOIN branch b
ON b.branch_id = p.branch_id
WHERE b.branch_id = '$branch_id'
ORDER BY p.product_name
";

$result_view_items_to_barcode = $conn->query($view_items_to_barcode);
?>
<div class="main-panel">
    <?php include_once '../../inc/navbar.php'; ?>
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header" data-background-color="purple">
                            <h4 class="title">
                                <div class="title-text">
                                    Print barcodes
                                    <button type="submit" id="delete-multiple-btn" style="display: none;"><i class="material-icons">delete</i> Delete</button>
                                </div>
                            </h4>
                            <div class="table-controller-container">
                                <div class="search-table form-group label-floating category-search-container">
                                    <label class="control-label">Search items</label>
                                </div>

                            </div>
                        </div>
                        <div class="card-content table-responsive">
                                <table class="table hover" id="cat-table">
                                    <thead class="text-primary">
                                    <th class="product-id-th">#</th>
                                    <th>Name</th>
                                    <th>Category</th>
                                    <th>Brand</th>
                                    <th>Model</th>
                                    <th>Code</th>
                                    <th class="text-center">Barcode</th>
                                    <th class="text-center">Count</th>
                                    <th class="text-center">Actions</th>
                                    </thead>
                                    <tbody>
                                        <?php
                                        if ($result_view_items_to_barcode->num_rows > 0) {
                                            $numOrder = 1;
                                            while ($row = $result_view_items_to_barcode->fetch_assoc()) {
                                                ?>

                                                <tr class="product-single-container">
                                                    <td class="product-id"><span><?php echo ($numOrder++); ?></span></td>

                                                    <td class="product-name-td"><div class="product-name"><?php echo $row["product_name"]; ?></div></td>
                                                    <td class="product-name-td"><div class="product-name"><?php echo $row["cat_name"]; ?></div></td>
                                                    <td class="product-name-td"><div class="product-name"><?php echo $row["brand_name"]; ?></div></td>
                                                    <td class="product-name-td"><div class="product-name"><?php echo $row["product_model_no"]; ?></div></td>
                                                    <td class="product-name-td"><div class="product-code"><?php echo $row["product_code_no"]; ?></div></td>
                                                    <td class="product-name-td"><div class="product-barcode"></div></td>
                                                    <td class="product-name-td" style="width:70px;">
                                                        <div class="product-barcode-count">
                                                            <input type="text" id="barcode-count" class="form-control clear-after" name="barcode-count" value="1" style="width:100%;margin:auto;text-align:right;">
                                                            <input type="hidden" value="<?php echo $row["product_code_no"]; ?>" name="barcode-value" id="barcode-value"/>
                                                        </div>
                                                    </td>
                                                    <td class="product-name-td">
                                                        <div class="product-barcode-print text-center">
                                                            <a href="<?php echo $baseUrl; ?>/views/barcode/print-barcode.php" class="btn btn-primary" onclick="print_barcode_btn()">Print</a>
                                                        </div>
                                                    </td>
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
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php include_once '../../inc/footer-cont.php'; ?>
</div>
<?php include_once '../../inc/footer.php'; ?>

<link href="../../assets/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../../assets/js/jquery-barcode.js"></script>
<script>
    $(document).ready(function () {
        $('table#cat-table tbody tr').each(function () {
            var product_code = $(this).find('.product-code');
            var product_barcode = $(this).find('.product-barcode');
            product_barcode.barcode(product_code.text(), "ean13");
        });

        $('#cat-table').DataTable(
                {"lengthMenu": [[15, 20, 25, -1], [15, 20, 25, "All"]]}
        );
        $('div#cat-table_filter input[type="search"]').appendTo('.category-search-container');
        $('div#cat-table_filter label').remove();
        $('.category-search-container input[type="search"]').attr('id', 'category-search-field');
        $('#category-search-field').addClass('form-control');
    });

    function successfully_printed() {
        var color = 'green';
        var icon = 'check';
        var msg = 'Category is successfully deleted';
        push_notificatoin(color, icon, msg);
    }
    function delete_error() {
        var color = 'red';
        var icon = 'times';
        var msg = 'Please fill the required fields and submit';
        push_notificatoin(color, icon, msg);
        $('.required').addClass('validation-error');
    }
    
    function print_barcode_btn() {
        event.preventDefault();
        var print_btn = $(event.target);
        var print_btn_url = print_btn.attr('href');
        var barcode_value = print_btn.closest('.product-single-container').find('#barcode-value').val();
        var barcode_count = print_btn.closest('.product-single-container').find('#barcode-count').val();
        var print_btn_url_new = (print_btn_url+'?barcode='+barcode_value+'&count='+barcode_count);
        var win = window.open(print_btn_url_new, '_blank');
        win.focus();
    }
</script>