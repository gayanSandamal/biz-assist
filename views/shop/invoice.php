<?php include_once '../../controllers/connection.php'; ?>
<?php
//$get_customers_to_check = "
//SELECT
//customer_id,
//customer_name,
//phone
//FROM customer
//";
//
//$result_get_customers_to_check = $conn->query($get_customers_to_check);
?>
<div class="invoice-container">
    <div class="invoice-toggle">
        <i class="material-icons">chevron_left</i>
    </div>
    <div class="invoice-header">
        <h5 class="invoice-title">Current sale
            <button type="button" id="add-customer-live" class="btn btn-primary" onclick="add_customer_live()">Add customer</button>
            <button type="button" id="external-supply" class="btn btn-primary" onclick="external_supply()">Add resell item</button>
            <span class="hidden-lg hidden-md hidden-sm" id="mobile-bill-mode" onclick="mobile_bill_mode()"><i class="material-icons">aspect_ratio</i></span></h5>
    </div>
    <div class="invoice-body">
        <div class="invoice-body-inner">
            <table class="invoice-cart-table">
                <thead>
                    <tr>
                        <th style="width:10px; padding: 0px 0px 0px 10px;"><span>#</span></th>
                        <th><span>Item</span></th>
                        <th class="text-right"><span>Price</span></th>
                        <th class="text-right discount-td"><span>Discount (%)</span></th>
                        <th class="text-right"><span>Total</span></th>
                        <th style="width:10px; padding: 0px 0px;"></th>
                    </tr>
                </thead>
                <tbody>
                </tbody>
            </table>
        </div>
        <div class="invoice-body-controller">
            <div class="invoice-body-controller-input-container returning-customers-container">
                <!--<label>Returning customers</label>-->
                <!--<select id="returning-customers" name="returning_customer">-->
                <?php
//                    if ($result_get_customers_to_check->num_rows > 0) {
//                        while ($row = $result_get_customers_to_check->fetch_assoc()) {
                ?>
                    <!--<option value="<?php // echo $row["customer_id"];  ?>"><?php // echo $row["phone"];  ?> (<?php // echo $row["customer_name"];  ?>)</option>-->
                <?php
//                        }
//                    } else {
//                        echo "0 results";
//                    }
                ?>
                <!--</select>-->
            </div>
            <div class="invoice-body-controller-button-container hide">
                <button type="button" class="calculate-cart" onclick="calculate()"><i class="material-icons">dialpad</i><span>Calculate</span></button>
            </div>
            <div class="invoice-body-controller-input-container">
                <label>Total discount (Rs.)</label>
                <input type="number" class="tot-discount number" disabled="disabled"/>
            </div>
            <div class="invoice-body-controller-input-container">
                <label>Sub total (Rs.)</label>
                <input type="text" class="tot-price number" disabled="disabled"/>
            </div>
            <div class="invoice-body-controller-button-container">
                <!--<button type="button" class="clear-cart" onclick="discard_all_items()"><i class="material-icons">clear_all</i><span>Clear</span></button>-->
                <button type="button" class="hold-cart" onclick="hold_items()"><i class="material-icons">pause</i><span>Hold</span></button>
                <button type="button" class="pay-cart" onclick="proceed()"><i class="material-icons">play_arrow</i><span>Proceed</span></button>
            </div>
        </div>
    </div>
</div>