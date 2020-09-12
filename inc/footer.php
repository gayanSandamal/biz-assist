</div>
</body>
<!--   Core JS Files   -->
<script src="<?php echo $baseUrl; ?>/assets/js/jquery-3.2.1.min.js" type="text/javascript"></script>
<script src="<?php echo $baseUrl; ?>/assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--data table-->
<script src="<?php echo $baseUrl; ?>/assets/js/jquery.dataTables.min.js"></script>
<!--data table-->

<script src="<?php echo $baseUrl; ?>/assets/js/material.min.js" type="text/javascript"></script>
<!--  Charts Plugin -->
<script src="<?php echo $baseUrl; ?>/assets/js/chartist.min.js"></script>
<!--  Dynamic Elements plugin -->
<script src="<?php echo $baseUrl; ?>/assets/js/arrive.min.js"></script>
<!--  PerfectScrollbar Library -->
<!--<script src="<?php // echo $baseUrl;                                                     ?>/assets/js/perfect-scrollbar.jquery.min.js"></script>-->
<!--  Notifications Plugin    -->
<script src="<?php echo $baseUrl; ?>/assets/js/bootstrap-notify.js"></script>
<!--  Google Maps Plugin    -->
<!--<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>-->
<!-- Material Dashboard javascript methods -->
<script src="<?php echo $baseUrl; ?>/assets/js/material-dashboard.js?v=1.2.0"></script>
<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="<?php echo $baseUrl; ?>/assets/js/demo.js"></script>

<script src="<?php echo $baseUrl; ?>/assets/js/jquery-ui-1.12.1.min.js"></script>

<!--select2-->
<script src="<?php echo $baseUrl; ?>/bower_components/select2/dist/js/select2.min.js"></script>
<!--select2-->

<script src="<?php echo $baseUrl; ?>/assets/js/ImageTools.js"></script>

<script src="<?php echo $baseUrl; ?>/assets/js/custom.js"></script>
<script type="text/javascript">

    var baseUrl = "<?php echo $baseUrl; ?>";

    function push_notificatoin(color, icon, msg) {
        $('.push-notificatoin-container').remove();
        var push_notificatoin = '<div class="push-notificatoin-container ' + color + '"><div class="push-notificatoin-inner"><div class="push-notificatoin-icon"><i class="fa fa-' + icon + '"></i></div><div class="push-notificatoin-msg">' + msg + '</div></div><i class="fa fa-times close-push-notificatoin" onclick="close_push_notificatoin()"></i></div>';
        $('body').prepend(push_notificatoin);
        setTimeout(function () {
            $('.push-notificatoin-container').addClass('after');
            setTimeout(function () {
                $('.push-notificatoin-container').addClass('after1');
                setTimeout(function () {
                    $('.push-notificatoin-container').remove();
                }, 2000);
            }, 4000);
        }, 100);
    }
    function close_push_notificatoin() {
        $('.push-notificatoin-container').addClass('after2');
        setTimeout(function () {
            $('.push-notificatoin-container').remove();
        }, 500);
    }
    function system_error() {
        var color = 'red';
        var icon = 'times';
        var msg = 'Something went wrong! please contact the administrator';
        push_notificatoin(color, icon, msg);
    }
    function start_load() {
        var loading = `
                <div class="loading" id="loading">
                    <div class="loading-inner">
                        <img src="` + baseUrl + `/assets/img/loading.gif"/>
                        <h6>Loading...</h6>
                    </div>
                </div>
                `;
        $('body').append(loading);
    }
    function stop_load() {
        $('#loading').remove();
    }

    function start_upload() {
        var loading = `
                <div class="loading" id="loading">
                    <div class="loading-inner">
                        <img src="` + baseUrl + `/assets/img/loading.gif"/>
                        <h6>Uploading...</h6>
                    </div>
                </div>
                `;
        $('body').append(loading);
    }
    function stop_upload() {
        $('#loading').remove();
    }
    $('.navbar-nav>li').on('click', function () {
        $(this).toggleClass('open');
    });

    if (screen.width < 1200) {
        menu_remover();
    } else {
    }
    if (screen.resize < 1200) {
        menu_remover();
    } else {
    }

    function menu_remover() {
        setTimeout(function () {
            $('body').removeClass("menu-is-active");
            $('body').addClass("menu-is-not-active");
        }, 1000);
    }

    var refreshSn = (function () {
        var time = 120000; // 2 mins
        var data;
        setInterval(function () {
            $.ajax({
                type: 'POST',
                url: baseUrl + '/inc/refresh_session.php',
                data: data,
                success: function (data) {
                }
            });
        }, time);
    })();
    refreshSn;

    function check_null_buy() {
        var data;
        $.ajax({
            type: 'POST',
            url: '../../controllers/null_buy.php',
            data: data,
            success: function (data) {
//                console.log(data);
                if ($.trim(data) == "zero") {
//                    console.log("null");
                    $.ajax({
                        type: 'POST',
                        url: '../../controllers/null_buy_list.php',
                        data: data,
                        success: function (data) {
                            var warn_msg = `
                                <p>You cannot leave buying price of products empty.</p>
                                <p>It will lead to an error on profit counting.</p>
                                <p>Please edit the following items.</p>
                                <ul>` + data + `</ul>
                            `;
                            warning(warn_msg);
                        }
                    });
                } else {
//                    console.log("fine");
                }
            }
        });
    }

    function warning(warn_msg) {
        var warning = `
            <div class="warning_container">
                <div class="warning_container_inner">
                    <span id="close_warning" onclick="close_warning()"><i class="material-icons">close</i></span>
                    <h3 class="warning_container-title"><i class="material-icons">warning</i> Critical warning!</h3>
                    <div id="warning_container_loader">
                    ` + warn_msg + `
                    </div>
                </div>
            </div>
        `;
        $('body').append(warning);
    }

    function close_warning() {
        $('.warning_container').remove();
    }

    $(document).ready(function () {
        check_null_buy();
    });
