<div class="sidebar" data-color="purple" data-image="<?php echo $baseUrl; ?>/common-resources/assets/img/sidebar-1.jpg">
    <!--
Tip 1: You can change the color of the sidebar using: data-color="purple | blue | green | orange | red"

Tip 2: you can also add an image using data-image tag
    -->
    <div class="logo">
        <a class="simple-text">
            <!--<img src="<?php // echo $baseUrl;    ?>/assets/img/logo-only-transparent-64.png"/>-->
            <img src="<?php echo $baseUrl; ?>/assets/img/logo-wide-3-64.png"/>
            <!--<span>BizAssist</span>-->
        </a>
        <div class="menu-trigger">
            <div class="hamburger" id="hamburger-3">
                <span class="line"></span>
                <span class="line"></span>
                <span class="line"></span>
            </div>
        </div>
    </div>
    <div class="sidebar-wrapper">
        <ul class="nav">
            <li class="has-child">
                <a class="sidebar-menu-a">
                    <i class="material-icons">dashboard</i>
                    <p>Dashboard</p>
                </a>
                <ul>
                    <li class="">
                        <a href="<?php echo $baseUrl; ?>/views/dashboard/" class="sidebar-menu-a">
                            <i class="material-icons">dashboard</i>
                            <p>Dashboard</p>
                        </a>
                    </li>
                    <li class="">
                        <a href="<?php echo $baseUrl; ?>/views/user-management/" class="sidebar-menu-a">
                            <i class="material-icons">account_circle</i>
                            <p>User Management</p>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="shop-menu-item">
                <a href="<?php echo $baseUrl; ?>/views/shop/" class="sidebar-menu-a">
                    <i class="material-icons">shopping_cart</i>
                    <p>Shop</p>
                </a>
            </li>
            <li class="has-child">
                <a class="sidebar-menu-a">
                    <i class="material-icons">view_module</i>
                    <p>Products</p>
                </a>
                <ul>
                    <li class="">
                        <a href="<?php echo $baseUrl; ?>/views/products/" class="sidebar-menu-a">
                            <i class="material-icons">view_module</i>
                            <p>Products</p>
                        </a>
                    </li>
                    <li class="">
                        <a href="<?php echo $baseUrl; ?>/views/barcode/" class="sidebar-menu-a">
                            <i class="fa fa-barcode"></i>
                            <p>Barcodes</p>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="has-child">
                <a>
                    <i class="material-icons">bubble_chart</i>
                    <p>Sub details</p>
                </a>
                <ul>
                    <li class="">
                        <a href="<?php echo $baseUrl; ?>/views/categories/" class="sidebar-menu-a">
                            <i class="material-icons">add_circle_outline</i>
                            <p>Categories</p>
                        </a>
                    </li>
                    <li class="">
                        <a href="<?php echo $baseUrl; ?>/views/suppliers/" class="sidebar-menu-a">
                            <i class="material-icons">add_circle_outline</i>
                            <p>Suppliers</p>
                        </a>
                    </li>
                    <li class="">
                        <a href="<?php echo $baseUrl; ?>/views/brands/" class="sidebar-menu-a">
                            <i class="material-icons">add_circle_outline</i>
                            <p>Generic</p>
                        </a>
                    </li>
                    <li class="">
                        <a href="<?php echo $baseUrl; ?>/views/tax/" class="sidebar-menu-a">
                            <i class="material-icons">add_circle_outline</i>
                            <p>Tax/VAT</p>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="<?php echo $baseUrl; ?>/views/customers/" class="sidebar-menu-a">
                    <i class="material-icons">accessibility</i>
                    <p>Customers</p>
                </a>
            </li>
            <li class="has-child">
                <a>
                    <i class="material-icons">timeline</i>
                    <p>Sales</p>
                </a>
                <ul>
                    <li class="">
                        <a href="<?php echo $baseUrl; ?>/views/sales/" class="sidebar-menu-a">
                            <i class="material-icons">donut_small</i>
                            <p>Invoice history</p>
                        </a>
                    </li>
                    <li class="">
                        <a href="<?php echo $baseUrl; ?>/views/held/" class="sidebar-menu-a">
                            <i class="material-icons">remove_shopping_cart</i>
                            <p>Held/Lend history</p>
                        </a>
                    </li>
                    <li class="">
                        <a href="<?php echo $baseUrl; ?>/views/resell/" class="sidebar-menu-a">
                            <i class="material-icons">transfer_within_a_station</i>
                            <p>Resell history</p>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="<?php echo $baseUrl; ?>/views/trash/" class="sidebar-menu-a">
                    <i class="material-icons">delete</i>
                    <p>Trash</p>
                </a>
            </li>
            <li>
                <a onclick="clear_cache()" class="sidebar-menu-a">
                    <i class="material-icons">refresh</i>
                    <p>Quick refresh</p>
                </a>
            </li>
        </ul>
    </div>
</div>