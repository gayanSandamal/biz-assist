<?php include_once '../../inc/header.php'; ?>
<?php include_once '../../inc/sidebar.php'; ?>

<?php include_once '../../controllers/connection.php'; ?>
<?php include_once '../../controllers/sql/sql-products.php'; ?>


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
?>
<div class="main-panel">
    <?php include_once '../../inc/navbar.php'; ?>
    <div class="content partial-scroll">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header" data-background-color="purple">
                            <h4 class="title"><a href="<?php echo $baseUrl; ?>/views/products/" class="back-btn"><i class="material-icons">arrow_back</i></a>Add Products</h4>
                            <!--<p class="category">Complete your profile</p>-->
                        </div>
                        <div class="card-content">
                            <form class="min-height-form" method="post" action="add-products-call.php">
                                <input type="hidden" name="user_id" value="<?php echo $user_id_new; ?>"/>
                                <input type="hidden" name="branch_id" value="<?php echo $branch_id; ?>"/>
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Product name*</label>
                                        <input type="text" class="form-control name-required required clear-after"  name="name" id="from-display-name" onkeyup="show_matching_cats()">
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Category</label>
                                        <select class="form-control category-required" id="search-filter-cat" name="cat">
                                            <option value="0">No category</option>
                                            <?php get_categories_select($conn); ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Generic</label>
                                        <select class="form-control brand-required" id="search-filter-brand" name="brand">
                                            <option value="0">No Brand</option>
                                            <?php get_brands_select($conn); ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Model / variation</label>
                                        <input type="text" class="form-control clear-after" name="model">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group label-floating">
                                        <label class="control-label yes-focused">Expiring date*</label>
                                        <input type="text" class="form-control date-required required" id="exp-date" placeholder="yyyy-mm-dd" name="exp">
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Code</label>
                                        <input type="text" class="form-control clear-after disabled code_field" value="" disabled>
                                        <input type="hidden" name="code" class="code_field" value=""/>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Supplier</label>
                                        <select class="form-control" id="search-filter-supplier" name="supplier">
                                            <option value="0">No supplier</option>
                                            <?php get_suppliers_select($conn); ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group label-floating">
                                        <div class="checkbox inline-block">
                                            <label>
                                                <input type="checkbox" id="availability-checkbox" checked name="availability">
                                            </label>
                                        </div>
                                        <label for="availability-checkbox" class="inline-block">Available</label>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Condition</label>
                                        <select class="form-control" id="search-filter-condition" name="condition">
                                            <?php get_condition_select($conn); ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Buying price(Rs.)*</label>
                                        <input type="text" class="form-control number calc clear-after buy-required required" id="buy" name="buy">
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6 hide">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Tax rate</label>
                                        <select class="form-control" id="search-filter-tax" name="tax">
                                            <!--<option value="0">No tax</option>-->
                                            <?php get_tax_select($conn); ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group label-floating is-focused">
                                        <label class="control-label">Margin(Rs.)</label>
                                        <input type="text" id="expenses" class="form-control calc clear-after" name="expenses" value="">
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Selling price(Rs.)*</label>
                                        <input type="text" id="sell" class="form-control sell-required required number calc clear-after" name="sell" value="">
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Discount type</label>
                                        <select class="form-control clear-after" id="search-filter-offer-type" name="offer_type">
                                            <?php get_offer_select($conn); ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Discount value(Rs. or %)</label>
                                        <input type="text" class="form-control number calc clear-after" value="0" id="offer_amount" name="offer_amount">
                                    </div>
                                </div>
                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Discounted price(Rs.)</label>
                                        <input type="text" id="discounted" class="form-control number clear-after" value="0" name="discounted" value="">
                                    </div>
                                </div>


                                <div class="col-md-4 col-sm-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Quantity</label>
                                        <input type="text" class="form-control number" name="qty" id="qty-field" value="1">
                                    </div>
                                </div>
                                <div class="col-md-9 hide">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Description</label>
                                        <input type="text" class="form-control clear-after" name="desc">
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary pull-right add-product-button" id="add-product-button">Add Product</button>
                                <div class="clearfix">
                                </div>
                            </form>
                            <div class="col-md-4 col-sm-6 image-col">
                                <div class="row">
                                    <div class="form-group label-floating imgUploader">
                                        <div id='img_contain'>
                                            <img id="blah" align='middle' src="<?php echo $baseUrl ?>/assets/img/placeholder-image.png" alt="your image" title=''/>
                                        </div>
                                        <form id="fileUploadForm" method="post" action="action.php" enctype="multipart/form-data">
                                            <input type='file' id="imgInp" name="fileToUpload"/>
                                            <input type="hidden" id="product_name_appeared" name="product_name_appeared"/>
                                            <input type="hidden" id="last_img_id" name="last_img_id" value="0"/>
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12 image-suggest-col">
                                <div class="row">
                                    <ul id="image-suggest-loader">

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>



                <div class="col-md-4 col-sm-6 ">
                    <form class="min-height-form">
                        <div class="card">
                            <div class="card-header" data-background-color="purple">
                                <h4 class="title">Available Brands</h4>
                                <!--<p class="category">Complete your profile</p>-->
                            </div>
                            <div class="card-content">
                                <div class="col-md-12">
                                    <div class="form-group label-floating category-ul-matching-container">
                                        <ul id="category-ul-matching">
                                            <?php // get_available_products($conn);  ?>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
    <?php include_once '../../inc/footer-cont.php'; ?>
