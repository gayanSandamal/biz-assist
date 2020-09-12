<?php
include_once '../../controllers/connection.php';
//$branch_loc_id = htmlspecialchars($_GET["branch_location"]);
$branch_loc_id = htmlspecialchars($_GET["branch_loc_id"]);
$from_date = htmlspecialchars($_GET["from_date"]);
$to_date = htmlspecialchars($_GET["to_date"]);


//date_default_timezone_set('Asia/Calcutta');
$today = date("Y-m-d");

$today_strtotime = strtotime($today . ' +2 month');
$today_strtotime_after = date('Y-m-d', $today_strtotime);

$get_delete_log = "
SELECT
d.delete_log_id,
d.time,
d.details,
d.user_id,
u.username,
u.first_name,
u.last_name,
b.branch_location
FROM delete_log d
LEFT OUTER JOIN `user` u
ON u.user_id = d.user_id
LEFT OUTER JOIN branch b
ON b.branch_id = u.branch_id
WHERE d.time BETWEEN '$today' AND '$today_strtotime_after' AND b.branch_id = '$branch_loc_id'
AND NOT u.user_level_id = 0
        ";
$result_get_delete_log = $conn->query($get_delete_log);

$get_login_log = "
SELECT
l.login_log_id,
l.user_id,
u.username,
b.branch_location,
l.login_time,
l.logout_time
FROM login_log l
LEFT OUTER JOIN `user` u
ON u.user_id = l.user_id
LEFT OUTER JOIN branch b
ON b.branch_id = u.branch_id
WHERE l.login_time BETWEEN '$today'
AND '$today_strtotime_after'
AND b.branch_id = '$branch_loc_id'
AND NOT u.user_level_id = 0
        ";
$result_get_login_log = $conn->query($get_login_log);

$get_edit_log = "
SELECT
	ed.product_id,
	ed.product_name,
	ed.product_desc,
	c.cat_name,
	b.brand_name,
	br.branch_location,
	ed.product_model_no,
	ed.product_code_no,
	s.supplier_name,
	ed.buying_price,
	ed.selling_price,
	ed.availability,
	ed.tax_id,
	ed.offer_type_id,
	ed.offer_value,
	ed.discounted,
	ed.product_added_date,
	ed.product_exp_date,
	ed.user_id,
	ed.qty,
	ed.product_condition_id,
	pcon.product_condition_state,
        u.first_name
FROM
	edit_log ed
LEFT OUTER JOIN category c ON c.cat_id = ed.product_cat_id
LEFT OUTER JOIN brand b ON b.brand_id = ed.product_brand_id
LEFT OUTER JOIN suppliers s ON s.supplier_id = ed.supplier_id
LEFT OUTER JOIN product_condition pcon ON pcon.product_condition_id = ed.product_condition_id
LEFT OUTER JOIN user u ON u.user_id = ed.user_id
LEFT OUTER JOIN branch br ON br.branch_id = ed.branch_id
WHERE ed.branch_id = '$branch_loc_id' AND ed.flag = 1
ORDER BY
	c.cat_name ASC
";
$result_get_edit_log = $conn->query($get_edit_log);
?>
<script>
    $(document).ready(function () {
        $('.details-expand').on('click', function () {
            var details_expand_container = $(this).find('.details-expand-container').text();
            var details_expand_container_result = details_expand_container.replace(/\,/g, '<br/>');
            var details_container = `
            <div class="sale_detail_container">
                <div class="sale_detail_block" style="max-width: 500px">
                    <div class="close-detail-btn">
                        <i class="material-icons" onclick="remove_pop_up()">close</i>
                    </div>
                    <div class="sale_detail_container_loader">` + details_expand_container_result + `</div>
                </div>
            </div>
        `;
            $('body').append(details_container);
        });
    });
    function remove_pop_up() {
        $('.sale_detail_container').remove();
    }
