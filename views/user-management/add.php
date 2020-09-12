<?php include_once '../../inc/header.php'; ?>
<?php include_once '../../inc/sidebar.php'; ?>

<?php include_once '../../controllers/connection.php'; ?>

<?php // include_once 'select-categories.php'; ?>
<?php
$get_user_levels = "
    SELECT
    ul.user_level_id,
    ul.user_level
    FROM user_level ul
    WHERE NOT ul.user_level_id IN (0,2,3,4,5,6,7,8,9,10,11,12,14,15,16,17,18)
";
$result_get_user_levels = $conn->query($get_user_levels);

$get_store_locators = "
    SELECT
    b.branch_id,
    b.branch_name,
    b.branch_location
    FROM
    branch b
";
$result_get_store_locators = $conn->query($get_store_locators);

$get_locators = "
    SELECT
    b.branch_id,
    b.branch_name,
    b.branch_location
    FROM
    branch b
";
$result_get_locators = $conn->query($get_locators);
?>

<div class="main-panel">
    <?php include_once '../../inc/navbar.php'; ?>
    <div class="content partial-scroll">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header" data-background-color="purple">
                            <h4 class="title"><a href="<?php echo $baseUrl; ?>/views/user-management/" class="back-btn"><i class="material-icons">arrow_back</i></a>Add User</h4>
                            <!--<p class="category">Complete your profile</p>-->
                        </div>
                        <div class="card-content">
                            <form class="min-height-form" method="get">
                                <div class="col-md-12">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Username</label>
                                        <input type="text" class="form-control from-display-name username-required required"  name="username" id="from-display-name" onkeyup="show_matching_cats()">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">First name</label>
                                        <input type="text" class="form-control first-name-required required"  name="firstname">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Last name</label>
                                        <input type="text" class="form-control last-name-required required"  name="lastname">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Phone</label>
                                        <input type="tel" class="form-control phone-required required"  name="phone">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Email</label>
                                        <input type="tel" class="form-control email-required required"  name="email">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label selected">Store locator</label>
                                        <select class="form-control search-filter" id="search-filter-locator" name="locator">
                                            <?php
                                            if ($result_get_locators->num_rows > 0) {
                                                while ($row = $result_get_locators->fetch_assoc()) {
                                                    ?>
                                                    <option value="<?php echo $row["branch_id"]; ?>"><?php echo $row["branch_name"] . "(" . $row["branch_location"] . ")"; ?></option>
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
                                        <label class="control-label selected">User level</label>
                                        <select class="form-control search-filter" id="search-filter-userlevel" name="userlevel">
                                            <?php
                                            if ($result_get_user_levels->num_rows > 0) {
                                                while ($row = $result_get_user_levels->fetch_assoc()) {
                                                    ?>
                                                    <option value="<?php echo $row["user_level_id"]; ?>"><?php echo $row["user_level"]; ?></option>
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
                                        <label class="control-label">Password</label>
                                        <input type="password" class="form-control password-required required"  name="password">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Re-enter password</label>
                                        <input type="password" class="form-control re-password-required required">
                                    </div>
                                </div>

                                <button type="submit" class="btn btn-primary pull-right add-user-button" id="add-user-button">Add user</button>
                                <div class="clearfix">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header" data-background-color="purple">
                            <h4 class="title">Available Users</h4>
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
        $('#search-filter-locator').select2();
        $('#search-filter-userlevel').select2();
        $('input#from-display-name').focus();
        $('#category-ul-matching').load(baseUrl + '/views/user-management/loop-cats.php');
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

    var product_name = $('.from-display-name').val();
    function successfully_added() {
        var color = 'green';
        var icon = 'check';
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
    function password_error() {
        var color = 'red';
        var icon = 'times';
        var msg = 'Re-entered is not matching with the given password';
        push_notificatoin(color, icon, msg);
        $('.required').removeClass('validation-error');
        $('.password-required').addClass('validation-error');
        $('.re-password-required').addClass('validation-error');
    }
    function dupicate_validation_error() {
        var color = 'red';
        var icon = 'times';
        var msg = product_name + ' is already exsits, add a different username';
        push_notificatoin(color, icon, msg);
        $('.required').addClass('validation-error');
    }

    $('#add-user-button').on('click', function (e) {
        e.preventDefault();
        var username_required = $('.username-required');
        var first_name_required = $('.first-name-required');
        var last_name_required = $('.last-name-required');
        var phone_required = $('.phone-required');
        var email_required = $('.email-required');
        var password_required = $('.password-required');
        var re_password_required = $('.re-password-required');
        var typed_cat_name = $('#from-display-name').val();

        if ((username_required.val().length > 0) && (first_name_required.val().length > 0) && (last_name_required.val().length > 0) && (phone_required.val().length > 0) && (email_required.val().length > 0) && (password_required.val().length > 0)) {
            if (password_required.val() === re_password_required.val()) {
                if ($('#category-ul-matching li a:contains("' + typed_cat_name + '")').length) {
                    dupicate_validation_error();
                } else {
                    $.ajax({
                        type: 'get',
                        url: 'add-user-call.php',
                        data: $('form').serialize(),
                        success: function (data) {
                            console.log(data);
                            successfully_added();
                            $('i.clear-field').remove();
                            $('#category-ul-matching').empty();
                            $('#category-ul-matching').load(baseUrl + '/views/user-management/loop-cats.php');
//                        refresh_cat_list();
                        }
                    });
                    $('input#from-display-name').focus();
                    $('ul#category-ul-matching li').attr('style', '');
                }
            } else {
                password_error();
            }
        } else {
            validation_error();
        }
    });

//    function refresh_cat_list() {
//        $('#search-filter-cat').load(baseUrl + '/views/user-management/loop-locators.php');
//    }
</script>