</div>
<?php include_once '../../inc/footer.php'; ?>

<script>
    var buy = 0
    var offer_amount = 0
    var expenses = 0
    var search_filter_tax
    var search_filter_offer_type
    var buy_init
    var offer_amount_init
    var expenses_init
    var tax_val
    var tax_val_init
    var offer_type
    var offer_type_init
    $(document).ready(function () {
        $("#availability-checkbox").on('change', function () {
            if ($("#availability-checkbox").prop('checked') == true) {
                $('input#qty-field').val(1);
            } else {
                $('input#qty-field').val(0);
            }
        });
        $('input#qty-field').on('keyup change', function () {
            if ((parseInt($('input#qty-field').val()) < 1) || ($(this).val().length === 0)) {
                $('#availability-checkbox').attr('checked', false);
            } else {
                $('#availability-checkbox').attr('checked', true);
            }
        });
        $('#search-filter-cat').select2({tags: true});
        $('#search-filter-brand').select2({});
        $('#search-filter-supplier').select2({});
        $('#search-filter-condition').select2();
        $('#search-filter-tax').select2({});
        $('#search-filter-offer-type').select2();
        $('input#from-display-name').focus();
        $('#category-ul-matching').load(baseUrl + '/views/products/loop-products.php');
        $("#exp-date").datepicker({
            dateFormat: "yy-mm-dd"
        });
        $("#exp").datepicker({
            dateFormat: "yy-mm-dd"
        });
        $("#imgInp").change(function () {
            readURL(this);
        });
        var go = "";
        $('input.number').on('keyup', function () {
            var currentNumberElement = $(this);
            var number = $(this).val();
            var cnumber = parseFloat(number);

            if (/[0-9]/.test(cnumber)) {
                go = 1;
            } else {
                go = 0;
                var color = 'red';
                var icon = 'times';
                var msg = 'Numbers only';
                push_notificatoin(color, icon, msg);
                currentNumberElement.addClass('validation-error');
                currentNumberElement.val("");
            }
        });
        $('#from-display-name').on('keyup', function () {
            var from_display_name = $(this).val();
            $('#product_name_appeared').val(from_display_name);
        });
        $('#add-product-button').on('click', function (e) {
            e.preventDefault();
            if (document.getElementById("imgInp").files.length == 0) {
                productUpload();
            } else {
                imgUpload();
            }
        });
        $('#imgInp').on('change', function () {
            if (this.files[0].size < 5000000) {

            } else {
                large_file_error();
                $('#imgInp').val("");
                setTimeout(function () {
                    $('#blah').attr('src', baseUrl + '/assets/img/placeholder-image.png');
                }, 651);
            }
        });
        buy = $('#buy');
        offer_amount = $('#offer_amount');
        expenses = $('#expenses');
        search_filter_tax = $('#search-filter-tax');
        search_filter_offer_type = $('#search-filter-offer-type');

        buy_init = buy.val();
        offer_amount_init = offer_amount.val();
        expenses_init = expenses.val();

        if (offer_amount_init == '' || offer_amount_init == '0') {
            offer_amount_init = 0;
        } else {
            offer_amount_init;
        }

        tax_val = search_filter_tax.select2('data');
        tax_val_init = (tax_val[0].text).replace('%', '');
        if (tax_val_init == '0.00') {
            tax_val_init = 1;
        } else {
            tax_val_init;
        }

        offer_type = search_filter_offer_type.select2('data');
        offer_type_init = (offer_type[0].id).replace('%', '');

        buy.on('keyup change', function () {
            var buy_new = $(this).val();
            buy_init = buy_new;
            sell();
            discount();
        });
        offer_amount.on('keyup change', function () {
            var offer_amount_new = $(this).val();
            offer_amount_init = offer_amount_new;
            if (offer_amount_init == "" || offer_amount_init == '0') {
                offer_amount_init = 0;
            } else {
                offer_amount_init;
            }
            offer_amount_init = parseFloat(offer_amount_init);
            sell();
            discount();
        });
        expenses.on('keyup change', function () {
            var expenses_new = $(this).val();
            expenses_init = expenses_new;
            if (expenses_init == '' || expenses_init == '0') {
                expenses_init = 0;
            } else {
                expenses_init;
            }
            expenses_init = parseFloat(expenses_init);
            sell();
            discount();
        });
        $('input#sell').on('keyup change', function () {
            var sell_new_val = $('input#sell').val();
            var buy_val = buy.val();
            var margin_val;
            if (parseFloat(sell_new_val) === parseFloat(buy_val)) {
                margin_val = 0;
                expenses.val(margin_val);
                $('input#expenses').removeClass('loss');
            } else if (parseFloat(sell_new_val) < parseFloat(buy_val)) {
                margin_val = parseFloat(sell_new_val) - parseFloat(buy_val);
                expenses.val(margin_val);
                $('input#expenses').addClass('loss');
            } else {
                margin_val = parseFloat(sell_new_val) - parseFloat(buy_val);
                expenses.val(margin_val);
                $('input#expenses').removeClass('loss');
            }
            expenses.find('.form-group').addClass('is-empty');
            discount();
        });
        search_filter_tax.on('change', function () {
            var tax_val = $(this).select2('data');
            var tax_val_new = (tax_val[0].text).replace('%', '');
            tax_val_init = tax_val_new;
            if (tax_val_init == '0.00') {
                tax_val_init = 1;
            } else {
                tax_val_init;
            }
            sell();
            discount();
        });
        search_filter_offer_type.on('change', function () {
            var offer_type = $(this).select2('data');
            var offer_type_new = (offer_type[0].id).replace('%', '');
            offer_type_init = offer_type_new;
            sell();
            discount();
        });
        get_microtime();
    });
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#blah').attr('src', e.target.result);
                $('#blah').hide();
                $('#blah').fadeIn(650);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }
    function show_matching_cats() {
        var input, filter, ul, li, a, i;
        input = document.getElementById("from-display-name");
        filter = input.value.toUpperCase();
        ul = document.getElementById("category-ul-matching");
        li = ul.getElementsByTagName("li");
        for (i = 0; i < li.length; i++) {
            a = li[i].getElementsByTagName("a")[0];
            if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
                li[i].style.display = "";
            } else {
                li[i].style.display = "none";

            }
        }
        var inputVal = $(event.target).val();
        var search_name_details = {
            search_name: inputVal
        };
        var search_name_details_obj = JSON.stringify(search_name_details);
        if (inputVal.length) {
            $.post('get_matching_img.php', {search_name_detailsJsonData: search_name_details_obj}, function (response) {
                $('#image-suggest-loader').empty();
                $('#image-suggest-loader').html(response);
            });
        } else {
            $('#image-suggest-loader').empty();
        }
    }
    function successfully_added() {
        var color = 'green';
        var icon = 'check';
        var product_name = $('#from-display-name').val();
        var msg = product_name + ' is successfully added';
        push_notificatoin(color, icon, msg);
        $('input.clear-after').val("");
        $('input#imgInp').val("");
        $('img#blah').attr('src', baseUrl + '/assets/img/placeholder-image.png');
        $('.required').removeClass('validation-error');
        var expenses = $('#expenses');
        expenses.val('');
        buy.val('');
        buy_init = 0
        offer_amount_init = 0
        expenses_init = 0
    }
    function validation_error() {
        var color = 'red';
        var icon = 'times';
        var msg = 'Please fill the required fields and submit';
        push_notificatoin(color, icon, msg);
        $('.required').addClass('validation-error');
    }
    function dupicate_validation_error() {
        var color = 'red';
        var icon = 'times';
        var msg = 'Add a different product';
        push_notificatoin(color, icon, msg);
        $('.required').addClass('validation-error');
    }
    function large_file_error() {
        var color = 'red';
        var icon = 'times';
        var msg = 'Image is too large';
        push_notificatoin(color, icon, msg);
    }
    function productUpload() {
        var name_required = $('.name-required');
        var buy_required = $('.buy-required');
        var sell_required = $('.sell-required');
        var typed_cat_name = $('#from-display-name').val();
        var date_required = $('.date-required');

        if ((name_required.val().length > 0) && (sell_required.val().length > 0) && (buy_required.val().length > 0) && (date_required.val().trim() !== '')) {
            $.ajax({
                type: 'get',
                url: 'add-products-call.php',
                data: $('form').serialize(),
                success: function (data) {
                    console.log(data);
                    stop_upload();
                    successfully_added();
                    get_microtime();
                    $('#category-ul-matching').load(baseUrl + '/views/products/loop-products.php');
                }
            });
            $('input#from-display-name').focus();
            $('ul#category-ul-matching li').attr('style', '');
        } else {
            validation_error();
        }
    }
    function imgUpload() {
        var form = $('#fileUploadForm')[0];
        var data = new FormData(form);
        data.append("CustomField", "This is some extra data, testing");
        $("#btnSubmit").prop("disabled", true);
        start_upload();
        $.ajax({
            type: "POST",
            enctype: 'multipart/form-data',
            url: baseUrl + "/controllers/image_upload.php",
            data: data,
            processData: false,
            contentType: false,
            cache: false,
            timeout: 60000,
            success: function (data) {
                $.ajax({
                    type: "POST",
                    url: "last_img_id.php",
                    data: data,
                    success: function (data)
                    {
                        var last_img_id = data;
                        $('input#last_img_id').val($.trim(last_img_id));
                        $.ajax({
                            type: "POST",
                            url: "../../uploads/imgOptimizer.php",
                            data: data,
                            success: function (data)
                            {
                                productUpload();
                            }
                        });
                    }
                });
            },
            error: function () {
                alert("Check your internet connection. Maybe it's too slow");
                stop_upload();
            }
        });
    }
    function sell() {
        var buy_init_store = buy.val();
        if (expenses_init == 0) {
            expenses_init = 0;
        }
        expenses_init = parseFloat(expenses_init);

        if (tax_val_init == '1') {
            buy_init = buy_init_store;
            buy_init = parseFloat(buy_init) + parseFloat(expenses_init);
        } else {
            buy_init = buy_init_store;
            new_tax = (parseFloat(buy_init) / 100) * parseFloat(tax_val_init);
            buy_init = parseFloat(parseFloat(buy_init)) + parseFloat(new_tax) + parseFloat(expenses_init);
        }
        $('input#sell').val(buy_init);
        $('input#sell').closest('.form-group').addClass('is-focused');

        if (buy_init_store > $('input#sell').val()) {
            $('input#sell').addClass('loss');
        } else if (buy_init_store == $('input#sell').val()) {
            $('input#sell').removeClass('loss');
        } else {
            $('input#sell').removeClass('loss');
        }
    }
    function discount() {
        var sell_elem = $('input#sell').val();
        sell_elem = parseFloat(sell_elem);

        if (offer_amount.val().length === 0) {
            $('input#discounted').val("");
        } else {
            if (offer_type_init == '1') {
                new_off = (parseFloat(buy_init) / 100) * parseFloat(offer_amount_init);
                discount_value = parseFloat(sell_elem) - parseFloat(new_off);
            } else if (offer_type_init == '2') {
                discount_value = parseFloat(sell_elem) - parseFloat(offer_amount_init);
            }
            $('input#discounted').closest('.form-group').addClass('is-focused');
            $('input#discounted').val(discount_value);
        }
    }
    function select_product_img() {
        var selected_img = $(event.target);
        var selected_img_id = selected_img.attr('id');
        var selected_img_src = selected_img.attr('src');
        $('div#img_contain > img#blah').attr('src', selected_img_src);
        $('input#last_img_id').val(selected_img_id);
    }
    function get_microtime() {
        $.ajax({
            url: baseUrl + '/inc/microtime.php',
            success: function (data) {
                $('.code_field').closest('.form-group.label-floating').removeClass('is-empty');
                $('.code_field').val(data);
            }
        });
    }
</script>