</script>
<!--<div class="row">-->
<h3 class="dash-sector-title">All logs</h3>
<div class="col-lg-6 col-md-12">
    <div class="card card-nav-tabs">
        <div class="card-header" data-background-color="green">
            <div class="nav-tabs-navigation">
                <div class="nav-tabs-wrapper">
                    <!--<span class="nav-tabs-title">Items:</span>-->
                    <ul class="nav nav-tabs" data-tabs="tabs">

                        <li class="active">
                            <a href="#login_log" data-toggle="tab">
                                <i class="material-icons">account_circle</i> User login log
                                <div class="ripple-container"></div>
                            </a>
                        </li>
                        <li class="">
                            <a href="#delete_log" data-toggle="tab">
                                <i class="material-icons">remove_circle_outline</i> Product delete log
                                <div class="ripple-container"></div>
                            </a>
                        </li>
                        <li class="">
                            <a href="#edit_log" data-toggle="tab">
                                <i class="material-icons">mode_edit</i> Product edit log
                                <div class="ripple-container"></div>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
        <div class="card-content">
            <div class="tab-content">
                <div class="tab-pane active" id="login_log">
                    <div class="dash-table-scroll">
                        <table class="table table-hover" id="cat-table">
                            <thead class="text-warning">
                            <th><span>#</span></th>
                            <th><span>User &nbsp; &nbsp;</span></th>
                            <th style="min-width: 100px;"><span>Branch location &nbsp; &nbsp;</span></th>
                            <th><span>Login time &nbsp; &nbsp;</span></th>
                            <th><span>Logout time &nbsp; &nbsp;</span></th>
                            </thead>
                            <tbody>
                                <?php
                                if ($result_get_login_log->num_rows > 0) {
                                    $numOrder = 1;
                                    while ($row = $result_get_login_log->fetch_assoc()) {
                                        ?>
                                        <tr id="<?php echo $row["delete_log_id"]; ?>">
                                            <td style="width: 10%"><?php echo ($numOrder++); ?></td>
                                            <td><?php echo $row["username"]; ?></td>
                                            <td style="min-width: 100px;"><?php echo $row["branch_location"]; ?></td>
                                            <td style="white-space: nowrap;"><?php echo $row["login_time"]; ?></td>
                                            <td style="white-space: nowrap;"><?php echo $row["logout_time"]; ?></td>
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
                </div>
                <div class="tab-pane" id="delete_log">
                    <div class="dash-table-scroll">
                        <table class="table table-hover" id="cat-table">
                            <thead class="text-warning">
                            <th><span>#</span></th>
                            <th><span>Time</span></th>
                            <th><span>Details</span></th>
                            <th style="width:100px;"><span>Deleted by</span></th>
                            <th><span>Deleted at</span></th>
                            </thead>
                            <tbody>
                                <?php
                                if ($result_get_delete_log->num_rows > 0) {
                                    $numOrder = 1;
                                    while ($row = $result_get_delete_log->fetch_assoc()) {
                                        ?>
                                        <tr id="<?php echo $row["delete_log_id"]; ?>">
                                            <td style="width: 10%"><?php echo ($numOrder++); ?></td>
                                            <td style="white-space: nowrap;"><?php echo $row["time"]; ?></td>
                                            <td class="details-expand">
                                                <span class="details-expand-container"><?php echo $row["product_name"]; ?></span>
                                            </td>
                                            <td><?php echo $row["username"]; ?></td>
                                            <td><?php echo $row["branch_location"]; ?></td>
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
                </div>
                <div class="tab-pane" id="edit_log">
                    <div class="dash-table-scroll">
                        <table class="table table-hover" id="cat-table">
                            <thead class="text-warning">
                            <th><span>#</span></th>
                            <th><span>Time</span></th>
                            <th><span>Details</span></th>
                            <th style="width:100px;"><span>Edited by</span></th>
                            <th><span>Edited at</span></th>
                            </thead>
                            <tbody>
                                <?php
                                if ($result_get_edit_log->num_rows > 0) {
                                    $numOrder = 1;
                                    while ($row = $result_get_edit_log->fetch_assoc()) {
                                        ?>
                                        <tr id="<?php echo $row["product_id"]; ?>">
                                            <td style="width: 10%"><?php echo ($numOrder++); ?></td>
                                            <td><?php echo $row["product_added_date"]; ?></td>
                                            <td><?php echo $row["product_name"]; ?>
                                            </td>
                                            <td><?php echo $row["first_name"]; ?></td>
                                            <td><?php echo $row["branch_location"]; ?></td>
                                            <td>
                                                <span class="edit-detail-btn btn btn-primary" onclick="editDiff('<?php echo $row["product_id"]; ?>')">Difference</span>
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
                </div>
            </div>
        </div>
    </div>
</div>
<!--</div>-->
<style>
    .edit-detail-btn {
        cursor: pointer;
    }
    div#diffHolder {
        position: fixed;
        top: 0px;
        left: 0px;
        width: 100%;
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        background-color: rgba(0,0,0,0.6);
        z-index: 9;
    }
    .edit-diff-window-container {
        width: 100%;
        max-width: 600px;
    }
    .edit-diff-window table {
        width: 100%;
    }
    .card-header {
        position: relative;
        overflow: hidden;
    }
    .close-detail-btn {
        padding: 14px 15px 13px 15px;
    }
    table#diffTable tr.diff {
        background-color: #f44336;
        color: #fff;
    }
    table#diffTable tr td,
    table#diffTable tr th {
        padding: 0px 5px;
    }
</style>
<script>
    function editDiff(diffId) {
        $.ajax({
            type: 'GET',
            url: 'edit-diff.php',
            data: {del_id: diffId},
            success: function (data) {
                console.log(data);
                var detail_page_url = 'edit-diff.php?del_id=' + diffId;
                $('body').append('<div id="diffHolder"></div>');
                $('#diffHolder').load(detail_page_url);
            }
        });
    }
    function remove_diff() {
        $('#diffHolder').remove();
    }
</script>