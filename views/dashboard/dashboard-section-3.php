<?php
include_once '../../controllers/connection.php';
//$branch_loc_id = htmlspecialchars($_GET["branch_location"]);
$branch_loc_id = htmlspecialchars($_GET["branch_loc_id"]);
$from_date = htmlspecialchars($_GET["from_date"]);
$to_date = htmlspecialchars($_GET["to_date"]);
$get_best_selling_items = "
SELECT
	i.invoice_time,
	p.product_name,
	p.product_model_no,
	b.brand_name,
	c.cat_name,
	SUM(s.item_price) AS item_price,
	SUM(s.item_count) AS item_count,
	u.user_id,
	branch.branch_id,
	branch.branch_location,
	SUM((s.item_count * s.item_price)) AS total_price
FROM
	invoice i
LEFT OUTER JOIN sale_details s ON s.sale_details_id = i.invoice_id
LEFT OUTER JOIN product p ON p.product_id = s.product_id
LEFT OUTER JOIN category c ON c.cat_id = p.product_cat_id
LEFT OUTER JOIN brand b ON b.brand_id = p.product_brand_id
LEFT OUTER JOIN user u ON u.user_id = i.user_id
LEFT OUTER JOIN branch ON branch.branch_id = u.branch_id
WHERE
	i.invoice_time BETWEEN '$from_date'
AND '$to_date'
AND branch.branch_id = '$branch_loc_id'
AND NOT p.product_id = 0
GROUP BY p.product_name
ORDER BY item_count DESC
LIMIT 100
        ";
$result_get_best_selling_items = $conn->query($get_best_selling_items);

$get_best_selling_cat = "
        SELECT
        i.invoice_time,
        c.cat_name,
        s.item_price,
        SUM(s.item_count) AS item_count,
        SUM(s.item_count * s.item_price) AS total_price
        FROM
        invoice i
        LEFT OUTER JOIN sale_details s
        ON s.sale_details_id = i.invoice_id
        LEFT OUTER JOIN product p
        ON p.product_id = s.product_id
        LEFT OUTER JOIN category c
        ON c.cat_id = p.product_cat_id
LEFT OUTER JOIN user u ON u.user_id = i.user_id
LEFT OUTER JOIN branch ON branch.branch_id = u.branch_id
        WHERE i.invoice_time BETWEEN '$from_date' AND '$to_date'
AND branch.branch_id = '$branch_loc_id'
AND NOT p.product_id = 0
        GROUP BY cat_name
        ORDER BY item_count DESC
        LIMIT 100
        ";
$result_get_best_selling_cat = $conn->query($get_best_selling_cat);

$get_best_selling_branch = "
SELECT
	i.invoice_time,
	c.cat_name,
	s.item_price,
	s.item_count,
	u.first_name,
	u.last_name,
	b.branch_location,
	b.branch_name,
	SUM(s.item_count * s.item_price) AS total_price
FROM
	invoice i
LEFT OUTER JOIN sale_details s ON s.sale_details_id = i.invoice_id
LEFT OUTER JOIN product p ON p.product_id = s.product_id
LEFT OUTER JOIN category c ON c.cat_id = p.product_cat_id
LEFT OUTER JOIN user u ON u.user_id = i.user_id
LEFT OUTER JOIN branch b ON b.branch_id = u.branch_id
WHERE
	i.invoice_time BETWEEN '$from_date'
AND '$to_date' AND b.branch_id = '$branch_loc_id'
AND NOT p.product_id = 0
    GROUP BY branch_location, branch_name
ORDER BY item_count DESC
LIMIT 100
        ";
$result_get_best_selling_branch = $conn->query($get_best_selling_branch);

$get_best_seller = "
SELECT
	i.invoice_time,
	c.cat_name,
	s.item_price,
	SUM(s.item_count) AS item_count,
	u.user_id,
	u.first_name,
	u.last_name,
	b.branch_location,
	SUM(s.item_count * s.item_price) AS total_price
