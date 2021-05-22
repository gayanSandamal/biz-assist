<?php
include_once '../../inc/baseUrl.php';
include_once '../../controllers/connection.php';

$id = $_GET['del_id'];
$ref = $_GET['ref'];
$get_sale_detail = "
SELECT
s.sale_details_id,
p.product_code_no,
p.product_name,
p.product_model_no,
c.cat_name,
s.item_count,
s.item_price,
s.item_discounted_price,
s.alt_notes,
s.alt_profit
FROM
sale_details s
LEFT JOIN product p
ON p.product_id = s.product_id
LEFT JOIN category c
ON c.cat_id = p.product_cat_id
WHERE sale_details_id = $id
";
$result_get_sale_detail = $conn->query($get_sale_detail);
?>
<div class="table-responsive">
    <table>
        <thead>
            <tr>
                <th>#</th>
                <th>Invoice no</th>
                <th>Name</th>
                <th>Model no</th>
                <th>Category</th>
                <th>Code no</th>
                <th>Count</th>
                <th>Price</th>
                <th>Discounted price</th>
                <th>Reselling notes</th>
                <th>Reselling profit</th>
            </tr>
        </thead>
        <tbody id="sale_body">
            <?php
            if ($result_get_sale_detail->num_rows > 0) {
                $numOrder = 1;
                $resell_note = isset($row["alt_notes"]) ? $row["alt_notes"] : '';
                while ($row = $result_get_sale_detail->fetch_assoc()) {
                    ?>
                    <tr>
                        <td><?php echo ($numOrder++); ?></td>
                        <td><?php echo $ref; ?></td>
                        <td class="name"><?php echo $row["product_name"]; ?></td>
                        <td><?php echo $row["product_model_no"]; ?></td>
                        <td><?php echo $row["product_code_no"]; ?></td>
                        <td><?php echo $row["cat_name"]; ?></td>
                        <td class="qty" class="text-right"><?php echo $row["item_count"]; ?></td>
                        <td class="price" class="text-right"><?php echo $row["item_price"]; ?></td>
                        <td class="discount text-right"><?php echo $row["item_discounted_price"]; ?></td>
                        <td><?php echo $resell_note; ?></td>
                        <td class="text-right"><?php echo $row["alt_profit"]; ?></td>
                    </tr>
                    <?php
                }
            } else {
                echo "0 results";
            }
            ?>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="11">
                    <button type="submit" class="btn btn-primary pull-right re-print-button" id="re-print-button" onclick="reprint(<?php echo $ref; ?>)">Re Print</button><div class="clearfix">
                </td>
            </tr>
        </tfoot>
    </table>
</div>

