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

$get_products = "
SELECT
	p.product_id,
	p.product_name,
	p.product_desc,
	c.cat_name,
	b.brand_name,
	i.img_path,
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
FROM
	product p
LEFT OUTER JOIN category c ON c.cat_id = p.product_cat_id
LEFT OUTER JOIN brand b ON b.brand_id = p.product_brand_id
LEFT OUTER JOIN suppliers s ON s.supplier_id = p.supplier_id
LEFT OUTER JOIN image i ON i.img_id = p.img_id
LEFT OUTER JOIN product_condition pcon ON pcon.product_condition_id = p.product_condition_id
WHERE p.branch_id = '$branch_id' AND NOT p.product_id = 0 AND p.flag = 1
ORDER BY
	c.cat_name ASC
";
$result_get_products = $conn->query($get_products);
?>
<div class="main-panel">
<?php include_once '../../inc/navbar.php'; ?>
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <form method="POST" action="../../uploads/delete-multiple.php">
                            <div class="card-header" data-background-color="purple">
                                <h4 class="title">
                                    <div class="title-text">
                                        <a href="add.php">Add new Brand</a>
                                        <!--<a href="delete-multiple.php" id="delete-multiple-btn">Delete</a>-->
                                        <button type="submit" id="delete-multiple-btn" style="display: none;"><i class="material-icons">delete</i> Trash</button>
                                    </div>
                                    <div class="edit-mode-check">
                                        <div class="checkbox">
                                            <label>
                                                <span class="edit-mode-check-text">Edit mode</span><input type="checkbox" name="optionsCheckboxes">
                                            </label>
                                        </div>
                                    </div>
                                </h4>
                                <div class="table-controller-container">
                                    <div class="search-table form-group label-floating category-search-container">
                                        <label class="control-label">Search items</label>
                                        <!--<input type="text" class="form-control">-->
                                    </div>
                                    <!--                                    <div class="table-smart-view-trigger">
                                                                            <i class="material-icons grid_off">grid_off</i>
                                                                            <i class="material-icons grid_on hide">grid_on</i>
                                                                        </div>-->

                                </div>
                            </div>
                            <div class="card-content table-responsive">
                                <table class="table hover" id="cat-table">
                                    <thead class="text-primary">
                                    <th class="product-select-all">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" name="optionsCheckboxes" class="check-all-btn">
                                            </label>
                                        </div>
                                    </th>
                                    <th class="product-id-th text-right">#</th>

                                    <th class="product-img-th">Image</th>
                                    <th class="product-availability-th text-center">Availability</th>
                                    <th class="product-name-th">Name</th>
                                    <th class="product-model-th">Model/ Variation</th>
                                    <!--<th class="product-code-th">Code</th>-->
                                    <th class="product-category-th">Category</th>
                                    <th class="product-brand-th">Generic</th>
                                    <!--<th class="product-supplier-th">Supplier</th>-->
                                    <th class="product-condition-th text-center">Condition</th>
                                    <th class="product-exp-th text-right">Exp</th>
                                    <th class="product-selling-price-th text-right">Selling price</th>
                                    <th class="product-qty-th text-right">Qty</th>

                                    <th class="product-actions-td text-center" style="width: 100%; padding: 0px;">Actions</th>
                                    </thead>
                                    <tbody>
                                        <?php
                                        if ($result_get_products->num_rows > 0) {
                                            $numOrder = 1;
                                            while ($row = $result_get_products->fetch_assoc()) {
                                                ?>
                                                <tr class="product-single-container <?php echo ($row["availability"] == 1 ? 'available' : 'not-available'); ?>">
                                                    <th class="product-select">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox" name="check_list[]" value="<?php echo $row["product_id"]; ?>" class="cat-check">
                                                            </label>
                                                        </div>
                                                    </th>

                                                    <td class="product-id text-right"><span><?php echo ($numOrder++); // echo $row["product_id"];     ?></span></td>

                                                    <td class="product-img-td">
                                                        <span><?php echo ($row["img_path"] != '' ? $baseUrl . $row["img_path"] : $baseUrl . '/assets/img/placeholder-image.png'); ?></span>
                                                    </td>
                                                    <td class="product-availability-td text-center"><div class="product-availability"><?php echo ($row["availability"] == 1 ? 'Yes' : 'No'); ?></div></td>

                                                    <td class="product-name-td"><div class="product-name"><a href="<?php echo $row["product_id"]; ?>" class="detail-btn" onclick="get_details()"><?php echo $row["product_name"]; ?></a></div></td>
                                                    <td class="product-model-td"><div class="product-cat"><?php echo $row["product_model_no"]; ?></div></td>
                                                    <!--<td class="product-code-td"><div class="product-cat"><?php // echo $row["product_code_no"];     ?></div></td>-->
                                                    <td class="product-cat-td"><div class="product-cat"><?php echo $row["cat_name"]; ?></div></td>
                                                    <td class="product-brand-td"><div class="product-brand"><?php echo $row["brand_name"]; ?></div></td>
                                                    <!--<td class="product-supplier-td"><div class="product-supplier"><?php // echo $row["supplier_name"];  ?></div></td>-->
                                                    <td class="product-condition text-center"><div class="product-supplier"><?php echo $row["product_condition_state"]; ?></div></td>
                                                    <td class="product-exp-date-td text-right"><div class="product-exp-date"><?php echo $row["product_exp_date"]; ?></div></td>
                                                    <!--<td class="text-primary product-tax-val-td"><div class="product-tax-val"><?php echo $row["tax_id"]; ?>%</div></td>-->
                                                    <!--<td class="text-primary product-offer-val-td margin-top-from-image"><div class="product-offer-val">$<?php // echo $row["offer_value"];         ?></div></td>-->
                                                    <td class="text-primary product-price-td text-right"><div class="product-price">Rs. <?php echo $row["selling_price"]; ?></div></td>
                                                    <td class="text-primary product-qty-td text-right"><div class="product-qty"><?php echo $row["qty"]; ?></div></td>

                                                    <td class="product-actions text-center">
                                                        <a href="edit.php?id=<?php echo $row["product_id"]; ?>" class="product-actions-btn product-actions-edit"><i class="material-icons">mode_edit</i><span>Edit</span></a>
                                                        <a href="<?php echo $row["product_id"]; ?>" class="product-actions-btn product-actions-delete" id="product-actions-delete"><i class="material-icons">delete</i><span>Trash</span></a>
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
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php include_once '../../inc/footer-cont.php'; ?>
</div>
<?php include_once '../../inc/footer.php'; ?>

<script>
    $(document).ready(function () {
        menu_trigger();
        $('#cat-table').DataTable(
                {"lengthMenu": [[15, 20, 25, -1], [15, 20, 25, "All"]]}
        );
        $('div#cat-table_filter input[type="search"]').appendTo('.category-search-container');
        $('div#cat-table_filter label').remove();
        $('.category-search-container input[type="search"]').attr('id', 'category-search-field');
        $('#category-search-field').addClass('form-control');
        $('#category-search-field').focus();
    });


    function get_details() {
        event.preventDefault();
        var del_id = $(event.target).attr('href');
        $.ajax({
            type: 'GET',
            url: 'detail.php',
            data: {del_id: del_id},
            success: function (data) {
                console.log(data);
                var detail_page_url = 'detail.php?del_id=' + del_id;
                var detail_pg = '<div class="detail-pg-popup"><div id="detail-loader"></div></div>';
                $('body').append(detail_pg);
//                    setTimeout(function(){
                $('#detail-loader').load(detail_page_url);
//                    }, 500);
            }
        });
    }

    function remove_pop_up() {
        $('.detail-pg-popup').remove();
    }

    function successfully_deleted() {
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

    $('a#product-actions-delete').click(function (e) {
        e.preventDefault();
        var del_id = $(this).attr('href');
        var del_row = $(this).closest('tr.product-single-container');
        $.ajax({
            type: 'POST',
            url: '../../uploads/trash-single.php',
            data: {del_id: del_id},
            success: function (data) {
                console.log(data);
                del_row.fadeOut('slow', function () {
                    del_row.remove();
                });
                successfully_deleted();
            }
        });
    });


    $('button#delete-multiple-btn').on('click', function (e) {
        e.preventDefault();
        $.ajax({
            type: 'POST',
            url: '../../uploads/trash-multiple.php',
            data: $('form').serialize(),
            success: function (data) {
                console.log(data);
                successfully_deleted();
                $("input.cat-check:checked").closest('tr.product-single-container').fadeOut('slow', function () {
                    $("input.cat-check:checked").closest('tr.product-single-container').remove();
                });
            }
        });
    });

    function cat_delete_animation() {
        $('tr.product-single-container').each(function () {
            var del_check = $(this).find('input[type="checkbox"]');
            if ($(del_check).prop('checked') == true) {
                $(this).fadeOut('slow', function () {
                    $(this).remove();
                });
            }
        });
    }

    $(".check-all-btn").change(function () {
        $('.cat-check').not(this).prop('checked', this.checked);
        if ($("input.cat-check:checked").length > 0) {
            $('#delete-multiple-btn').show();
        } else {
            $('#delete-multiple-btn').hide();
        }
    });

    $("input.cat-check").change(function () {
        if ($("input.cat-check:checked").length > 0) {
            $('#delete-multiple-btn').show();
        } else {
            $('#delete-multiple-btn').hide();
        }
    });
</script>