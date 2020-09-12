<?php
include_once '../../controllers/connection.php';
$branch_loc_id = htmlspecialchars($_GET["branch_loc_id"]);
$from_date = htmlspecialchars($_GET["from_date"]);
$to_date = htmlspecialchars($_GET["to_date"]);

$get_all_users = "
    SELECT
    COUNT(u.username) AS user_count
    FROM user u
    LEFT OUTER JOIN branch b
    ON b.branch_id = u.branch_id
    WHERE NOT u.user_level_id = 0
";
$result_get_all_users = $conn->query($get_all_users);
if ($result_get_all_users->num_rows > 0) {
    while ($row = $result_get_all_users->fetch_assoc()) {
        $user_count = $row["user_count"];
    }
}
$get_all_branches = "
    SELECT
    COUNT(branch_location) AS branch_location
    FROM branch
";
$result_get_all_branches = $conn->query($get_all_branches);

if ($result_get_all_branches->num_rows > 0) {
    while ($row = $result_get_all_branches->fetch_assoc()) {
        $branch_count = $row["branch_location"];
    }
}
$get_branch_profit = "
SELECT
TRIM(TRAILING '.00' FROM SUM(COALESCE(NULLIF(i.loyalty_offered_price,''), i.item_total_price))) AS profit
FROM invoice i
LEFT OUTER JOIN user u
ON u.user_id = i.user_id
LEFT OUTER JOIN branch b
ON b.branch_id = u.branch_id
WHERE invoice_time BETWEEN '$from_date' AND '$to_date' AND NOT invoice_id = '0' AND b.branch_id = '$branch_loc_id'
";
$result_get_branch_profit = $conn->query($get_branch_profit);

if ($result_get_branch_profit->num_rows > 0) {
    while ($row = $result_get_branch_profit->fetch_assoc()) {
        $branch_profit = $row["profit"];
    }
}

$get_branch_discount = "
SELECT
TRIM(TRAILING '.00' FROM SUM(i.item_total_discount)) AS discount
FROM invoice i
LEFT OUTER JOIN user u
ON u.user_id = i.user_id
LEFT OUTER JOIN branch b
ON b.branch_id = u.branch_id
WHERE invoice_time BETWEEN '$from_date' AND '$to_date' AND NOT invoice_id = '0' AND b.branch_id = '$branch_loc_id'
";
$result_get_branch_discount = $conn->query($get_branch_discount);

if ($result_get_branch_discount->num_rows > 0) {
    while ($row = $result_get_branch_discount->fetch_assoc()) {
        $branch_discount = $row["discount"];
    }
}

$get_buying_tot = "
SELECT
i.invoice_id,
i.invoice_time,
s.product_id,
p.product_name,
p.product_model_no,
p.buying_price,
s.item_count,
TRIM(TRAILING '.00' FROM SUM(p.buying_price * s.item_count)) AS SUM
FROM
sale_details s
LEFT OUTER JOIN product p
ON p.product_id = s.product_id
LEFT OUTER JOIN invoice i
ON i.invoice_id = s.sale_details_id
WHERE NOT sale_details_id = 0 AND p.branch_id = $branch_loc_id AND i.invoice_time BETWEEN '$from_date' AND '$to_date'
";
$result_get_buying_tot = $conn->query($get_buying_tot);

if ($result_get_buying_tot->num_rows > 0) {
    while ($row = $result_get_buying_tot->fetch_assoc()) {
        $buying_tot = $row["SUM"];
    }
}

$get_tot_resell = "
SELECT
TRIM(TRAILING '.00' FROM SUM(s.alt_profit * s.item_count)) AS tot_alt_profit
FROM
sale_details s
LEFT OUTER JOIN invoice i
ON i.invoice_id = s.sale_details_id
WHERE NOT s.sale_details_id = 0 AND s.product_id = 0
AND i.invoice_time BETWEEN '$from_date' AND '$to_date'
AND s.alt_branch_id = $branch_loc_id    
";
$result_get_tot_resell = $conn->query($get_tot_resell);

