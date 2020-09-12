<?php
include_once '../controllers/connection.php';

//date_default_timezone_set('Asia/Calcutta');
$today = date("Y-m-d");

$today_strtotime = strtotime($today . ' +2 month');
$today_strtotime_after = date('Y-m-d', $today_strtotime);

echo $get_count_expiring_items = "
SELECT
COUNT(p.product_id) AS exp_count
FROM product p
LEFT OUTER JOIN branch br
ON br.branch_id = p.branch_id
WHERE p.product_exp_date BETWEEN '$today' AND '$today_strtotime_after' AND br.branch_id = '$branch_id'
ORDER BY p.product_exp_date ASC
";
$result_count_get_expiring_items = $conn->query($get_count_expiring_items);

if ($result_count_get_expiring_items->num_rows > 0) {
    while ($row = $result_count_get_expiring_items->fetch_assoc()) {
        echo $exp_count = $row["exp_count"];
    }
} else {
    echo "0 results";
}
?>

<script>
    $(document).ready(function () {
        $('.navbar .navbar-nav > li > a').on('click', function(){
            $(this).closest('.dropdown').toggleClass('open');
        });
        
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