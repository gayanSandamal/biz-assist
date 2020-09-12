<?php include_once '../../inc/header.php'; ?>
<?php include_once '../../inc/sidebar.php'; ?>

<?php include_once '../../controllers/connection.php'; ?>

<?php include_once 'select-categories.php'; ?>

<div class="main-panel">
<?php include_once '../../inc/navbar.php'; ?>
    <div class="content partial-scroll">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header" data-background-color="purple">
                            <h4 class="title"><a href="<?php echo $baseUrl; ?>/views/categories/" class="back-btn"><i class="material-icons">arrow_back</i></a>Add Category</h4>
                            <!--<p class="category">Complete your profile</p>-->
                        </div>
                        <div class="card-content">
                            <form class="min-height-form" method="get" action="../../controllers/add-category-call.php">
                                <input type="hidden" name="user_id" value="<?php echo $user_id_new; ?>"/>
                                <div class="col-md-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Category name</label>
                                        <input type="text" class="form-control from-display-name name-required required"  name="cat" id="from-display-name" onkeyup="show_matching_cats()">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label selected">Parent category</label>
                                        <select class="form-control search-filter" id="search-filter-cat" name="parent_cat">

                                        </select>
                                    </div>
                                </div>

                                <button type="submit" class="btn btn-primary pull-right add-category-button" id="add-category-button">Add category</button>
                                <div class="clearfix">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header" data-background-color="purple">
                            <h4 class="title">Available Categories</h4>
                            <!--<p class="category">Complete your profile</p>-->
                        </div>
                        <div class="card-content">
                            <form class="min-height-form">
                                <div class="col-md-12">
                                    <div class="form-group label-floating category-ul-matching-container">
                                        <ul id="category-ul-matching">

                                        </ul>
                                    </div>
                                </div>

                            </form>
                        </div>
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
        $('#search-filter-cat').select2();
        $('input#from-display-name').focus();
        $('#category-ul-matching').load(baseUrl + '/views/categories/loop-cats.php');
        refresh_cat_list();
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
    function dupicate_validation_error() {
        var color = 'red';
        var icon = 'times';
        var msg = 'Add a different category';
        push_notificatoin(color, icon, msg);
        $('.required').addClass('validation-error');
    }

    $('#add-category-button').on('click', function (e) {
        e.preventDefault();
        var name_required = $('.name-required');
        var typed_cat_name = $('#from-display-name').val();

        if (name_required.val().length > 0) {
            if ($('#category-ul-matching li a:contains("' + typed_cat_name + '")').length) {
                dupicate_validation_error();
            } else {
                $.ajax({
                    type: 'get',
                    url: 'add-category-call.php',
                    data: $('form').serialize(),
                    success: function (data) {
                        console.log(data);
                        successfully_added();
                        $('i.clear-field').remove();
                        $('#category-ul-matching').empty();
                        $('#category-ul-matching').load(baseUrl + '/views/categories/loop-cats.php');
                        refresh_cat_list();
                    }
                });
                $('input#from-display-name').focus();
                $('ul#category-ul-matching li').attr('style', '');
            }
        } else {
            validation_error();
        }
    });

    function refresh_cat_list() {
//        $('#search-filter-cat > option:not(.init)').remove();
        $('#search-filter-cat').load(baseUrl + '/views/categories/loop-add-cats.php');
    }
</script>