FROM
	invoice i
LEFT OUTER JOIN sale_details s ON s.sale_details_id = i.invoice_id
LEFT OUTER JOIN product p ON p.product_id = s.product_id
LEFT OUTER JOIN category c ON c.cat_id = p.product_cat_id
LEFT OUTER JOIN user u ON u.user_id = i.user_id
LEFT OUTER JOIN branch b ON b.branch_id = u.branch_id
WHERE
	i.invoice_time BETWEEN '$from_date'
AND '$to_date' AND b.branch_id = '$branch_loc_id'
AND NOT p.product_id = 0
    GROUP BY user_id, first_name, last_name
ORDER BY item_count DESC
LIMIT 100
        ";
$result_get_best_seller = $conn->query($get_best_seller);
//====================================================================================
//LEAST SELLING
$get_least_selling_items = "
SELECT
	i.invoice_time,
	p.product_name,
	p.product_model_no,
	b.brand_name,
	c.cat_name,
	SUM(s.item_price) AS item_price,
	SUM(s.item_count) AS item_count,
	u.user_id,
	branch.branch_id,
	branch.branch_location,
	SUM((s.item_count * s.item_price)) AS total_price
FROM
	invoice i
LEFT OUTER JOIN sale_details s ON s.sale_details_id = i.invoice_id
LEFT OUTER JOIN product p ON p.product_id = s.product_id
LEFT OUTER JOIN category c ON c.cat_id = p.product_cat_id
LEFT OUTER JOIN brand b ON b.brand_id = p.product_brand_id
LEFT OUTER JOIN user u ON u.user_id = i.user_id
LEFT OUTER JOIN branch ON branch.branch_id = u.branch_id
WHERE
	i.invoice_time BETWEEN '$from_date'
AND '$to_date'
AND branch.branch_id = '$branch_loc_id'
AND NOT p.product_id = 0
GROUP BY p.product_name
ORDER BY item_count ASC
LIMIT 100
        ";
$result_get_least_selling_items = $conn->query($get_least_selling_items);

$get_least_selling_cat = "
        SELECT
        i.invoice_time,
        c.cat_name,
        s.item_price,
        SUM(s.item_count) AS item_count,
        SUM(s.item_count * s.item_price) AS total_price
        FROM
        invoice i
        LEFT OUTER JOIN sale_details s
        ON s.sale_details_id = i.invoice_id
        LEFT OUTER JOIN product p
        ON p.product_id = s.product_id
        LEFT OUTER JOIN category c
        ON c.cat_id = p.product_cat_id
LEFT OUTER JOIN user u ON u.user_id = i.user_id
LEFT OUTER JOIN branch ON branch.branch_id = u.branch_id
        WHERE i.invoice_time BETWEEN '$from_date' AND '$to_date'
AND branch.branch_id = '$branch_loc_id'
AND NOT p.product_id = 0
        GROUP BY cat_name
        ORDER BY s.item_count ASC
        LIMIT 100
        ";
$result_get_least_selling_cat = $conn->query($get_least_selling_cat);

$get_least_selling_branch = "
SELECT
	i.invoice_time,
	c.cat_name,
	s.item_price,
	s.item_count,
	u.first_name,
	u.last_name,
	b.branch_location,
	b.branch_name,
	SUM(s.item_count * s.item_price) AS total_price
FROM
	invoice i
LEFT OUTER JOIN sale_details s ON s.sale_details_id = i.invoice_id
LEFT OUTER JOIN product p ON p.product_id = s.product_id
LEFT OUTER JOIN category c ON c.cat_id = p.product_cat_id
LEFT OUTER JOIN user u ON u.user_id = i.user_id
LEFT OUTER JOIN branch b ON b.branch_id = u.branch_id
WHERE
	i.invoice_time BETWEEN '$from_date'
AND '$to_date' AND b.branch_id = '$branch_loc_id'
AND NOT p.product_id = 0
    GROUP BY branch_location, branch_name
