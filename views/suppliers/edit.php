<?php include_once '../../inc/header.php'; ?>
<?php include_once '../../inc/sidebar.php'; ?>

<?php include_once '../../controllers/connection.php'; ?>

<?php
$id = htmlspecialchars($_GET["id"]);
$get_suppliers = "
SELECT
supplier_id,
supplier_name,
supplier_contact_email,
supplier_phone_no
FROM suppliers
WHERE supplier_id = $id
";
$get_suppliers_to_check = "
SELECT
supplier_id,
supplier_name
FROM suppliers
";
$result_get_suppliers = $conn->query($get_suppliers);
$result_get_suppliers_to_check = $conn->query($get_suppliers_to_check);
?>

<div class="main-panel">
    <?php include_once '../../inc/navbar.php'; ?>
    <div class="content partial-scroll">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header" data-background-color="purple">
                            <h4 class="title"><a href="<?php echo $baseUrl; ?>/views/suppliers/" class="back-btn"><i class="material-icons">arrow_back</i></a>Edit Supplier</h4>
                            <!--<p class="category">Complete your profile</p>-->
                        </div>
                        <div class="card-content">

                            <?php
                            if ($result_get_suppliers->num_rows > 0) {
                                while ($row = $result_get_suppliers->fetch_assoc()) {
                                    ?>
                                    <form class="min-height-form" method="get" action="../../controllers/edit-supplier-call.php">
                                        <input type="hidden" name="user_id" value="<?php echo $user_id_new; ?>"/>
                                        <div class="col-md-6">
                                            <div class="form-group label-floating">
                                                <label class="control-label">Supplier name</label>
                                                <input type="text" class="form-control from-display-name name-required required"  name="supplier_name" id="from-display-name" onkeyup="show_matching_cats()" value="<?php echo $row["supplier_name"]; ?>">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group label-floating">
                                                <label class="control-label">Supplier contact no</label>
                                                <input type="text" maxlength="9" class="form-control from-display-name number" name="supplier_no" id="from-display-name" onkeyup="show_matching_cats()" value="<?php echo $row["supplier_phone_no"]; ?>">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group label-floating">
                                                <label class="control-label">Supplier email</label>
                                                <input type="text" class="form-control from-display-name email"  name="supplier_email" id="from-display-name" onkeyup="show_matching_cats()" value="<?php echo $row["supplier_contact_email"]; ?>">
                                            </div>
                                        </div>
                                        <input type="hidden" value="<?php echo $row["supplier_id"]; ?>" name="supplier_id"/>
                                        <button type="submit" class="btn btn-primary pull-right edit-supplier-button" id="edit-supplier-button">Edit category</button>
                                        <div class="clearfix">
                                        </div>
                                    </form>
                                    <?php
                                }
                            } else {
                                echo "0 results";
                            }
                            ?>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card">
                        <div class="card-header" data-background-color="purple">
                            <h4 class="title">Available Suppliers</h4>
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
        $('#category-ul-matching').load(baseUrl + '/views/suppliers/loop-supp.php');
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
        var msg = 'Add a different category';
        push_notificatoin(color, icon, msg);
        $('.required').addClass('validation-error');
    }

    $('#edit-supplier-button').on('click', function (e) {
        e.preventDefault();
        var name_required = $('.name-required');
        var typed_cat_name = $('#from-display-name').val();

        if (name_required.val().length > 0) {
//            if ($('#category-ul-matching li a:contains("' + typed_cat_name + '")').length) {
//                dupicate_validation_error();
//            } else {
            $.ajax({
                type: 'get',
                url: '../../controllers/edit-supplier-call.php',
                data: $('form').serialize(),
                success: function (data) {
                    successfully_added();
                    $('i.clear-field').remove();
                    $('#category-ul-matching').empty();
                    $('#category-ul-matching').load(baseUrl + '/views/suppliers/loop-supp.php');
                },
                error: function (data) {
                    system_error();
                }
            });
            $('input#from-display-name').focus();
            $('ul#category-ul-matching li').attr('style', '');
//            }
        } else {
            validation_error();
        }
    });

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