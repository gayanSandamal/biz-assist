<?php include_once '../../inc/header.php'; ?>
<?php include_once '../../inc/sidebar.php'; ?>

<?php include_once '../../controllers/connection.php'; ?>

<?php
$id = htmlspecialchars($_GET["id"]);
$get_categories_to_check = "
SELECT
cat_id,
cat_name
FROM category
WHERE NOT cat_id = 0
ORDER BY cat_name
";
$get_all_categories = "
SELECT
cat_id,
cat_name
FROM category
WHERE NOT cat_id = 0
ORDER BY cat_name
";
$view_edit_category = "
SELECT
t1.cat_id as edit_category_id,
t1.cat_name as edit_category_name,
t2.cat_name AS edit_parent_category_name
FROM category AS t2
INNER JOIN category AS t1 ON t1.parent_cat_id = t2.cat_id
WHERE t1.cat_id = $id;
";
$view_edit_parent_category = "
SELECT
t1.cat_id AS edit_category_id,
t1.cat_name AS edit_category_name,
t2.cat_id AS edit_parent_category_id,
t2.cat_name AS edit_parent_category_name
FROM category AS t2
INNER JOIN category AS t1 ON t1.parent_cat_id = t2.cat_id
WHERE t1.cat_id = $id;
";

$result_get_categories_to_check = $conn->query($get_categories_to_check);
$result_get_all_categories = $conn->query($get_all_categories);
$result_view_edit_parent_category = $conn->query($view_edit_parent_category);
$result_view_edit_category = $conn->query($view_edit_category);
?>
<div class="main-panel">
    <?php include_once '../../inc/navbar.php'; ?>
    <div class="content partial-scroll">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-header" data-background-color="purple">
                            <h4 class="title"><a href="<?php echo $baseUrl; ?>/views/categories/" class="back-btn"><i class="material-icons">arrow_back</i></a>Edit Category</h4>
                            <!--<p class="category">Complete your profile</p>-->
                        </div>
                        <div class="card-content">
                            <form class="min-height-form" method="get" action="../../controllers/edit-category-call.php">
                                <input type="hidden" name="user_id" value="<?php echo $user_id_new; ?>"/>
                                <div class="col-md-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Name</label>
                                        <?php
                                        if ($result_view_edit_category->num_rows > 0) {
                                            while ($row = $result_view_edit_category->fetch_assoc()) {
                                                ?>
                                                <input type="text" class="form-control from-display-name name-required required"  name="cat" id="from-display-name" onkeyup="show_matching_cats()" value="<?php echo $row["edit_category_name"]; ?>">
                                                <?php
                                            }
                                        } else {
                                            echo "0 results";
                                        }
                                        ?>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group label-floating">
                                        <label class="control-label">Parent category</label>
                                        <select class="form-control search-filter" id="search-filter-cat" name="parent_cat">
                                            <option value="0">Don't add a parent category</option>
                                            <?php
                                            if ($result_view_edit_parent_category->num_rows > 0) {
                                                while ($row = $result_view_edit_parent_category->fetch_assoc()) {
                                                    ?>
                                                    <option selected value="<?php echo $row["edit_parent_category_id"]; ?>"><?php echo $row["edit_parent_category_name"]; ?></option>
                                                    <?php
                                                }
                                            } else {
                                                echo "0 results";
                                            }
                                            ?>
                                            <?php
                                            if ($result_get_all_categories->num_rows > 0) {
                                                while ($row = $result_get_all_categories->fetch_assoc()) {
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
                                <input type="hidden" value="<?php echo $id; ?>" name="id"/>
                                <button type="submit" class="btn btn-primary pull-right edit-category-button" id="edit-category-button">Edit category</button>
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
//        $('input').val("");
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

    $('#edit-category-button').on('click', function (e) {
        e.preventDefault();
        var name_required = $('.name-required');
//        var typed_cat_name = $('#from-display-name').val();

        if (name_required.val().length > 0) {
//            if ($('#category-ul-matching li a:contains("' + typed_cat_name + '")').length) {
//                dupicate_validation_error();
//            } else {
            $.ajax({
                type: 'get',
                url: '../../controllers/edit-user-call.php',
                data: $('form').serialize(),
                success: function (data) {
                    console.log(data);
                    successfully_added();
                    $('i.clear-field').remove();
                    $('#category-ul-matching').empty();
                    $('#category-ul-matching').load(baseUrl + '/views/categories/loop-cats.php');
                }
            });
            $('input#from-display-name').focus();
            $('ul#category-ul-matching li').attr('style', '');
//            }
        } else {
            validation_error();
        }
    });
</script>