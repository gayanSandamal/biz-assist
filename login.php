<!DOCTYPE html>
<html lang="en">
    <head>
    <?php $baseUrl = "http://" . $_SERVER['SERVER_NAME'] . '/md_chemists';?>
        <title>BizAssist | Login</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="<?php echo $baseUrl; ?>/assets/img/logo-only-transparent-32.png" />
        <link rel="stylesheet" href="<?php echo $baseUrl; ?>/assets/css/bootstrap.min.css">
        <script src="<?php echo $baseUrl; ?>/assets/js/jquery-3.2.1.min.js"></script>
        <script src="<?php echo $baseUrl; ?>/assets/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="<?php echo $baseUrl; ?>/assets/login/login-styles.css">
        <script src="<?php echo $baseUrl; ?>/assets/login/login-scripts.js"></script>
    </head>
    <body class="body" id="body">
        <div class="bg-img" style="background-image: url(<?php echo $baseUrl; ?>/assets/img/login-bg-2.jpg)">
            <div class="login-inner-container">
                <div class="login-title-container">
                    <h3 class="app-name">BizAssist</h3>
                    <h5 class="app-sub-text">Your business assistant</h5>
                </div>
                <div class="login-loader" id="login-loader">
                    <form action="controllers/login-controller.php" method="post" enctype="multipart/form-data">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Username" name="username" autofocus>
                        </div>
                        <div class="input-group">
                            <input type="password" class="form-control" placeholder="Password" name="password">
                        </div>
                        <div class="input-group">
                            <button type="submit" name="login" class="btn btn-default login-btn">Login</button>
                            <!--<input type="submit" name="login" value="Login">-->
                        </div>
                        <div class="input-group">
                            <p>Forgot password?, <a href="#">Reset now</a></p>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>