ORDER BY item_count ASC
LIMIT 100
        ";
$result_get_least_selling_branch = $conn->query($get_least_selling_branch);

$get_least_seller = "
SELECT
	i.invoice_time,
	c.cat_name,
	s.item_price,
	SUM(s.item_count) AS item_count,
	u.user_id,
	u.first_name,
	u.last_name,
	b.branch_location,
	SUM(s.item_count * s.item_price) AS total_price
FROM
	invoice i
LEFT OUTER JOIN sale_details s ON s.sale_details_id = i.invoice_id
LEFT OUTER JOIN product p ON p.product_id = s.product_id
LEFT OUTER JOIN category c ON c.cat_id = p.product_cat_id
LEFT OUTER JOIN user u ON u.user_id = i.user_id
LEFT OUTER JOIN branch b ON b.branch_id = u.branch_id
WHERE
	i.invoice_time BETWEEN '$from_date'
AND '$to_date' AND b.branch_id = '$branch_loc_id'
AND NOT p.product_id = 0
    GROUP BY user_id, first_name, last_name
ORDER BY item_count ASC
LIMIT 100
        ";
$result_get_least_seller = $conn->query($get_least_seller);
//====================================================================================
//NOT SELLING
$get_not_selling_items = "
SELECT
	p.product_id,
	p.product_name,
	p.product_model_no,
	c.cat_name,
	b.brand_name,
	branch.branch_id,
	branch.branch_location
FROM
	product p
LEFT OUTER JOIN category c ON c.cat_id = p.product_cat_id
LEFT OUTER JOIN brand b ON b.brand_id = p.product_brand_id
LEFT OUTER JOIN user u ON u.user_id = p.user_id
LEFT OUTER JOIN branch ON branch.branch_id = u.branch_id
WHERE
	NOT EXISTS (
		SELECT
			*
		FROM
			sale_details s
		WHERE
			p.product_id = s.product_id
	)
AND NOT c.cat_id = '0'
AND branch.branch_id = '$branch_loc_id'
AND NOT p.product_id = 0
ORDER BY
	p.product_name ASC
        ";
$result_get_not_selling_items = $conn->query($get_not_selling_items);

$get_not_selling_cat = "
SELECT
	p.product_id,
	p.product_name,
	p.product_model_no,
	c.cat_name,
	b.brand_name
FROM
	product p
LEFT OUTER JOIN category c ON c.cat_id = p.product_cat_id
LEFT OUTER JOIN brand b ON b.brand_id = p.product_brand_id
LEFT OUTER JOIN user u ON u.user_id = p.user_id
LEFT OUTER JOIN branch ON branch.branch_id = u.branch_id
WHERE
	NOT EXISTS (
		SELECT
			*
		FROM
			sale_details s
		WHERE
			p.product_id = s.product_id
	)
AND NOT c.cat_id = '0'
AND branch.branch_id = '$branch_loc_id'
AND NOT p.product_id = 0
ORDER BY
	p.product_name ASC
        ";
