<?php include_once '../controllers/connection.php'; ?>

<!--trashed-->
<?php
$check_for_trash = "
    SELECT EXISTS (
            SELECT * FROM product
            WHERE flag = 0
    ) AS trashed
";
$result_check_for_trash = $conn->query($check_for_trash);
if ($result_check_for_trash->num_rows > 0) {
    while ($row = $result_check_for_trash->fetch_assoc()) {
        $trahed = $row["trashed"];
        if ($trahed == 1) {
            //trash counter
            $count_trash = "
                SELECT count(1) AS count FROM product
                WHERE flag = 0
            ";
            $result_count_trash = $conn->query($count_trash);
            if ($result_count_trash->num_rows > 0) {
                while ($row = $result_count_trash->fetch_assoc()) {
                    $trash_count = $row["count"];
                }
            }
            //trash counter
            //trash list
            $list_trash = "
                SELECT product_name FROM product
                WHERE flag = 0
            ";
            $result_list_trash = $conn->query($list_trash);
            if ($result_list_trash->num_rows > 0) {
                while ($row = $result_list_trash->fetch_assoc()) {
                    $trash_list = $row["product_name"];
                    $trash_li = '<li><a href="' . $baseUrl . '/views/trash/">There are items in trash</a></li>';
                }
            }
            //trash list
        }
    }
}
?>
<style>
    /* Buzz Out */
    @keyframes hvr-buzz-out {
        0% {
            transform: translateX(0px);
        }
        5% {
            transform: translateX(1px);
        }
        10% {
            transform: translateX(-1px);
        }
        15% {
            transform: translateX(2px);
        }
        20% {
            transform: translateX(-2px);
        }
        25% {
            transform: translateX(1px);
        }
        30% {
            transform: translateX(-1px);
        }
        35% {
            transform: translateX(0px);
        }
        40% {
            transform: translateX(0px);
        }
        45% {
            transform: translateX(0px);
        }
        50% {
            transform: translateX(0px);
        }
        55% {
            transform: translateX(0px);
        }
        60% {
            transform: translateX(0px);
        }
        65% {
            transform: translateX(0px);
        }
        70% {
            transform: translateX(0px);
        }
        75% {
            transform: translateX(0px);
        }
        80% {
            transform: translateX(0px);
        }
        85% {
            transform: translateX(0px);
        }
        90% {
            transform: translateX(0px);
        }
        95% {
            transform: translateX(0px);
        }
        100% {
            transform: translateX(0px);
        }
    }
    i.material-icons {
        display: inline-block;
        vertical-align: middle;
        -webkit-transform: perspective(1px) translateZ(0);
        transform: perspective(1px) translateZ(0);
        box-shadow: 0 0 1px rgba(0, 0, 0, 0);
    }
    i.material-icons.buzzer, i.material-icons.buzzer, i.material-icons.buzzer {
        -webkit-animation-name: hvr-buzz-out;
        animation-name: hvr-buzz-out;
        -webkit-animation-duration: 2s;
        animation-duration: 2s;
        -webkit-animation-timing-function: linear;
        animation-timing-function: linear;
        -webkit-animation-iteration-count:  infinite;
        animation-iteration-count: infinite;
    }
</style>
<script>
    $(document).ready(function () {
        var trahed = "<?php echo $trahed ?>";
        var trash_count = "<?php echo $trash_count ?>";
//        var trash_li = `<?php echo $trash_li ?>`;
        var trash_msg;
        if (trash_count > 1) {
            trash_msg = "are " + trash_count + " items";
        } else {
            trash_msg = "is 1 item";
        }
        var trash_list = `
            <li><a href="` + baseUrl + `/views/trash/">There ` + trash_msg + ` in trash</a></li>
        `;
        if (trahed == 1) {
            $('.navbar .notification').addClass('after');
            $('ul#notification_ul').addClass('after');
            $('ul#notification_ul').append(trash_list);
            var nofitication_count = $('ul#notification_ul > li').length;
            $('.navbar .notification').text(nofitication_count);
            $('.navbar .notification.after').closest('a.dropdown-toggle').find('i.material-icons').addClass('buzzer');
        } else {
            $('.navbar .notification').removeClass('after');
            $('ul#notification_ul').removeClass('after');
            $('ul#notification_ul').empty();
            $('.navbar .notification').text('');
            $('.navbar .notification.after').closest('a.dropdown-toggle').find('i.material-icons').removeClass('buzzer');
        }
    });
</script>
<!--trashed-->