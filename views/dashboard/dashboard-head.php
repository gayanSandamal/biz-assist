
<?php include_once '../../controllers/connection.php'; ?>

<?php
$get_branches = "
SELECT
branch_id,
branch_name,
branch_location
FROM branch
ORDER BY branch_location ASC
";
$result_get_branches = $conn->query($get_branches);

$get_users_branch = "
SELECT
u.user_id,
u.username,
u.branch_id
FROM user u
LEFT OUTER JOIN branch b
ON b.branch_id = u.branch_id
WHERE u.user_id = '$user_id_new'
";
$result_get_users_branch = $conn->query($get_users_branch);
if ($result_get_users_branch->num_rows > 0) {
    $numOrder = 1;
    while ($row = $result_get_users_branch->fetch_assoc()) {
        $current_user_branch_id = $row["branch_id"];
    }
} else {
    echo "0 results";
}

date_default_timezone_set('Asia/Calcutta');
$to_prev_date = date("Y-m-d");
$to_prev_after_date = strtotime($to_prev_date . ' +1 day');
$to_date = date('Y-m-d', $to_prev_after_date);
$from_date = date("Y-m-d");
$from_date_strtotime = strtotime($from_date . ' -1 year');
$from_date_strtotime_after = date('Y-m-d', $from_date_strtotime);
?>
<!--<div class="row">-->
<div class="card">
    <form>
        <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card-content">
                <p class="category">Locations</p>
            </div>
            <div class="card-footer">
                <div class="stats full-width">
                    <div class="form-group dashboard-head-form-group full-width">
                        <select class="form-control branch-location full-width" id="search-filter-branch-location" name="branch_loc_id">
                            <?php
                            if ($result_get_branches->num_rows > 0) {
                                $numOrder = 1;
                                while ($row = $result_get_branches->fetch_assoc()) {
                                    ?>
                                    <option value="<?php echo $row["branch_id"]; ?>" <?php echo ($row["branch_id"] == $current_user_branch_id ? 'selected' : ''); ?>><?php echo $row["branch_location"]; ?></option>
                                    <?php
                                }
                            } else {
                                echo "0 results";
                            }
                            ?>
                        </select>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card-content">
                <p class="category">Starting date</p>
            </div>
            <div class="card-footer">
                <div class="stats full-width">
                    <div class="form-group dashboard-head-form-group full-width">
                        <input type="text" class="form-control from-date-location full-width" id="from-date-location" value="<?php echo $from_date_strtotime_after; ?>" name="from_date"/>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card-content">
                <p class="category">Ending date</p>
            </div>
            <div class="card-footer">
                <div class="stats full-width">
                    <div class="form-group dashboard-head-form-group full-width">
                        <input type="text" class="form-control to-date-location full-width" id="to-date-location" value="<?php echo $to_date; ?>" name="to_date"/>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card-footer">
                <div class="stats full-width full-width">
                    <div class="form-group dashboard-head-form-group full-width">
                        <button type="button" class="btn btn-primary full-width" id="process-location">Process</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<!--</div>-->

<script>
//    $(document).ready(function () {
//    });
</script>