$result_get_not_selling_cat = $conn->query($get_not_selling_cat);
?>
<!--<div class="row">-->
<h3 class="dash-sector-title">Overall summery</h3>
    <div class="col-lg-6 col-md-12">
        <div class="card card-nav-tabs">
            <div class="card-header" data-background-color="blue">
                <div class="nav-tabs-navigation">
                    <div class="nav-tabs-wrapper">
                        <span class="nav-tabs-title">Best:</span>
                        <ul class="nav nav-tabs" data-tabs="tabs">
                            <li class="active">
                                <a href="#items" data-toggle="tab">
                                    <i class="material-icons">shopping_cart</i> Selling Items
                                    <div class="ripple-container"></div>
                                </a>
                            </li>
                            <li class="">
                                <a href="#categories" data-toggle="tab">
                                    <i class="material-icons">group_work</i> Selling Cats
                                    <div class="ripple-container"></div>
                                </a>
                            </li>
                            <li class="">
                                <a href="#branches" data-toggle="tab">
                                    <i class="material-icons">store</i> Branches
                                    <div class="ripple-container"></div>
                                </a>
                            </li>
                            <li class="">
                                <a href="#sellers" data-toggle="tab">
                                    <i class="material-icons">accessibility</i> Sellers
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
                                <th><span>Count</span></th>
                                <th><span>Total sales</span></th>
                                <th></th>
                                </thead>
                                <tbody>
                                    <?php
                                    if ($result_get_best_selling_items->num_rows > 0) {
                                        $numOrder = 1;
                                        while ($row = $result_get_best_selling_items->fetch_assoc()) {
                                            ?>
                                            <tr>
                                                <td style="width: 10%"><?php echo ($numOrder++); ?></td>
                                                <td><?php echo $row["product_name"]; ?></td>
                                                <td><?php echo $row["product_model_no"]; ?></td>
                                                <td><?php echo $row["brand_name"]; ?></td>
                                                <td><?php echo $row["cat_name"]; ?></td>
                                                <td style="width: 10%"><?php echo $row["item_count"]; ?></td>
                                                <td>Rs.<?php echo $row["total_price"]; ?></td>
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
                    <div class="tab-pane " id="categories">
                        <div class="dash-table-scroll">
                            <table class="table table-hover">
                                <thead class="text-warning">
                                <th><span>Ranking</span></th>
                                <th><span>Category</span></th>
                                <th><span>Count</span></th>
                                <th><span>Total sales</span></th>
                                </thead>
                                <tbody>
                                    <?php
                                    if ($result_get_best_selling_cat->num_rows > 0) {
                                        $numOrder = 1;
                                        while ($row = $result_get_best_selling_cat->fetch_assoc()) {
                                            ?>
                                            <tr>
                                                <td style="width: 10%"><?php echo ($numOrder++); ?></td>
                                                <td><?php echo $row["cat_name"]; ?></td>
                                                <td style="width: 15%"><?php echo $row["item_count"]; ?></td>
                                                <td>Rs.<?php echo $row["total_price"]; ?></td>
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
                    <div class="tab-pane " id="branches">
                        <div class="dash-table-scroll">
                            <table class="table table-hover">
                                <thead class="text-warning">
                                <th><span>ID</span></th>
                                <th><span>Branch location</span></th>
                                <th><span>Branch name</span></th>
                                <th><span>Sales</span></th>
                                </thead>
                                <tbody>
                                    <?php
                                    if ($result_get_best_selling_branch->num_rows > 0) {
                                        $numOrder = 1;
                                        while ($row = $result_get_best_selling_branch->fetch_assoc()) {
                                            ?>
                                            <tr>
                                                <td><?php echo ($numOrder++); ?></td>
                                                <td><?php echo $row["branch_location"]; ?></td>
                                                <td><?php echo $row["branch_name"]; ?></td>
                                                <td>Rs.<?php echo $row["total_price"]; ?></td>
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
                    <div class="tab-pane " id="sellers">
                        <div class="dash-table-scroll">
                            <table class="table table-hover">
                                <thead class="text-warning">
                                <th>Ranking order</th>
                                <th>Emp ID</th>
                                <th>Emp name</th>
                                <th>Count</th>
                                <th>Total sales</th>
                                </thead>
                                <tbody>
                                    <?php
                                    if ($result_get_best_seller->num_rows > 0) {
                                        $numOrder = 1;
                                        while ($row = $result_get_best_seller->fetch_assoc()) {
                                            ?>
                                            <tr>
                                                <td><?php echo ($numOrder++); ?></td>
                                                <td><?php echo $row["user_id"]; ?></td>
                                                <td><?php echo $row["first_name"] . ' ' . $row["last_name"]; ?></td>
                                                <td><?php echo $row["item_count"]; ?></td>
                                                <td>Rs.<?php echo $row["total_price"]; ?></td>
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
    <!--==============LEAST SELLING==============-->
    <div class="col-lg-6 col-md-12">
        <div class="card card-nav-tabs">
            <div class="card-header least-selling-card-header" data-background-color="red">
                <div class="nav-tabs-navigation">
                    <div class="nav-tabs-wrapper">
                        <span class="nav-tabs-title">Least:</span>
                        <ul class="nav nav-tabs" data-tabs="tabs">
                            <li class="active">
                                <a href="#least-items" data-toggle="tab">
                                    <i class="material-icons">shopping_cart</i> Selling Items
                                    <div class="ripple-container"></div>
                                </a>
                            </li>
                            <li class="">
                                <a href="#least-categories" data-toggle="tab">
                                    <i class="material-icons">group_work</i> Selling Cats
                                    <div class="ripple-container"></div>
                                </a>
                            </li>
                            <li class="">
                                <a href="#least-branches" data-toggle="tab">
                                    <i class="material-icons">store</i> Branches
                                    <div class="ripple-container"></div>
                                </a>
                            </li>
                            <li class="">
                                <a href="#least-sellers" data-toggle="tab">
                                    <i class="material-icons">accessibility</i> Sellers
                                    <div class="ripple-container"></div>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="card-content">
                <div class="tab-content">
                    <div class="tab-pane active" id="least-items">
                        <div class="dash-table-scroll">
                            <table class="table table-hover" id="cat-table">
                                <thead class="text-warning">
                                <th><span>Rank</span></th>
                                <th><span>Name</span></th>
                                <th><span>Model</span></th>
                                <th><span>Brand</span></th>
                                <th><span>Category</span></th>
                                <th><span>Count</span></th>
                                <th><span>Total sales</span></th>
                                <th></th>
                                </thead>
                                <tbody>
                                    <?php
                                    if ($result_get_least_selling_items->num_rows > 0) {
                                        $numOrder = 1;
                                        while ($row = $result_get_least_selling_items->fetch_assoc()) {
                                            ?>
                                            <tr>
                                                <td style="width: 10%"><?php echo ($numOrder++); ?></td>
                                                <td><?php echo $row["product_name"]; ?></td>
                                                <td><?php echo $row["product_model_no"]; ?></td>
                                                <td><?php echo $row["brand_name"]; ?></td>
                                                <td><?php echo $row["cat_name"]; ?></td>
                                                <td style="width: 10%"><?php echo $row["item_count"]; ?></td>
                                                <td>Rs.<?php echo $row["total_price"]; ?></td>
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
                    <div class="tab-pane " id="least-categories">
                        <div class="dash-table-scroll">
                            <table class="table table-hover">
                                <thead class="text-warning">
                                <th><span>Ranking</span></th>
                                <th><span>Category</span></th>
                                <th><span>Count</span></th>
                                <th><span>Total sales</span></th>
                                </thead>
                                <tbody>
                                    <?php
                                    if ($result_get_least_selling_cat->num_rows > 0) {
                                        $numOrder = 1;
                                        while ($row = $result_get_least_selling_cat->fetch_assoc()) {
                                            ?>
                                            <tr>
                                                <td style="width: 10%"><?php echo ($numOrder++); ?></td>
                                                <td><?php echo $row["cat_name"]; ?></td>
                                                <td style="width: 15%"><?php echo $row["item_count"]; ?></td>
                                                <td>Rs.<?php echo $row["total_price"]; ?></td>
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
                    <div class="tab-pane " id="least-branches">
                        <div class="dash-table-scroll">
                            <table class="table table-hover">
                                <thead class="text-warning">
                                <th><span>ID</span></th>
                                <th><span>Branch location</span></th>
                                <th><span>Branch name</span></th>
                                <th><span>Sales</span></th>
                                </thead>
                                <tbody>
                                    <?php
                                    if ($result_get_least_selling_branch->num_rows > 0) {
                                        $numOrder = 1;
                                        while ($row = $result_get_least_selling_branch->fetch_assoc()) {
                                            ?>
                                            <tr>
                                                <td><?php echo ($numOrder++); ?></td>
                                                <td><?php echo $row["branch_location"]; ?></td>
                                                <td><?php echo $row["branch_name"]; ?></td>
                                                <td>Rs.<?php echo $row["total_price"]; ?></td>
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
                    <div class="tab-pane " id="least-sellers">
                        <div class="dash-table-scroll">
                            <table class="table table-hover">
                                <thead class="text-warning">
                                <th>Ranking order</th>
                                <th>Emp ID</th>
                                <th>Emp name</th>
                                <th>Count</th>
                                <th>Total sales</th>
                                </thead>
                                <tbody>
                                    <?php
                                    if ($result_get_least_seller->num_rows > 0) {
                                        $numOrder = 1;
                                        while ($row = $result_get_least_seller->fetch_assoc()) {
                                            ?>
                                            <tr>
                                                <td><?php echo ($numOrder++); ?></td>
                                                <td><?php echo $row["user_id"]; ?></td>
                                                <td><?php echo $row["first_name"] . ' ' . $row["last_name"]; ?></td>
                                                <td><?php echo $row["item_count"]; ?></td>
                                                <td>Rs.<?php echo $row["total_price"]; ?></td>
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
    <!--==============NOT SELLING==============-->
    <div class="col-lg-6 col-md-12">
        <div class="card card-nav-tabs">
            <div class="card-header not-selling-card-header" data-background-color="orange">
                <div class="nav-tabs-navigation">
                    <div class="nav-tabs-wrapper">
                        <span class="nav-tabs-title">Not:</span>
                        <ul class="nav nav-tabs" data-tabs="tabs">
                            <li class="active">
                                <a href="#not-items" data-toggle="tab">
                                    <i class="material-icons">shopping_cart</i> Selling Items
                                    <div class="ripple-container"></div>
                                </a>
                            </li>
                            <li class="">
                                <a href="#not-categories" data-toggle="tab">
                                    <i class="material-icons">group_work</i> Selling Cats
                                    <div class="ripple-container"></div>
                                </a>
                            </li>
                            <!--                            <li class="">
                                                            <a href="#least-branches" data-toggle="tab">
                                                                <i class="material-icons">store</i> Branches
                                                                <div class="ripple-container"></div>
                                                            </a>
                                                        </li>-->
                            <!--                            <li class="">
                                                            <a href="#least-sellers" data-toggle="tab">
                                                                <i class="material-icons">store</i> Sellers
                                                                <div class="ripple-container"></div>
                                                            </a>
                                                        </li>-->
                        </ul>
                    </div>
                </div>
            </div>
            <div class="card-content">
                <div class="tab-content">
                    <div class="tab-pane active" id="not-items">
                        <div class="dash-table-scroll">
                            <table class="table table-hover" id="cat-table">
                                <thead class="text-warning">
                                <th><span>Rank</span></th>
                                <th><span>Name</span></th>
                                <th><span>Model</span></th>
                                <th><span>Brand</span></th>
                                <th><span>Category</span></th>
                                <th><span>Count</span></th>
                                <th><span>Total sales</span></th>
                                <th></th>
                                </thead>
                                <tbody>
                                    <?php
                                    if ($result_get_not_selling_items->num_rows > 0) {
                                        $numOrder = 1;
                                        while ($row = $result_get_not_selling_items->fetch_assoc()) {
                                            ?>
                                            <tr>
                                                <td style="width: 10%"><?php echo ($numOrder++); ?></td>
                                                <td><?php echo $row["product_name"]; ?></td>
                                                <td><?php echo $row["product_model_no"]; ?></td>
                                                <td><?php echo $row["brand_name"]; ?></td>
                                                <td><?php echo $row["cat_name"]; ?></td>
                                                <td style="width: 10%">0</td>
                                                <td>Rs.0.00</td>
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
                    <div class="tab-pane " id="not-categories">
                        <div class="dash-table-scroll">
                            <table class="table table-hover">
                                <thead class="text-warning">
                                <th><span>Ranking</span></th>
                                <th><span>Category</span></th>
                                <th><span>Count</span></th>
                                <th><span>Total sales</span></th>
                                </thead>
                                <tbody>
                                    <?php
                                    if ($result_get_not_selling_cat->num_rows > 0) {
                                        $numOrder = 1;
                                        while ($row = $result_get_not_selling_cat->fetch_assoc()) {
                                            ?>
                                            <tr>
                                                <td style="width: 10%"><?php echo ($numOrder++); ?></td>
                                                <td><?php echo $row["cat_name"]; ?></td>
                                                <td style="width: 15%">0</td>
                                                <td>Rs.0.00</td>
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
                    <!--                    <div class="tab-pane " id="least-branches">
                                            <div class="dash-table-scroll">
                                                <table class="table table-hover">
                                                    <thead class="text-warning">
                                                    <th><span>ID</span></th>
                                                    <th><span>Branch location</span></th>
                                                    <th><span>Branch name</span></th>
                                                    <th><span>Sales</span></th>
                                                    </thead>
                                                    <tbody>
                    <?php
//                                    if ($result_get_least_selling_branch->num_rows > 0) {
//                                        $numOrder = 1;
//                                        while ($row = $result_get_least_selling_branch->fetch_assoc()) {
                    ?>
                                                                <tr>
                                                                    <td><?php // echo ($numOrder++);      ?></td>
                                                                    <td><?php // echo $row["branch_location"];      ?></td>
                                                                    <td><?php // echo $row["branch_name"];      ?></td>
                                                                    <td><?php // echo $row["total_price"];      ?></td>
                                                                </tr>
                    <?php
//                                        }
//                                    } else {
//                                        echo "0 results";
//                                    }
                    ?>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>-->
                    <!--                    <div class="tab-pane " id="least-sellers">
                                            <div class="dash-table-scroll">
                                                <table class="table table-hover">
                                                    <thead class="text-warning">
                                                    <th>Ranking order</th>
                                                    <th>Emp ID</th>
                                                    <th>Emp name</th>
                                                    <th>Count</th>
                                                    <th>Total sales</th>
                                                    </thead>
                                                    <tbody>
                    <?php
//                                    if ($result_get_least_seller->num_rows > 0) {
//                                        $numOrder = 1;
//                                        while ($row = $result_get_least_seller->fetch_assoc()) {
                    ?>
                                                                <tr>
                                                                    <td><?php // echo ($numOrder++);      ?></td>
                                                                    <td><?php // echo $row["user_id"];      ?></td>
                                                                    <td><?php // echo $row["first_name"].' '.$row["last_name"];      ?></td>
                                                                    <td><?php // echo $row["item_count"];      ?></td>
                                                                    <td><?php // echo $row["total_price"];      ?></td>
                                                                </tr>
                    <?php
//                                        }
//                                    } else {
//                                        echo "0 results";
//                                    }
                    ?>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>-->
                </div>
            </div>
        </div>
    </div>

<!--    <div class="col-lg-5 col-md-12">
        <div class="card">
            <div class="card-header" data-background-color="purple">
                <h4 class="title">Employees Stats</h4>
                <p class="category">New employees on 15th September, 2016</p>
            </div>
            <div class="card-content table-responsive">
                <table class="table table-hover">
                    <thead class="text-warning">
                    <th>ID</th>
                    <th>Name</th>
                    <th>Salary</th>
                    <th>Country</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Dakota Rice</td>
                            <td>$36,738</td>
                            <td>Niger</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Minerva Hooper</td>
                            <td>$23,789</td>
                            <td>Curaçao</td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Sage Rodriguez</td>
                            <td>$56,142</td>
                            <td>Netherlands</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Philip Chaney</td>
                            <td>$38,735</td>
                            <td>Korea, South</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>-->
<!--</div>-->

<script>
    $(document).ready(function () {

    });
</script>