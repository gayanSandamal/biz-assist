<!doctype html>
<?php
include_once 'session.php';
?>
<html lang="en">
    <?php
    include_once 'baseUrl.php';
    date_default_timezone_set('Asia/Calcutta');
    $now = date("H");
    if($now < "12") {
        $blessing = "Good morning";
    } elseif($now <= "16") {
        $blessing = "Good afternoon";
    } elseif($now <= "24") {
        $blessing = "Good evening";
    } else {}
    ?>
    <head>
        <meta charset="utf-8" />
        <!--<link rel="apple-touch-icon" sizes="76x76" href="<?php // echo $baseUrl;     ?>/assets/img/apple-icon.png" />-->
        <link rel="icon" type="image/png" href="<?php echo $baseUrl; ?>/assets/img/logo-only-transparent-32.png" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>BizAssist</title>
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <meta name="viewport" content="width=device-width" />
        <!-- Bootstrap core CSS     -->
        <link href="<?php echo $baseUrl; ?>/assets/css/bootstrap.min.css" rel="stylesheet" />
        <!--  Material Dashboard CSS    -->
        <link href="<?php echo $baseUrl; ?>/assets/css/material-dashboard.css?v=1.2.0" rel="stylesheet" />
        <!--  CSS for Demo Purpose, don't include it in your project     -->
        <link href="<?php echo $baseUrl; ?>/assets/css/demo.css" rel="stylesheet" />

        <!--data table-->
        <link href="<?php echo $baseUrl; ?>/assets/css/jquery.dataTables.min.css" rel="stylesheet" />
        <!--data table-->

        <!--select2-->
        <link href="<?php echo $baseUrl; ?>/bower_components/select2/dist/css/select2.min.css" rel="stylesheet" />
        <!--select2-->

        <link rel="stylesheet" href="<?php echo $baseUrl; ?>/assets/css/jquery-ui.min.css">
        <link href="<?php echo $baseUrl; ?>/common-resources/assets/css/custom.css" rel="stylesheet" />
        <link href="<?php echo $baseUrl; ?>/common-resources/assets/css/responsive.css" rel="stylesheet" />
        <!--     Fonts and icons     -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
        <link href='<?php echo $baseUrl; ?>/assets/material-icons/material-icons.css' rel='stylesheet' type='text/css'>


        <script>
        </script>
    </head>
    <div class="offline-indicator-container" id="offline-indicator-container">
        <div class="offline-indicator-block">
            <img class="offline-indicator-img" src="<?php echo $baseUrl; ?>/common-resources/assets/images/offline-icon.png"/>
            <h1>Connection lost</h1>
            <h3>Check for your internet connection</h3>
        </div>
    </div>

    <body class="menu-is-active">
        <div class="wrapper">