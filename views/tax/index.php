<?php include_once '../../inc/header.php'; ?>
<?php include_once '../../inc/sidebar.php'; ?>

<?php include_once '../../controllers/connection.php'; ?>

<?php
$view_tax = "
SELECT
tax_id,
tax_rate,
tax_desc
FROM tax
WHERE NOT tax_id = 0
";

$result_view_tax = $conn->query($view_tax);
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
                                        <a href="add.php">Add new tax</a>
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
                                    <th>Tax rate</th>
                                    <th>Tax description</th>
                                    <th class="product-actions-td">Actions</th>
                                    </thead>
                                    <tbody>
                                        <?php
                                        if ($result_view_tax->num_rows > 0) {
// output data of each row 
                                            $numOrder = 1;
                                            while ($row = $result_view_tax->fetch_assoc()) {
                                                ?>

                                                <tr class="product-single-container">
                                                    <th class="product-select">
                                                        <div class="checkbox">
                                                            <label>
                                                                <input type="checkbox" name="check_list[]" value="<?php echo $row["tax_id"]; ?>" class="cat-check">
                                                            </label>
                                                        </div>
                                                    </th>
                                                    <td class="product-id"><span><?php echo ($numOrder++); ?></span></td>

                                                    <td class="product-tax-rate-td"><div class="product-tax-rate"><?php echo $row["tax_rate"]; ?></div></td>
                                                    <td class="product-tax-desc-td"><div class="product-tax-desc"><?php echo $row["tax_desc"]; ?></div></td>
                                                    <td class="product-actions">
                                                        <a href="edit.php?id=<?php echo $row["tax_id"]; ?>" class="product-actions-btn product-actions-edit"><i class="material-icons">mode_edit</i><span>Edit</span></a>
                                                        <a href="<?php echo $row["tax_id"]; ?>" class="product-actions-btn product-actions-delete" id="tax-actions-delete"><i class="material-icons">delete</i><span>Delete</span></a>
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

    $('a#tax-actions-delete').click(function (e) {
        e.preventDefault();
        var del_id = $(this).attr('href');
        var del_row = $(this).closest('tr.product-single-container');
        $.ajax({
            type: 'POST',
            url: 'delete.php',
            data: {del_id: del_id},
            success: function (data) {
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
</script>