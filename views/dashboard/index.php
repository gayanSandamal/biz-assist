<?php include_once '../../inc/header.php'; ?>
<?php include_once '../../inc/sidebar.php'; ?>

<div class="main-panel">
    <?php include_once '../../inc/navbar.php'; ?>
    <div class="content dashboard-scroll">
        <div class="container-fluid">
            <?php include_once 'dashboard-head.php'; ?>
            <!--overall summery-->
            <div id="dashboard-section-1" class="dashboard-section"></div>
            <!--overall summery-->
            <!--sales summery graph-->
            <div id="dashboard-section-2" class="dashboard-section"></div>
            <!--sales summery graph-->
            <!--best, least and not selling summery-->
            <div id="dashboard-section-3" class="dashboard-section"></div>
            <!--best, least and not selling summery-->
            <!--expiring items-->
            <!--<div id="dashboard-section-4" class="dashboard-section"></div>-->
            <!--expiring items-->
            <!--log details-->
            <div id="dashboard-section-5" class="dashboard-section"></div>
            <!--log details-->
        </div>
    </div>
    <?php include_once '../../inc/footer-cont.php'; ?>
</div>
<?php include_once '../../inc/footer.php'; ?>

<script>
    $(document).ready(function () {
        menu_trigger();


        $("#search-filter-branch-location").select2();

        $('#process-location').on('click', function (e) {
            start_load();
            e.preventDefault();

            $.ajax({
                type: 'get',
                url: 'dashboard-section-1.php',
                data: $('form').serialize(),
                success: function (data) {
//                    console.log(data);
                    $('#dashboard-section-1').html(data);
//                    stop_load();
                }
            });
            $.ajax({
                type: 'get',
                url: 'dashboard-section-2.php',
                data: $('form').serialize(),
                success: function (data) {
//                    console.log(data);
                    $('#dashboard-section-2').html(data);
//                    stop_load();
                }
            });
            $.ajax({
                type: 'get',
                url: 'dashboard-section-3.php',
                data: $('form').serialize(),
                success: function (data) {
//                    console.log(data);
                    $('#dashboard-section-3').html(data);
//                    stop_load();
                }
            });
//            $.ajax({
//                type: 'get',
//                url: 'dashboard-section-4.php',
//                data: $('form').serialize(),
//                success: function (data) {
////                    console.log(data);
//                    $('#dashboard-section-4').html(data);
//                    stop_load();
//                }
//            });
            $.ajax({
                type: 'get',
                url: 'dashboard-section-5.php',
                data: $('form').serialize(),
                success: function (data) {
//                    console.log(data);
                    $('#dashboard-section-5').html(data);
                    stop_load();
                }
            });

        });
        setTimeout(function () {
            $('#process-location').trigger('click');
        }, 300);

    });


    $(function () {
        $("#from-date-location").datepicker({
            dateFormat: "yy-mm-dd"
        });
        $("#to-date-location").datepicker({
            dateFormat: "yy-mm-dd"
        });
    });
</script>