if ($result_get_tot_resell->num_rows > 0) {
    while ($row = $result_get_tot_resell->fetch_assoc()) {
        $tot_resell = $row["tot_alt_profit"];
    }
}

$get_tot_buy = "
SELECT
TRIM(TRAILING '.00' FROM SUM(s.alt_buy * s.item_count)) AS tot_alt_buy
FROM
sale_details s
LEFT OUTER JOIN invoice i
ON i.invoice_id = s.sale_details_id
WHERE NOT s.sale_details_id = 0 AND s.product_id = 0
AND i.invoice_time BETWEEN '$from_date' AND '$to_date'
AND s.alt_branch_id = $branch_loc_id  
";
$result_get_tot_buy = $conn->query($get_tot_buy);

if ($result_get_tot_buy->num_rows > 0) {
    while ($row = $result_get_tot_buy->fetch_assoc()) {
        $tot_alt_buy = $row["tot_alt_buy"];
    }
}
?>

<h3 class="dash-sector-title">Overall summery</h3>
<!--<div class="row">-->
<div class="col-lg-3 col-md-6 col-sm-6">
    <div class="card card-stats">
        <div class="card-header" data-background-color="orange">
            <i class="material-icons">accessibility</i>
        </div>
        <div class="card-content">
            <p class="category">All users</p>
            <h3 class="title"><?php echo $user_count; ?></h3>
        </div>
        <!--            <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons text-danger">warning</i>
                            <a href="#pablo">View More Details...</a>
                        </div>
                    </div>-->
    </div>
</div>
<div class="col-lg-3 col-md-6 col-sm-6">
    <div class="card card-stats">
        <div class="card-header" data-background-color="green">
            <i class="material-icons">store</i>
        </div>
        <div class="card-content">
            <p class="category">No. of locations</p>
            <h3 class="title"><?php echo $branch_count; ?></h3>
        </div>
        <!--            <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons">date_range</i> Last 24 Hours
                        </div>
                    </div>-->
    </div>
</div>
<div class="col-lg-3 col-md-6 col-sm-6">
    <div class="card card-stats">
        <div class="card-header" data-background-color="blue">
            <i class="material-icons">thumbs_up_down</i>
        </div>
        <div class="card-content">
            <p class="category">Gross profit</p>
            <h3 class="title">Rs.<?php echo $branch_profit; ?></h3>
        </div>
        <!--            <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons">update</i> Just Updated
                        </div>
                    </div>-->
    </div>
</div>
<div class="col-lg-3 col-md-6 col-sm-6">
    <div class="card card-stats">
        <div class="card-header" data-background-color="red">
            <i class="material-icons">card_giftcard</i>
        </div>
        <div class="card-content">
            <p class="category">Total discounts</p>
            <h3 class="title">Rs.<?php echo $branch_discount; ?></h3>
        </div>
        <!--            <div class="card-footer">
                        <div class="stats">
                            <i class="material-icons">local_offer</i> Tracked from Github
                        </div>
                    </div>-->
    </div>
</div>

<div class="col-lg-3 col-md-6 col-sm-6">
    <div class="card card-stats">
        <div class="card-header" data-background-color="purple">
            <i class="material-icons">transfer_within_a_station</i>
        </div>
        <div class="card-content">
            <p class="category">Total Reselling profit</p>
            <h3 class="title">Rs.<?php echo $tot_resell; ?></h3>
        </div>
    </div>
</div>

<div class="col-lg-3 col-md-6 col-sm-6">
    <div class="card card-stats">
        <div class="card-header" data-background-color="blue">
            <i class="material-icons">trending_up</i>
        </div>
        <div class="card-content">
            <p class="category">Net profit</p>
            <h3 class="title">Rs.<?php echo ($branch_profit - $buying_tot - $tot_alt_buy); ?></h3>
        </div>
    </div>
</div>


<!--</div>-->