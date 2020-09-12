<?php include_once '../../inc/header.php'; ?>
<?php include_once '../../inc/sidebar.php'; ?>

<?php include_once '../../controllers/connection.php'; ?>

<?php
//$id = htmlspecialchars($_GET["id"]);
//===================================
$get_user_details = "
SELECT
u.user_id,
u.username,
u.first_name,
u.last_name,
u.phone,
u.email,
u.password,
u.user_level_id,
ul.user_level,
u.branch_id,
b.branch_name,
b.branch_location
FROM
`user` u
LEFT OUTER JOIN user_level ul
ON ul.user_level_id = u.user_level_id
LEFT OUTER JOIN branch b
ON b.branch_id = u.branch_id
WHERE u.user_id = $user_id_new
";
$result_get_user_details = $conn->query($get_user_details);

if ($result_get_user_details->num_rows > 0) {
    while ($row = $result_get_user_details->fetch_assoc()) {
        $user_id = $row["user_id"];
        $username = $row["username"];
        $first_name = $row["first_name"];
        $last_name = $row["last_name"];
        $phone = $row["phone"];
        $email = $row["email"];
        $user_level_id = $row["user_level_id"];
        $user_level = $row["user_level"];
        $branch_id = $row["branch_id"];
        $branch_name = $row["branch_name"];
        $branch_location = $row["branch_location"];
        $password = $row["password"];
    }
}
//===================================
$get_user_levels = "
    SELECT
    ul.user_level_id,
    ul.user_level
    FROM user_level ul
    WHERE NOT ul.user_level_id IN (0,2,3,4,5,6,7,8,9,10,11,12,14,15,16,17,18,$user_level_id)
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
    WHERE NOT b.branch_id = $branch_id
";
$result_get_locators = $conn->query($get_locators);

//======================================
?>

<div class="main-panel">
    <?php include_once '../../inc/navbar.php'; ?>
    <div class="content partial-scroll">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header" data-background-color="purple">
                            <h4 class="title"><a href="<?php echo $baseUrl; ?>/views/profile/" class="back-btn"><i class="material-icons">arrow_back</i></a>Change password</h4>
                            <!--<p class="category">Complete your profile</p>-->
                        </div>
                        <div class="card-content">
                            <form class="min-height-form" method="get">
                                <input type="hidden" name="user_id" value="<?php echo $user_id; ?>"/>
                                <div class="col-md-4">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Old password</label>
                                        <input type="password" class="form-control old-password required" name="old-password" value="">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group label-floating">
                                        <label class="control-label">New password</label>
                                        <input type="password" class="form-control new-password required" name="new-password" value="">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Re-enter new password</label>
                                        <input type="password" class="form-control re-new-password required"value="">
                                    </div>
                                </div>
                                <!--                                <div class="col-md-6">
                                                                    <div class="form-group label-floating">
                                                                        <label class="control-label">Password</label>
                                                                        <input type="password" class="form-control password-required required"  name="password">
                                                                    </div>
                                                                </div>-->
                                <!--                                <div class="col-md-6">
                                                                    <div class="form-group label-floating">
                                                                        <label class="control-label">Re-enter password</label>
                                                                        <input type="password" class="form-control re-password-required required">
                                                                    </div>
                                                                </div>-->

                                <button type="submit" class="btn btn-primary pull-right add-user-button" id="change-password-button">Change password</button>
                                <div class="clearfix">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card card-profile">
                        <div class="card-avatar">
                            <a href="#pablo">
                                <img class="img" src="<?php echo $baseUrl; ?>/common-resources/assets/img/user-placeholder-image.jpg">
                            </a>
                        </div>
                        <div class="card-body">
                            <h6 class="card-category text-gray"><?php echo $user_level; ?></h6>
                            <h4 class="card-title"><?php echo $first_name . ' ' . $last_name; ?></h4>
                            <a class="btn btn-primary btn-round" id="change-password-alt-btn">Change password</a>
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
        $('#change-password-alt-btn').on('click', function (e) {
            e.preventDefault();
            $('#change-password-button').trigger('click');
        });
    });
    function successfully_added() {
        var color = 'green';
        var icon = 'check';
        var msg = 'Your password is successfully updated';
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
        $('.new-password').addClass('validation-error');
        $('.re-new-password').addClass('validation-error');
    }
    function old_password_error() {
        var color = 'red';
        var icon = 'times';
        var msg = 'Your old password is not matching with the new password';
        push_notificatoin(color, icon, msg);
        $('.required').removeClass('validation-error');
        $('.old-password').addClass('validation-error');
        $('.new-password').addClass('validation-error');
    }
    $('#edit-user-button').on('click', function (e) {
        $('#edit-user-button').trigger('#edit-user-button');
    });

    $('#change-password-button').on('click', function (e) {
        e.preventDefault();
        var old_password = $('.old-password');
        var new_password = $('.new-password');
        var re_new_password = $('.re-new-password');

        if ((old_password.val().length > 0) && (new_password.val().length > 0) && (re_new_password.val().length > 0)) {
            if (new_password.val() === re_new_password.val()) {
                $.ajax({
                    type: 'get',
                    url: '../../controllers/change-password-call.php',
                    data: $('form').serialize(),
                    success: function (data) {
                        if ($.trim(data) == 'true') {
                            successfully_added();
                            $('i.clear-field').remove();
                        } else {
                            old_password_error();
                        }
                    }
                });
                $('input#from-display-name').focus();
            } else {
                password_error();
            }
        } else {
            validation_error();
        }
    });
</script>