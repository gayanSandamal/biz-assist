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

$get_expiring_items = "
SELECT
p.product_id,
p.product_name,
p.product_model_no,
p.product_code_no,
c.cat_name,
b.brand_name,
br.branch_location,
br.branch_name,
p.product_exp_date
FROM product p
LEFT OUTER JOIN category c
ON c.cat_id = p.product_cat_id
LEFT OUTER JOIN brand b
ON b.brand_id = p.product_brand_id
LEFT OUTER JOIN branch br
ON br.branch_id = p.branch_id
WHERE p.product_exp_date BETWEEN '$today' AND '$today_strtotime_after' AND br.branch_id = '$branch_loc_id'
ORDER BY p.product_exp_date ASC
        ";
$result_get_expiring_items = $conn->query($get_expiring_items);

$get_count_expiring_items = "
SELECT
COUNT(p.product_id) AS exp_count
FROM product p
LEFT OUTER JOIN branch br
ON br.branch_id = p.branch_id
WHERE p.product_exp_date BETWEEN '$today' AND '$today_strtotime_after' AND br.branch_id = '$branch_loc_id'
ORDER BY p.product_exp_date ASC
        ";
$result_count_get_expiring_items = $conn->query($get_count_expiring_items);

if ($result_count_get_expiring_items->num_rows > 0) {
    while ($row = $result_count_get_expiring_items->fetch_assoc()) {
        $exp_count = $row["exp_count"];
    }
} else {
    echo "0 results";
}
?>
<script>
    $(document).ready(function () {
        detect_notification_change();
        var exp_count = "<?php echo $exp_count; ?>";
        if (!exp_count.trim()) {
            $('#notification_ul_exp').remove();
            detect_notification_change();
        } else if (exp_count == '0') {
            $('#notification_ul_exp').remove();
            detect_notification_change();
        } else {
            $('#notification_ul_exp').remove();
            var notif_li = `
                        <li class="notification_ul_exp" id="notification_ul_exp">
                            <a href="` + baseUrl + `/views/dashboard/#dashboard-section-4">
                                <span class="notification_ul_exp_count" id="notification_ul_exp_count">` + exp_count + `</span> items are expiring soon
                            </a>
                        </li>
            `;
            $('#notification_ul').prepend(notif_li);
            detect_notification_change();
        }
    });
    function detect_notification_change() {
        var notification_count = $('ul.dropdown-menu.notification_ul > li').length;
        if (notification_count < 1) {
            $('ul#notification_ul').removeClass('after');
            $('.navbar .notification').removeClass('after');
        } else {
            $('ul#notification_ul').addClass('after');
            $('.navbar .notification').addClass('after');
            $('.navbar .notification').text(notification_count);
        }
    }
</script>

<h3 class="dash-sector-title">Expiring details</h3>
<!--<div class="row">-->
    <div class="col-lg-6 col-md-12">
        <div class="card card-nav-tabs">
            <div class="card-header" data-background-color="blue">
                <div class="nav-tabs-navigation">
                    <div class="nav-tabs-wrapper">
                        <span class="nav-tabs-title">Items:</span>
                        <ul class="nav nav-tabs" data-tabs="tabs">
                            <li class="active">
                                <a href="#items" data-toggle="tab">
                                    <i class="material-icons">mood_bad</i> Expiring within 2 months
                                    <div class="ripple-container"></div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="card-content">
                <div class="tab-content">
                    <div class="tab-pane active" id="items">
                        <div class="dash-table-scroll">
                            <table class="table table-hover" id="cat-table">
                                <thead class="text-warning">
                                <th><span>Rank</span></th>
                                <th><span>Name</span></th>
                                <th><span>Model</span></th>
                                <th><span>Brand</span></th>
                                <th><span>Category</span></th>
                                <th><span>Expire date</span></th>
                                <th></th>
                                </thead>
                                <tbody>
                                    <?php
                                    if ($result_get_expiring_items->num_rows > 0) {
                                        $numOrder = 1;
                                        while ($row = $result_get_expiring_items->fetch_assoc()) {
                                            ?>
                                            <tr id="<?php echo $row["product_id"]; ?>">
                                                <td style="width: 10%"><?php echo ($numOrder++); ?></td>
                                                <td><?php echo $row["product_name"]; ?></td>
                                                <td><?php echo $row["product_model_no"]; ?></td>
                                                <td><?php echo $row["brand_name"]; ?></td>
                                                <td><?php echo $row["cat_name"]; ?></td>
                                                <td><?php echo $row["product_exp_date"]; ?></td>
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