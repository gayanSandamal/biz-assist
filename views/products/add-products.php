<?php include_once '../../inc/header.php'; ?>
<?php include_once '../../inc/sidebar.php'; ?>

<?php include_once '../../controllers/connection.php'; ?>

<?php
$add_products_cat = "
SELECT 
cat_id,
cat_name
FROM category
";
$add_products_brand = "
SELECT 
brand_id,
brand_name
FROM brand
";
$add_products_supplier = "
SELECT
supplier_id,
supplier_name
FROM suppliers
";
$add_products_tax = "
SELECT 
tax_id,
tax_rate,
tax_desc
FROM tax
";
$add_products_offer = "
SELECT 
offer_type_id,
offer_type_name
FROM offer_type
";
$add_products_condition = "
SELECT 
product_condition_id,
product_condition_state
FROM product_condition
";

$result_cat = $conn->query($add_products_cat);
$result_brand = $conn->query($add_products_brand);
$result_supplier = $conn->query($add_products_supplier);
$result_tax = $conn->query($add_products_tax);
$result_offer = $conn->query($add_products_offer);
$result_condition = $conn->query($add_products_condition);
?>
<div class="main-panel">
    <?php include_once '../../inc/navbar.php'; ?>
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12 add-products-left">
                    <div class="card">
                        <div class="card-header" data-background-color="purple">
                            <h4 class="title">Add Product</h4>
                            <p class="category">Complete your profile</p>
                        </div>
                        <div class="card-content">
                            <form class="min-height-form">
                                <div class="col-md-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Name</label>
                                        <input type="text" class="form-control from-display-name name-required required" name="name">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Description</label>
                                        <input type="text" class="form-control from-display-desc desc-required required" name="desc">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Category</label>
                                        <select class="form-control search-filter" id="search-filter-cat" name="cat">
                                            <?php
                                            if ($result_cat->num_rows > 0) {
                                                while ($row = $result_cat->fetch_assoc()) {
                                                    ?>
                                                    <option value="<?php echo $row["cat_id"]; ?>"><?php echo $row["cat_name"]; ?></option>
                                                    <?php
                                                }
                                            } else {
                                                echo "0 results";
                                            }
                                            ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Brand</label>
                                        <select class="form-control search-filter" id="search-filter-brand" name="brand">
                                            <?php
                                            if ($result_brand->num_rows > 0) {
                                                while ($row = $result_brand->fetch_assoc()) {
                                                    ?>
                                                    <option value="<?php echo $row["brand_id"]; ?>"><?php echo $row["brand_name"]; ?></option>
                                                    <?php
                                                }
                                            } else {
                                                echo "0 results";
                                            }
                                            ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Supplier</label>
                                        <select class="form-control search-filter" id="search-filter-supplier" name="supplier">
                                            <?php
                                            if ($result_supplier->num_rows > 0) {
                                                while ($row = $result_supplier->fetch_assoc()) {
                                                    ?>
                                                    <option value="<?php echo $row["supplier_id"]; ?>"><?php echo $row["supplier_name"]; ?></option>
                                                    <?php
                                                }
                                            } else {
                                                echo "0 results";
                                            }
                                            ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group label-floating">
                                        <label class="control-label yes-focused">Expiring date</label>
                                        <input type="text" class="form-control date-required required" id="exp-date" placeholder="yyyy-mm-dd" name="exp">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Model no</label>
                                        <input type="text" class="form-control model-required required" name="model">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Code no</label>
                                        <input type="text" class="form-control code-required required" name="code">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group label-floating">
                                        <div class="checkbox inline-block">
                                            <label>
                                                <input type="checkbox" name="availability">
                                            </label>
                                        </div>
                                        <label class="inline-block">Availability</label>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group label-floating vat-check">
                                        <label class="control-label">Product condition</label>
                                        <select class="form-control search-filter" id="search-filter-condition" name="condition">
                                            <?php
                                            if ($result_condition->num_rows > 0) {
                                                while ($row = $result_condition->fetch_assoc()) {
                                                    ?>
                                                    <option value="<?php echo $row["product_condition_id"]; ?>"><?php echo $row["product_condition_state"]; ?></option>
                                                    <?php
                                                }
                                            } else {
                                                echo "0 results";
                                            }
                                            ?>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group label-floating vat-check">
                                        <label class="control-label">VAT Amount (%)</label>
                                        <select class="form-control search-filter" id="search-filter-offer-type" name="vat_rate">
                                            <?php
                                            if ($result_tax->num_rows > 0) {
                                                while ($row = $result_tax->fetch_assoc()) {
                                                    ?>
                                                    <option value="<?php echo $row["tax_id"]; ?>"><?php echo $row["tax_rate"]; ?>% (<?php echo $row["tax_desc"]; ?>)</option>
                                                    <?php
                                                }
                                            } else {
                                                echo "0 results";
                                            }
                                            ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Buying price</label>
                                        <input type="text" class="form-control buy-required required" name="buy_price">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Selling price</label>
                                        <input type="text" class="form-control sell-required required" name="sell_price">
                                    </div>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-group label-floating offer-check">
                                        <label class="control-label">Offer type</label>
                                        <select class="form-control search-filter" id="search-filter-vat-rate" name="offer_type">
                                            <?php
                                            if ($result_offer->num_rows > 0) {
                                                while ($row = $result_offer->fetch_assoc()) {
                                                    ?>
                                                    <option value="<?php echo $row["offer_type_id"]; ?>"><?php echo $row["offer_type_name"]; ?></option>
                                                    <?php
                                                }
                                            } else {
                                                echo "0 results";
                                            }
                                            ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group label-floating offer-check">
                                        <label class="control-label">Offer amount</label>
                                        <input type="text" class="form-control offer-required required" name="offer_amount">
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary pull-right add-products-button" id="add-products-button">Add Brand</button>
                                <div class="clearfix">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="add-products-right">
                    <div class="card card-profile product-img-container">
                        <form enctype="multipart/form-data">
                            <div class="card-avatar">
                                <!--<a href="#pablo">-->
                                <img class="product-img-show img" for="fileToUpload" src="<?php echo $baseUrl; ?>/assets/img/placeholder-image.png"/>
                                <!--</a>-->
                            </div>
                            <div class="content">
                                <input type="text" class="card-title display-name" name="product_name_appeared" value="product name">
                                <p class="card-content display-desc">
                                    Brand description
                                </p>
                                <!--<input class="btn btn-primary btn-round" type="submit" value="Upload Image" name="submit">-->
                            </div>
                            <input type="file" name="fileToUpload" id="fileToUpload">
                            <button type="submit" name="submit" id="upload_img">Upload Image</button>
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
    $(function () {
        $("#exp-date").datepicker({
            dateFormat: "yy-mm-dd"
        });
    });
    $('.search-filter').on('keyup', function () {
        if ($(this).val().length > 0) {
            $(this).closest('.form-group').find('.search-filter-list-container').addClass('after');
        } else {
            $(this).closest('.form-group').find('.search-filter-list-container').removeClass('after');
        }
    });
    $('.search-filter-list-container > li > a').on('click', function () {
        var search_filter_selected_text = $(this).text();
        var search_filter_selected_val = $(this).attr('value');
        $(this).closest('.form-group').find('.search-filter').text(search_filter_selected_text);
        $(this).closest('.form-group').find('.search-filter').val(search_filter_selected_val);
        $(this).closest('.form-group').find('.search-filter-list-container').removeClass('after');
    });
    $('.form-group input').on('keyup', function () {
        if ($(this).val().length > 0) {
            $(this).closest('.form-group').find('.clear-field').remove();
            $(this).closest('.form-group').append('<i class="material-icons clear-field" onclick="clear_field()">close</i>');
        } else {
            $(this).closest('.form-group').find('.clear-field').remove();
        }
    });
    function clear_field() {
        var clear_field_element = $(event.target);
        clear_field_element.closest('.form-group').find('input').val("");
        clear_field_element.closest('.form-group').find('.search-filter-list-container').removeClass('after');
        clear_field_element.remove();
    }

