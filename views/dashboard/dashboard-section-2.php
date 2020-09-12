<?php
include_once '../../controllers/connection.php';
$branch_loc_id = htmlspecialchars($_GET["branch_loc_id"]);
$from_date = htmlspecialchars($_GET["from_date"]);
$to_date = htmlspecialchars($_GET["to_date"]);


$get_sales_graph = "
    SELECT
    DATE_FORMAT(i.invoice_time, '%Y') AS year,
    DATE_FORMAT(i.invoice_time, '%m') AS month,
    SUM(i.item_total_price) AS item_total_price,
    SUM(i.item_total_discount) AS item_total_discount,
    u.username,
    b.branch_location
    FROM
    invoice i
    LEFT OUTER JOIN user u
    ON u.user_id = i.user_id
    LEFT OUTER JOIN branch b
    ON b.branch_id = u.branch_id
    WHERE invoice_time BETWEEN '$from_date' AND '$to_date' AND NOT invoice_id = '0' AND b.branch_id = '$branch_loc_id'
    GROUP BY year, month
    ORDER BY YEAR, MONTH ASC
";
$result_get_sales_graph = $conn->query($get_sales_graph);

$get_daily_sales_graph = "
    SELECT
    DATE_FORMAT(i.invoice_time, '%H') AS hour,
    SUM(i.item_total_price) AS item_total_price,
    SUM(i.item_total_discount) AS item_total_discount,
    u.username,
    b.branch_location
    FROM
    invoice i
    LEFT OUTER JOIN user u
    ON u.user_id = i.user_id
    LEFT OUTER JOIN branch b
    ON b.branch_id = u.branch_id
    WHERE invoice_time BETWEEN '$from_date' AND '$to_date' AND NOT invoice_id = '0' AND b.branch_id = '$branch_loc_id'
    GROUP BY hour
    ORDER BY hour ASC
";
$result_get_daily_sales_graph = $conn->query($get_daily_sales_graph);
?> 

<?php
if ($result_get_sales_graph->num_rows > 0) {
    $numOrder = 1;
    $sale_time = array();
    $sale_profit = array();
    $sale_discount = array();
    while ($row = $result_get_sales_graph->fetch_assoc()) {
//        $sale_time[] = "'".substr($row["year"], 2) . '-' . $row["month"];
        $sale_time[] = $row["year"].'-'.$row["month"];
        $sale_profit[] = $row["item_total_price"];
        $sale_discount[] = $row["item_total_discount"];
    }
    $sale_time_new = trim(json_encode($sale_time));
    $sale_profit_new = trim(json_encode($sale_profit));
    $sale_discount_new = trim(json_encode($sale_discount));
} else {
    echo "0 results";
}
if ($result_get_daily_sales_graph->num_rows > 0) {
    $numOrder = 1;
    $sale_hour = array();
    $sale_profit = array();
    while ($row = $result_get_daily_sales_graph->fetch_assoc()) {
        $sale_hour[] = $row["hour"].':00';
        $sale_profit[] = $row["item_total_price"];
    }
    $sale_hour_new = trim(json_encode($sale_hour));
    $sale_profit_new = trim(json_encode($sale_profit));
} else {
    echo "0 results";
}
?>

<h3 class="dash-sector-title">Sales analytics</h3>
<!--<div class="row">-->
    <div class="col-md-6">
        <div class="card">
            <div class="card-header card-chart" data-background-color="green">
                <div class="ct-chart" id="salesChart"></div>
            </div>
            <div class="card-content">
                <h4 class="title"><div class="ct-legend ct-legend-sales">Sales<span></span></div> and <div class="ct-legend ct-legend-discounts">Discounts<span></span></div></h4>
<!--                <p class="category">
                    <span class="text-success"><i class="fa fa-long-arrow-up"></i> 45% </span> increase in sales.
                </p>-->
            </div>
            <!--            <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons">access_time</i> updated 4 minutes ago
                            </div>
                        </div>-->
        </div>
    </div>
    <div class="col-md-6">
        <div class="card">
            <div class="card-header card-chart" data-background-color="orange">
                <div class="ct-chart" id="dailySales"></div>
            </div>
            <div class="card-content">
                <h4 class="title">Day Wise Sales
                    <div class="ct-legend date-legend">
                        <?php echo '( from '.$from_date.' to '.$to_date.' ) '; ?>
                    </div>
                </h4>
                <!--<p class="category">Last Campaign Performance</p>-->
            </div>
            <!--            <div class="card-footer">
                            <div class="stats">
                                <i class="material-icons">access_time</i> campaign sent 2 days ago
                            </div>
                        </div>-->
        </div>
    </div>
<!--</div>-->

<script>
    $(document).ready(function () {
        setTimeout(function () {
            var data = {
                labels: <?php echo $sale_time_new; ?>,
                series: [
                    <?php echo $sale_profit_new; ?>,
                    <?php echo $sale_discount_new; ?>
                ]
            };
            var options = {
                seriesBarDistance: 10,
                axisY: {
                    offset: 50
                }
            };
            var responsiveOptions = [
                ['screen and (max-width: 640px)', {
                        seriesBarDistance: 5,
                        axisX: {
                            labelInterpolationFnc: function (value) {
                                return value[0];
                            }
                        }
                    }]
            ];
            new Chartist.Bar('#salesChart', data, options, responsiveOptions);
        }, 500);
        setTimeout(function () {
            new Chartist.Bar('#dailySales', {
                labels: <?php echo $sale_hour_new; ?>,
                series: [
                    <?php echo $sale_profit_new; ?>
                ]
            }, {
                seriesBarDistance: 10,
//                reverseData: true,
//                horizontalBars: true,
                axisY: {
                    offset: 50
                }
            });
        }, 500);
    });
</script>