</script>

<style>
    .warning_container {
        position: fixed;
        top: 0px;
        left: 0px;
        width: 100%;
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        z-index: 999;
        background-color: rgba(255,255,255,0.8);
        padding: 0px 15px;
    }
    h3.warning_container-title > i {
        position: relative;
        font-size: 32px;
        top: 4px;
        animation: warn_icon 1s infinite;
        -webkit-animation: warn_icon 1s infinite;
    }
    .warning_container_inner ul {
        max-height: 220px;
        overflow-y: auto;
        padding: 0px;
        margin: 0px;
        border: 1px solid #fff;
        padding: 0px;
    }
    .warning_container_inner {
        position: relative;
        width: 100%;
        max-width: 500px;
        background-color: #f44336;
        color: #fff;
        padding: 30px;
        animation: warn 1s infinite;
        -webkit-animation: warn 1s infinite;
    }
    h3.warning_container-title {
        margin: 0px 0px 10px 0px;
        line-height: 1;
    }
    span#close_warning {
        position: absolute;
        top: 0px;
        right: 0px;
        background-color: #fff;
        color: #f44336;
        padding: 10px 10px 8px 10px;
    }
    span#close_warning:hover {
        cursor: pointer;
    }
    .warning_container_inner ul li a {
        color: #fff;
        padding: 10px;
        display: block;
        margin: 0px;
    }
    .warning_container_inner ul li {
        display: inline-block;
        width: 100%;
    }
    .warning_container_inner ul li:hover {
        background-color: #fff;
        color: #f44336;
        cursor: pointer;
    }
    .warning_container_inner ul li:hover a {
        color: #f44336;
    }
    @-webkit-keyframes warn {
        0% {
            -webkit-box-shadow: 0px 0px 0px 0px rgba(244,67,54,1);
            -moz-box-shadow: 0px 0px 0px 0px rgba(244,67,54,1);
            box-shadow: 0px 0px 0px 0px rgba(244,67,54,1);
        }
        50% {
            -webkit-box-shadow: 0px 0px 100px 0px rgba(244,67,54,1);
            -moz-box-shadow: 0px 0px 100px 0px rgba(244,67,54,1);
            box-shadow: 0px 0px 100px 0px rgba(244,67,54,1);
        }
        100% {
            -webkit-box-shadow: 0px 0px 0px 0px rgba(244,67,54,1);
            -moz-box-shadow: 0px 0px 0px 0px rgba(244,67,54,1);
            box-shadow: 0px 0px 0px 0px rgba(244,67,54,1);
        }
    }
    @keyframes warn {
        0% {
            -webkit-box-shadow: 0px 0px 0px 0px rgba(244,67,54,1);
            -moz-box-shadow: 0px 0px 0px 0px rgba(244,67,54,1);
            box-shadow: 0px 0px 0px 0px rgba(244,67,54,1);
        }
        50% {
            -webkit-box-shadow: 0px 0px 100px 0px rgba(244,67,54,1);
            -moz-box-shadow: 0px 0px 100px 0px rgba(244,67,54,1);
            box-shadow: 0px 0px 100px 0px rgba(244,67,54,1);
        }
        100% {
            -webkit-box-shadow: 0px 0px 0px 0px rgba(244,67,54,1);
            -moz-box-shadow: 0px 0px 0px 0px rgba(244,67,54,1);
            box-shadow: 0px 0px 0px 0px rgba(244,67,54,1);
        }
    }
    @-webkit-keyframes warn_icon {
        0% {
            transform: scale(1);
        }
        50% {
            transform: scale(1.1);
        }
        100% {
            transform: scale(1);
        }
    }
    @keyframes warn_icon {
        0% {
            transform: scale(1);
        }
        50% {
            transform: scale(1.5);
        }
        100% {
            transform: scale(1);
        }
    }
</style>
<?php //include_once 'notifier.php'; ?>
<?php include_once 'access.php'; ?>
</html>