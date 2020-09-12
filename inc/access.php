<?php
//include_once '../controllers/connection.php';
$get_access = "
    SELECT
    u.user_id,
    u.username,
    u.user_level_id,
    ul.user_level,
    ua.accessible_page,
    ua.restricted_delete
    FROM user u
    LEFT OUTER JOIN user_level ul
    ON ul.user_level_id = u.user_level_id
    LEFT OUTER JOIN user_access ua
    ON ua.user_level_id = ul.user_level_id
    WHERE u.user_id = '$user_id_new'
";
$result_get_access = $conn->query($get_access);
if ($result_get_access->num_rows > 0) {
    while ($row = $result_get_access->fetch_assoc()) {
        $accessible_page = $row["accessible_page"];
        $accessible_username = $row["username"];
        $restricted_delete = $row["restricted_delete"];
    }
}
$conn->close();
?>
<script>
    var pathname_before = window.location.pathname;
    var clientUrl = baseUrl.replace('http://localhost/md_chemists/', '');
    var pathname = pathname_before.replace(clientUrl, '');
    var accessible_username = "<?php echo $accessible_username; ?>";
    var accessible_page = "<?php echo $accessible_page; ?>";
    var inaccessible_feature = "<?php echo $restricted_delete; ?>";
    var accessible_page_arr = accessible_page.split(", ");
    var inaccessible_feature_arr = inaccessible_feature.split(", ");
    var menu_container = [];

    $(document).ready(function () {
//        console.log(accessible_page_arr);
//        console.log(inaccessible_feature_arr);
//        console.log(pathname);
//        console.log(clientUrl);
//        console.log(accessible_page_arr.indexOf(pathname) > -1);
//        console.log(accessible_page_arr[0]);

//        redirection
        if (!accessible_page.trim()) {

        } else {
            if (accessible_page_arr.indexOf(pathname) > -1) {

            } else {
                var restricted_msg = `
                <div class="restricted_msg_container">
                    <h3 id="restricted_msg">Hey ` + accessible_username + `!<br/>you are not allowed to access this page.<br/>Your misbehave will be recorded.<br/>Redirecting...</h3>
                </div>
            `;
                // $('body').html(restricted_msg);
                // setTimeout(function () {
                    // window.location.replace(baseUrl + accessible_page_arr[0]);
                // }, 3000);
            }
        }
//        redirection


    });

//    menu remover
    $('.sidebar .nav li > a').each(function () {
        var item_menu = String($(this).attr('href')).replace(baseUrl, '');
        if (item_menu == 'undefined') {

        } else {
            menu_container.push(item_menu);
        }
    });
    menu_container = $.grep(menu_container, function (n) {
        return n == 0 || n
    });
//        var menu_obj = JSON.stringify(menu_container);
//        console.log(menu_container);
//        console.log(menu_obj);

//    console.log(accessible_page_arr);
//    console.log(menu_container);

    function symmetricDifference(setA, setB) {
        var o = {}, result = [];
        function count(i, o) {
            return function (a) {
                o[a] = o[a] || {count: 0, value: a};
                o[a].count += i;
            };
        }

        setA.forEach(count(1, o));
        setB.forEach(count(-1, o));
        Object.keys(o).forEach(function (k) {
            if (o[k].count) {
                o[k].count = Math.abs(o[k].count);
                while (o[k].count--) {
                    result.push(o[k].value);
                }
            }
        });
        return result;
    }

    var restricted_menu = symmetricDifference(accessible_page_arr, menu_container);
//    console.log(restricted_menu);

    $('.sidebar .nav li > a').each(function () {
        var item_menu = String($(this).attr('href')).replace(baseUrl, '');
//        console.log(item_menu);
        if (restricted_menu.indexOf(item_menu) > -1) {
            $(".sidebar .nav li > a[href='" + baseUrl + item_menu + "']").closest('li').remove();
        } else {
        }
    });
//    menu remover
    var delBtn;
    $('table tbody tr').each(function () {
        delBtn = $(this).find('.product-actions-delete').attr('id');
        if (inaccessible_feature_arr.indexOf(delBtn) > -1) {
            $('#'+delBtn).remove();
        }
    });
//    console.log(delBtn);
</script>