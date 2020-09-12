<nav class="navbar navbar-transparent navbar-absolute">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            
            <a class="navbar-brand" href="#">
                <span class="page-title">Loading...</span>
                <span class="user-name-span-inner"><?php echo $blessing . ' ' . $first_name; ?>!</span>
            </a>
        </div>
        <div class="collapse navbar-collapse navbar-right">
            <ul class="nav navbar-nav navbar-right">
                <li class="full-screen-toggle">
                    <a title="Active fullscreen" onclick="launchIntoFullscreen(document.documentElement);" id="full-screen-btn" class="dropdown-toggle hidden-sm hidden-xs">
                        <i class="material-icons">fullscreen</i>
                        <p class="hidden-lg hidden-md">Full screen</p>
                    </a>
                    <a title="Disable fullscreen" onclick="exitFullscreen();" id="exit-full-screen-btn" class="hide dropdown-toggle hidden-sm hidden-xs">
                        <i class="material-icons">fullscreen_exit</i>
                        <p class="hidden-lg hidden-md">Exit full screen</p>
                    </a>
                </li>
<!--                <li>
                    <a href="#pablo" class="dropdown-toggle hidden-sm hidden-xs">
                        <i class="material-icons">dashboard</i>
                        <p class="hidden-lg hidden-md">Dashboard</p>
                    </a>
                </li>-->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                        <i class="material-icons">notifications</i>
                        <span class="notification"></span>
                        <p class="hidden-lg hidden-md">Notifications</p>
                    </a>
                    <ul class="dropdown-menu notification_ul" id="notification_ul">
                        
                    </ul>
                </li>
                <li class="dropdown user-name-li">
                    <a class="dropdown-toggle" data-toggle="dropdown">
                        <i class="material-icons">person</i>
                        <p class="hidden-lg hidden-md">Profile</p>
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="<?php echo $baseUrl; ?>/views/profile/">
                                <i class="material-icons">account_circle</i>
                                <span>Profile</span>
                            </a>
                        </li>
                        <li>
                            <a href="<?php echo $baseUrl; ?>/views/profile/change-password.php">
                                <i class="material-icons">https</i>
                                <span>Change password</span>
                            </a>
                        </li>
                        <li>
                            <a href="<?php echo $baseUrl; ?>/logout.php">
                                <i class="material-icons">exit_to_app</i>
                                <span>Logout</span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-right" role="search">
<!--                <div class="form-group  is-empty">
                    <input type="text" class="form-control" placeholder="Search">
                    <span class="material-input"></span>
                </div>-->
<!--                <button type="submit" class="btn btn-white btn-round btn-just-icon">
                    <i class="material-icons">search</i>
                    <div class="ripple-container"></div>
                </button>-->
            </form>
        </div>
    </div>
</nav>