<?php include_once '../../inc/header.php'; ?>
<?php include_once '../../inc/sidebar.php'; ?>

<?php include_once '../../controllers/connection.php'; ?>

<?php
$view_sales = "
SELECT
i.invoice_id,
i.invoice_ref_no,
u.user_id,
u.first_name,
i.invoice_time,
c.customer_name,
i.temp_customer,
c.nic,
c.phone,
i.item_total_discount,
i.item_total_price,
i.cash_to_change,
i.balance,
i.loyalty_offer_rate,
i.loyalty_offered_price
FROM
invoice i
LEFT OUTER JOIN `user` u
ON u.user_id = i.user_id
LEFT OUTER JOIN customer c
ON c.customer_id = i.customer_id
WHERE NOT invoice_id = 0
ORDER BY i.invoice_time DESC
";

$result_view_sales = $conn->query($view_sales);
?>
<div class="main-panel">
    <?php include_once '../../inc/navbar.php'; ?>
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <form method="POST" action="delete-multiple.php">
                            <div class="card-header" data-background-color="purple">
                                <h4 class="title">
                                    <div class="title-text">
                                        <!--<a href="add.php">Add new customer</a>-->
                                        Sale details
                                        <!--<a href="delete-multiple.php" id="delete-multiple-btn">Delete</a>-->
                                        <button type="submit" id="delete-multiple-btn" style="display: none;"><i class="material-icons">delete</i> Delete</button>
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
                                    <th class="product-id-th">#</th>
                                    <th>Invoice Ref. No.</th>
                                    <th>Invoice time</th>
                                    <th>User ID</th>
                                    <th>Issued by</th>
                                    <th>Loyalty customer</th>
                                    <th>Temporary customer</th>
                                    <!--<th>Customer NIC</th>-->
                                    <th>Customer phone</th>
                                    <th>Total discount</th>
                                    <th>Total price</th>
                                    <th>Cash to change</th>
                                    <th>Balance</th>
                                    <th>Offer rate</th>
                                    <th>Offered price</th>
                                    <th class="product-actions-td">Actions</th>
                                    </thead>
                                    <tbody>
                                        <?php
                                        if ($result_view_sales->num_rows > 0) {
// output data of each row
                                            $numOrder = 1;
                                            while ($row = $result_view_sales->fetch_assoc()) {
                                                ?>

                                                <tr class="product-single-container">
                                                    <th class="product-select">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox" name="check_list[]" value="<?php echo $row["invoice_id"]; ?>" class="cat-check">
                                                            </label>
                                                        </div>
                                                    </th>
                                                    <td class="product-id"><span><?php echo ($numOrder++); ?></span></td>
                                                    <!--====================================================-->
                                                    <td class="product-name-td"><div class="product-name"><a href="#" class="sale-detail" onclick="sale_details(<?php echo $row["invoice_id"]; ?>, <?php echo $row["invoice_ref_no"]; ?>)"><?php echo $row["invoice_ref_no"]; ?></a></div></td>
                                                    <td class="product-name-td"><div class="product-name" style="white-space: nowrap;"><?php echo $row["invoice_time"]; ?></div></td>
                                                    <td class="product-name-td"><div class="product-name"><?php echo $row["user_id"]; ?></div></td>
                                                    <td class="product-name-td"><div class="product-name"><?php echo $row["first_name"]; ?></div></td>
                                                    <td class="product-name-td"><div class="product-name"><?php echo $row["customer_name"]; ?></div></td>
                                                    <td class="product-name-td"><div class="product-name"><?php echo $row["temp_customer"]; ?></div></td>
                                                    <!--<td class="product-name-td"><div class="product-name"><?php // echo $row["nic"]; ?></div></td>-->
                                                    <td class="product-name-td"><div class="product-name"><?php echo $row["phone"]; ?></div></td>
                                                    <td class="product-name-td"><div class="product-name">Rs.<?php echo $row["item_total_discount"]; ?></div></td>
                                                    <td class="product-name-td"><div class="product-name">Rs.<?php echo $row["item_total_price"]; ?></div></td>
                                                    <td class="product-name-td"><div class="product-name">Rs.<?php echo $row["cash_to_change"]; ?></div></td>
                                                    <td class="product-name-td"><div class="product-name">Rs.<?php echo $row["balance"]; ?></div></td>
                                                    <td class="product-name-td"><div class="product-name"><?php echo $row["loyalty_offer_rate"]; ?>%</div></td>
                                                    <td class="product-name-td"><div class="product-name">Rs.<?php echo $row["loyalty_offered_price"]; ?></div></td>
                                                    <!--========================================================-->
                                                    <td class="product-actions">
        <!--                                                        <a href="edit.php?id=<?php // echo $row["invoice_id"];         ?>" class="product-actions-btn product-actions-edit"><i class="material-icons">mode_edit</i><span>Edit</span></a>-->
                                                        <a href="<?php echo $row["invoice_id"]; ?>" class="product-actions-btn product-actions-delete" id="sale-actions-delete"><i class="material-icons">delete</i><span>Delete</span></a>
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
        $('#cat-table').DataTable(
                {"lengthMenu": [[15, 20, 25, -1], [15, 20, 25, "All"]]}
        );
        $('div#cat-table_filter input[type="search"]').appendTo('.category-search-container');
        $('div#cat-table_filter label').remove();
        $('.category-search-container input[type="search"]').attr('id', 'category-search-field');
        $('#category-search-field').addClass('form-control');
    });


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

    $('a#sale-actions-delete').click(function (e) {
        e.preventDefault();
        var del_id = $(this).attr('href');
        var del_row = $(this).closest('tr.product-single-container');

        if ($('tr.product-single-container').length > 1) {
            $.ajax({
                type: 'POST',
                url: 'delete.php',
                data: {del_id: del_id},
                success: function (data) {
                    console.log(data);
                    del_row.fadeOut('slow', function () {
                        del_row.remove();
                    });
                    successfully_deleted();
                }
            });
        } else {
            $('input.check-all-btn').trigger('click');
            $('button#delete-multiple-btn').trigger('click');
        }
    });


    $('button#delete-multiple-btn').on('click', function (e) {
        e.preventDefault();
        $.ajax({
            type: 'POST',
            url: 'delete-multiple.php',
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

    function sale_details(invoice_id, invoice_ref) {
        event.preventDefault();

        var sale_detail_container = `
            <div class="sale_detail_container">
                <div class="sale_detail_block">
                    <div class="close-detail-btn">
                        <i class="material-icons" onclick="remove_pop_up()">close</i>
                    </div>
                    <div class="sale_detail_container_loader"></div>
                </div>
            </div>
        `;

        var del_id = invoice_id;
        var ref = invoice_ref;
        $.ajax({
            type: 'GET',
            url: 'detail.php',
            data: {del_id: del_id, ref: ref},
            success: function (data) {
                var detail_page_url = 'detail.php?del_id=' + del_id + '&ref=' + ref;

                $('body').append(sale_detail_container);
                $('.sale_detail_container_loader').load(detail_page_url);
            }
        });
    }

    function remove_pop_up() {
        $('.sale_detail_container').remove();
    }
</script>