//    image upload
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('.add-image-img').attr('src', e.target.result);
                $('.product-img-show').attr('src', e.target.result);

                $('.add-image-img').hide();
                $('.add-image-img').fadeIn(650);
                $('.clear-image').show();
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
    $("#image_upload").change(function () {
        readURL(this);
    });

    $('.clear-image').on('click', function () {
        $('.add-image-img').fadeOut(650);
        setTimeout(function () {
            $('.add-image-img').hide();
            $('.add-image-img').attr('src', '');
            $('.product-img-show').attr('src', '');
        }, 650);
        $('.clear-image').hide();
    });
//    image upload

    $(document).ready(function () {
        $('.add-image-img').hide();
        $('.clear-image').hide();
        $('#search-filter-supplier').select2();
        $('#search-filter-cat').select2();
        $('#search-filter-brand').select2();
        $('#search-filter-vat-rate').select2();
        $('#search-filter-offer-type').select2();
        $('#search-filter-condition').select2();
    });

    $('.from-display-name').on('keyup', function () {
        var from_display_name = $(this).val();
        $('.display-name').val(from_display_name);
    });
    $('.from-display-desc').on('keyup', function () {
        var from_display_desc = $(this).val();
        $('.display-desc').text(from_display_desc);
    });

    $('#add-products-button').on('click', function (e) {
        e.preventDefault();

        var name_required = $('.name-required');
        var desc_required = $('.desc-required');
        var date_required = $('.date-required');
        var model_required = $('.model-required');
        var code_required = $('.code-required');
        var buy_required = $('.buy-required');
        var sell_required = $('.sell-required');
        var offer_required = $('.offer-required');
        if (
                name_required.val().length > 0 &&
                desc_required.val().length > 0 &&
                date_required.val().length > 0 &&
                model_required.val().length > 0 &&
                code_required.val().length > 0 &&
                buy_required.val().length > 0 &&
                sell_required.val().length > 0 &&
                offer_required.val().length > 0
                ) {
            $.ajax({
                type: 'get',
                url: 'add-products-call.php',
                data: $('form').serialize(),
                success: function () {
                    successfully_added();
                }
            });
        } else {
            validation_error();
        }
    });

    function successfully_added() {
        var color = 'green';
        var icon = 'check';
        var product_name = $('.from-display-name').val();
        var msg = product_name + ' is successfully added';
        push_notificatoin(color, icon, msg);
        $('input').val("");
        $('.required').removeClass('validation-error');
    }

    function validation_error() {
        var color = 'red';
        var icon = 'times';
        var msg = 'Please fill the required fields and submit';
        push_notificatoin(color, icon, msg);
        $('.required').addClass('validation-error');
    }

    $('#fileToUpload').on('change', function (e) {
        e.preventDefault();
        $.ajax({
            type: 'post',
            url: 'image_upload.php',
            data: $('form').serialize(),
            success: function () {
                successfully_added();
            }
        });
    });
</script>