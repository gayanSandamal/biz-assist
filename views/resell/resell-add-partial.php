<?php // include_once '../../inc/navbar.php';        ?>
<div class="col-md-12">
    <div class="card">
        <div class="card-header" data-background-color="purple">
            <h4 class="title">
<!--                <a href="<?php // echo $baseUrl;    ?>/views/customers/" class="back-btn">
                    <i class="material-icons">arrow_back</i>
                </a>Add new reselling item</h4>-->
                Add new reselling item
            <!--<p class="category">Complete your profile</p>-->
        </div>
        <div class="card-content">
            <form class="min-height-form" method="get" action="add-supplier-call.php">
                <div class="col-md-6">
                    <div class="form-group label-floating">
                        <label class="control-label">Product name</label>
                        <input type="text" class="form-control name-required required clear-after"  name="name" id="resell-item-name">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group label-floating">
                        <label class="control-label">Supplier name</label>
                        <input type="text" class="form-control supplier-required required clear-after"  name="supplier_name" id="resell-supplier-name">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group label-floating">
                        <label class="control-label">Buying price</label>
                        <input type="text" class="form-control buy-required required number" id="resell-buying-price" name="buying_price">
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group label-floating">
                        <label class="control-label">Selling price</label>
                        <input type="text" class="form-control sell-required required number" id="resell-selling-price" name="selling_price">
                    </div>
                </div>
                <button type="button" class="btn btn-primary pull-right add-supplier-button col-md-6 col-sm-6" id="add-resel-button" onclick="add_resell()">Add item</button>
                <div class="clearfix">
                </div>
            </form>
        </div>
    </div>
</div>
<?php // include_once '../../inc/footer-cont.php'; ?>
<?php // include_once '../../inc/footer.php'; ?>

<script>
    $(document).ready(function () {
//        $('#search-filter-cat').select2();
        $('#resell-item-name').focus();
//        $('#category-ul-matching').load(baseUrl+'/views/customers/loop-customer.php');
//        refresh_cat_list();
    });
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
    }

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
    function number_error() {
        var color = 'red';
        var icon = 'times';
        var msg = 'Numbers only';
        push_notificatoin(color, icon, msg);
        $('input.number').addClass('validation-error');
    }
    function dupicate_validation_error() {
        var color = 'red';
        var icon = 'times';
        var msg = 'Add a different phone number';
        push_notificatoin(color, icon, msg);
        $('.required').addClass('validation-error');
    }

    var go = "";
    $('input.number').on('keyup', function () {
        var number = $(this).val();
        var cnumber = parseFloat(number);

        if (isNaN(cnumber))
        {
            go = 0;
            number_error();
            $(this).val("");
        } else {
            go = 1;
        }
    });
</script>