<script>
function reprint(ref) {
    console.log(ref)
    const store_address = 'No 97, Pepiliyana Road, Nedimala, Dehiwala'
    const tel_1 = 'Tel: +94 711342801'
    const invoice_number = ref
    const time = new Date()
    let tr = ''
    let total_price = 0
    $('#sale_body > tr').each(function(i) {
        const row = $(this)[i]
        if (row) {
            const cells = row.children
            let tds = ''
            let qty
            let price
            let total
            for (let index = 0; index < cells.length; index++) {
                const cell = cells[index]
                if (cell.classList.contains('name')) {
                    const name = cell.innerText
                    tds = tds + `<td>${name}</td>`
                }
                if (cell.classList.contains('qty')) {
                    qty = parseInt(cell.innerText)
                    tds = tds + `<td>${qty}</td>`
                }
                if (cell.classList.contains('price')) {
                    price = parseFloat(cell.innerText)
                    tds = tds + `<td>${price}</td>`
                    total = parseFloat(price*qty)
                    tds = tds + `<td>${total}</td>`
                }
            }
            total_price = total_price + total
            tr = tr + `<tr>${tds}</tr>`
        }
    })
    product_detail = tr
    var proceed_form = `
    <div class="proceed-form-container">
        <div class="proceed-form">
            <div class="proceed-form-inner">
            <span id="close_invoice" onclick="close_invoice()">
                <i class="material-icons">close</i>
            </span>
            <div class="bill-partition" id="bill-partition">
                <table style="width:100%;font-size:14px;font-weight:400;font-family:Arial;">
                <thead>
                    <tr>
                    <th colspan="4" class="text-center">
                        <h5 class="bill-logo" style="margin:0px;">
                        <img src="` + baseUrl + `/assets/img/md-chemists-logo.png" style="max-width:initial;width:auto;height:40px;display:block;margin:auto;margin-bottom:5px;" />
                        <h2 style="display:block;margin:auto;font-weight:600;margin-bottom:0px;">M.D.CHEMISTS</h2>
                        </h5>
                    </th>
                    </tr>
                    <tr>
                    <th colspan="4" class="text-center">
                        <p style="margin:0 0 5 0;font-weight:300;"><span id="store_location" style="text-transform: capitalize;">` + store_address + `</span></p>
                        <p style="margin:0 0 5 0;font-weight:300;">Tel: <span id="telephone_no" style="text-transform: capitalize;">` + tel_1 + `</span></p>
                        <p style="margin:0 0 5 0;font-weight:300;">Email: <span id="telephone_no">mddistributors@hotmail.com</span></p>
                        <p style="margin:0; text-align:left;font-weight:300;">
                        <span id="invoice_no_txt">Invoice: </span> <span id="invoice_number">` + invoice_number + `</span>
                        <p style="margin:0; text-align:right;font-weight:300;">
                        <span id="time">` + time + `</span>
                        </p>
                    </th>
                    </tr>
                    <tr style="text-align:left;font-weight:300;">
                    </tr>
                    <!-- <tr style="text-align:left;">
                    <th colspan="1">Patient: </th><th colspan="3">asasd</th>
                    </tr> -->
                    <tr>
                    <th style="text-align:left;">Name</th>
                    <th style="text-align:right;">Qty</th>
                    <th style="text-align:right;">Price</th>
                    <!-- <th style="text-align:right;">Discount (%)</th> -->
                    <th style="text-align:right;">Total</th>
                    </tr>
                </thead>
                <tbody>
                    ` + product_detail + `
                </tbody>
                <tfoot>
                    <tr>
                    <td colspan="4">
                        <div class="bottom-margin">&nbsp;</div>
                    </td>
                    </tr>
                    <tr>
                    <td colspan="3">Total price</td>
                    <td style="text-align:right;">Rs.<span id="total_price">` + total_price.toFixed(2) + `</span></td>
                    </tr>
                    <tr>
                    <td colspan="4" class="balance_td">
                        <div><span style="display: inline-block;">Cash</span>
                        <div style="display: inline-block; float:right;">Rs.<span class="cash_span" id="cash_span">0.00</span>
                        </div>
                        </div>
                        <div><span style="display: inline-block;">Balance</span>
                        <div style="display: inline-block; float:right;">Rs.<span class="balance_span" id="balance_span">0.00</span></div>
                        </div>
                    </td>
                    </tr>
                    <tr>
                    <td colspan="4">
                        <div class="bottom-margin; border-bottom: 1px solid #000;">&nbsp;</div>
                    </td>
                    </tr>
                    <tr>
                    <td colspan="4" class="balance_td text-center">
                        <h3 style="display:block;margin:auto;font-weight:400;margin-bottom:0px;">Thank you! Come again...</h3>
                    </td>
                    </tr>
                    <!-- <tr>
                    <td colspan="4">
                        <div class="bottom-margin">&nbsp;</div>
                    </td>
                    </tr> -->
                    <!-- <tr>
                    <td colspan="4">
                        <div class="bottom-margin">&nbsp;</div>
                    </td>
                    </tr> -->
                </tfoot>
                </table>
            </div>
            <div class="account-partition">
                <div class="account-partition-inner">
                <div class="account-partition-field-block">
                    <label>Cash amount</label>
                    <input type="text" class="number" id="getBalance" onkeyup="getBalance()" change="getBalance()" autofocus />
                </div>
                <div class="account-partition-field-block">
                    <label>Balance</label>
                    <input type="text" class="number" id="balance_input" disabled />
                </div>
                <div class="account-partition-field-block">
                    <button type="button" class="paccount-partition-print-btn quotaion-btn" onclick="printDivQuotaion()">Print
                    Quotation</button>
                </div>
                </div>
            </div>
            </div>
        </div>
    </div>`;
    $('body').append(proceed_form);
}

function getBalance() {
    var cash_amount = parseFloat($(event.target).val());
    var get_sub_total = parseFloat($('#sub_total').text());
    var balance_amount;

    if (customer_id_init == '0') {
        returning_customer_discounted_price = 0;
        balance_amount = cash_amount - get_sub_total;
    } else {
        balance_amount = cash_amount - parseFloat($('span#returning_customer_discounted_price').text());
    }
    $('#balance_input').val(balance_amount.toFixed(2));
    $('#cash_span').text(cash_amount);
    $('#balance_span').text(balance_amount.toFixed(2));
}

function printDivQuotaion() {
    if (($('#getBalance').val() === "") || ($('#getBalance').val() === "0")) {} else {
        $('#invoice_no_txt').text('Quotaion');
        $('#invoice_number').hide();
        var divToPrint = document.getElementById('bill-partition');
        var newWin = window.open('', 'Print-Window');
        newWin.document.open();
        newWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML + '</body></html>');
        newWin.document.close();
        setTimeout(function() {
            newWin.close();
        }, 10);
        discard_all_items_completed_payment();
        $('.proceed-form-container').remove();
    }
}
</script>