<style>
    .detail-pg-popup {
        background-color: rgba(255,255,255,0.6);
    }
    .main-panel>.content {
        padding: 30px 15px 30px 15px !important;
    }

    @media only screen and (min-width : 0px) and (max-width : 992px) {
        body.menu-is-active .main-panel {
            transform: translateX(0px) !important;
        }
    }
</style>
<?php include_once '../../inc/header.php'; ?>
<?php include_once '../../inc/sidebar.php'; ?>

<?php include_once '../../controllers/connection.php'; ?>

<?php
$get_branch = "
SELECT
u.username,
u.first_name,
u.last_name,
b.branch_id,
b.branch_name,
b.branch_location,
b.address,
b.tel_1,
b.tel_2,
b.tel_3
FROM user u
LEFT OUTER JOIN branch b
ON b.branch_id = u.branch_id
WHERE u.user_id = '$user_id_new'
";
$result_get_branch = $conn->query($get_branch);
if ($result_get_branch->num_rows > 0) {
    while ($row = $result_get_branch->fetch_assoc()) {
        $username = $row["username"];
        $first_name = $row["first_name"];
        $last_name = $row["last_name"];
        $branch_name = $row["branch_name"];
        $branch_id = $row["branch_id"];
        $branch_location = $row["branch_location"];
        $address = $row["address"];
        $tel_1 = $row["tel_1"];
        $tel_2 = $row["tel_2"];
        $tel_3 = $row["tel_3"];
    }
} else {
    
}


$get_products = "
SELECT
	p.product_id,
	p.product_name,
	p.product_desc,
	c.cat_name,
	b.brand_name,
	i.img_path,
	p.product_model_no,
	p.product_code_no,
	s.supplier_name,
	p.buying_price,
	p.selling_price,
	p.availability,
	p.tax_id,
	p.offer_type_id,
	p.offer_value,
	p.discounted,
	p.product_added_date,
	p.product_exp_date,
	p.user_id,
	p.qty,
	p.product_condition_id,
	pcon.product_condition_state
FROM
	product p
LEFT OUTER JOIN category c ON c.cat_id = p.product_cat_id
LEFT OUTER JOIN brand b ON b.brand_id = p.product_brand_id
LEFT OUTER JOIN suppliers s ON s.supplier_id = p.supplier_id
LEFT OUTER JOIN image i ON i.img_id = p.img_id
LEFT OUTER JOIN product_condition pcon ON pcon.product_condition_id = p.product_condition_id
WHERE
	p.branch_id = '$branch_id' AND p.flag = 1
ORDER BY
	c.cat_name ASC
";
$result_get_products = $conn->query($get_products);
?>
<div class="main-panel shop-page">
    <?php include_once '../../inc/navbar-shop.php'; ?>
    <?php // include_once 'shop-header.php'; ?>
    <div class="content">
        <div class="container-fluid no-side-paddings">
            <?php include_once 'invoice.php'; ?>
            <div class="shop-container list-view-on">
                <table>
                    <tbody>
                    <?php
                    if ($result_get_products->num_rows > 0) {
                        while ($row = $result_get_products->fetch_assoc()) {
                            ?>
                            <tr>
                                <a class="item-category-name cat-name-is-<?php echo $row['cat_name']; ?>" data-cat="<?php echo $row["cat_name"]; ?>">
                                    <span><?php echo $row["cat_name"]; ?></span>
                                </a>
                                <div class="shop-item <?php echo ($row["availability"] == 1 ? 'available' : 'not-available'); ?> visual-id-<?php echo $row["product_id"]; ?>" onclick="add_to_invoice('<?php echo ($row["availability"] == 1 ? '1' : '0'); ?>', '<?php echo $row["product_id"]; ?>')" id="<?php echo $row["product_id"]; ?>" data-category="<?php echo $row["cat_name"]; ?>">
                                    <div class="shop-item-container">
                                        <div class="shop-item-top">
                                            <div class="shop-item-top-img">
                                                <!-- <div class="shop-item-top-img-overlay"></div> -->
                                                <div class="shop-item-top-img-content">
                                                    <span class="shop-item-cat"><?php echo $row["cat_name"]; ?></span>
                                                    <span class="shop-item-brand"><?php echo $row["brand_name"]; ?></span>
                                                    <h5 class="shop-item-top-title">
                                                        <span class="shop-item-name"><?php echo $row["product_name"]; ?>-<?php echo $row["product_model_no"]; ?></span> (<span class="shop-item-count"><?php echo $row["qty"]; ?></span>)
                                                        <div class="condition-tag">
                                                            <?php
                                                            $condition = $row["product_condition_id"];
                                                            if ($condition == 1) {
                                                                ?>
                                                                <i class="material-icons condition_1">done_all</i>
                                                            <?php } elseif ($condition == 2) {
                                                                ?>
                                                                <i class="material-icons condition_2">done</i>
                                                            <?php } else {
                                                                ?>
                                                                <i class="material-icons condition_3">close</i>
                                                            <?php }
                                                            ?>
                                                        </div>
                                                        <div class="code-tag" id="code-<?php echo $row["product_code_no"]; ?>"><?php echo $row["product_code_no"]; ?></div>
                                                    </h5>
                                                </div>
                                                <span class="out-of-stock">out of stock</span>
                                            </div>
                                        </div>
                                        <div class="shop-item-bottom">
                                            <div class="shop-item-bottom-controller">
                                                <p class="shop-selling-price <?php echo ($row["discounted"] == 0 ? '' : 'discounted'); ?>">
                                                    <span class="shop-selling-value">Rs. <?php echo $row["selling_price"]; ?></span>
                                                    <span class="hidden-count hide"><?php echo $row["qty"]; ?></span>
                                                    <span class="shop-discount-value">Rs. <?php echo $row["discounted"]; ?></span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
<?php include_once '../../inc/footer.php'; ?>

<script>
    var customer_val_init = "None";
    var customer_id_init = 0;
    var customer_discount_profit = 0;
    var returning_customers = $('#returning-customers');

    $('#returning-customers').select2();
    returning_customers.on('change', function () {
        var customer_val = $(this).select2('data');
        var customer_val_new = (customer_val[0].text).replace('%', '');
        var customer_id_new = (customer_val[0].id);
        customer_val_init = customer_val_new;
        customer_id_init = customer_id_new;
        if (customer_id_init == '0') {
            customer_discount_profit = 0;
        } else {
            customer_discount_profit = 5;
        }
        alert('customer_discount_profit');
    });

    $(document).ready(function () {

        $('.returning-customers-container').load(baseUrl + '/views/shop/partial-show-customers.php');

        $('.shop-item').each(function () {
            var item_count = $(this).find('span.shop-item-count');
            if (parseInt(item_count.text()) == 0) {
                item_count.closest('.shop-item').addClass('not-available');
                item_count.closest('.shop-item').removeClass('available');
            }
        });

        $('.navbar .navbar-nav > li > a').on('click', function () {
            $(this).closest('.dropdown').toggleClass('open');
        });
//        var hold_btn = '<button id="get-held-cart" class="btn btn-primary" onclick="get_held_cart()">Get held cart</button>';
//        $('div#bs-example-navbar-collapse-1').prepend(hold_btn);
        menu_trigger();
        $("#availability-checkbox").on('change', function () {
            if ($("#availability-checkbox").prop('checked') == true) {
                $('.discount-td').addClass('after');
                $('.invoice-container').addClass('discounted');
            } else {
                $('.discount-td').removeClass('after');
                $('.invoice-container').removeClass('discounted');
            }
        });

        $('.shop-item-bottom-controller-details').on('click', function (e) {
            e.preventDefault();
            var del_id = $(this).attr('href');
            $.ajax({
                type: 'GET',
                url: 'detail.php',
                data: {del_id: del_id},
                success: function (data) {
                    var detail_page_url = 'detail.php?del_id=' + del_id;
                    var detail_pg = '<div class="detail-pg-popup"><div id="detail-loader"></div></div>';
                    $('body').append(detail_pg);
                    setTimeout(function () {
                        $('#detail-loader').load(detail_page_url);
                    }, 500);
                }
            });
        });

//        categorise
        var seen = {};
        $('.item-category-name').each(function () {
            var txt = $(this).find('span').text();
            if (seen[txt])
                $(this).remove();
            else
                seen[txt] = true;
        });
//        categorise

        focus_to_search();

        $('.invoice-toggle').on('click', function () {
            toggle_invoice();
        });
    });
    function toggle_invoice() {
        $('.shop-container').toggleClass('after');
        $('.invoice-container').toggleClass('after');
    }
    function remove_pop_up() {
        $('.detail-pg-popup').remove();
    }
    function add_to_invoice(availability, item_id) {
        if (availability == 1) {
            getItem(item_id);
        } else {

        }
    }
    var cart = [];
    function getItem(item_id) {
        var cartItem_price;
        var cartItem = $('#' + item_id);
        var cartItem_brand = cartItem.find('span.shop-item-brand').text();
        var cartItem_name = cartItem.find('h5.shop-item-top-title > span.shop-item-name').text();
        var cartItem_count = cartItem.find('h5.shop-item-top-title > span.shop-item-count').text();
        var cartItem_selling_element = cartItem.find('p.shop-selling-price');
        var cartItem_hidden_count = parseFloat(cartItem.find('span.hidden-count.hide').text());
        if ($(cartItem_selling_element).hasClass('discounted')) {
            cartItem_price = cartItem.find('span.shop-discount-value').text().replace('Rs. ', '');
        } else {
            cartItem_price = cartItem.find('span.shop-selling-value').text().replace('Rs. ', '');
        }
        var item = {};
        item.id = item_id;
        item.name = cartItem_name;
        item.brand = cartItem_brand;
        item.price = cartItem_price;
        item.hidden_count = cartItem_hidden_count;
        item.count = cartItem_count;
        cart.push({item: item});
//        console.log(JSON.stringify(cart));
        var visual_id_block = $('.visual-id-' + item_id);
        if (visual_id_block.hasClass('not-available')) {

        } else {
            addItem(item);
        }
//        focus_to_search();
    }
    var single_count = 1, single_total;
    function addItem(item) {
        $('.shop-container').addClass('after');
        $('.invoice-container').addClass('after');

        single_total = parseFloat(item.price).toFixed(2);
        var append_item = `
            <tr id="` + item.id + `">
                <td style="width:10px; padding: 10px 0px;"><input class="invoice-cart-single-count" type="number" value="` + single_count + `"/></td>
                <td><div class="invoice-cart-single-name">` + item.name + `</div></td>
                <td class="text-right"><div class="invoice-cart-single-price">Rs.<span>` + item.price + `</span></div></td>
                <td class="text-right discount-td"><div class="invoice-cart-single-ondeal-discount">Rs.<input type="text" class="discount-field number text-right" onkeyup="single_discount(` + item.id + `)" onchange="single_discount(` + item.id + `)" value="0"></div></td>
                <td class="text-right"><div class="invoice-cart-single-total">Rs.<span>` + single_total + `</span></div></td>
                <td class="text-right" style="width:10px; padding: 10px 0px;"><span class="remove-from-invoice text-right" onclick="remove_from_invoice()"><i class="material-icons">close</i></span></td>
            </tr>
`;
        $('table.invoice-cart-table tbody').append(append_item);

        var cartItem_count = $(event.target).closest('div#' + item.id).find('h5.shop-item-top-title > span.shop-item-count').text();
        cartItem_count = parseInt(cartItem_count);
        var item_tr = $('table.invoice-cart-table tbody').find('tr#' + item.id);

        if (item_tr.length > 1) {
            item_tr.last().remove();
            var prevElementVal = item_tr.find('input.invoice-cart-single-count').val();
            prevElementVal = parseInt(prevElementVal);
            prevElementVal += 1;
            item_tr.find('input.invoice-cart-single-count').val(prevElementVal);
            cartItem_count -= 1;
            item_tr.find('input.invoice-cart-single-count').on('change keyup', function () {
                if (($(this).val() === "") || ($(this).val() === "0")) {
                    $(this).val(1);
                }
                var item_single_price = parseFloat(item_tr.find('.invoice-cart-single-price > span').text());
                var item_single_count = parseFloat($(this).val());
                var item_single_total = item_single_price * item_single_count;
                item_tr.find('.invoice-cart-single-total > span').text(parseFloat(item_single_total).toFixed(2));
            });
        } else {
            cartItem_count -= 1;
            item_tr.find('input.invoice-cart-single-count').on('change keyup', function () {
                if (($(this).val() === "") || ($(this).val() === "0") || ($(this).val() < 0)) {
                    $(this).val(1);
                }
                var item_single_price = parseFloat(item_tr.find('.invoice-cart-single-price > span').text());
                var item_single_count = parseFloat($(this).val());
                var discount_field = parseFloat(item_tr.find('input.discount-field').val());
                var item_single_total = (item_single_price * item_single_count) - discount_field;
                item_tr.find('.invoice-cart-single-total > span').text(parseFloat(item_single_total).toFixed(2));

                //update count onchange
                var changing_count = parseInt($(this).val());
                var hidden_count = parseInt(item.hidden_count);
                cartItem_count = hidden_count - changing_count;
                $('.visual-id-' + item.id).find('span.shop-item-count').text(cartItem_count);
                //update count onchange
                if (changing_count == hidden_count) {
                    out_of_stock();
                } else if (changing_count > hidden_count) {
                    out_of_stock();
                    $(this).val(hidden_count);
                    $('.visual-id-' + item.id).find('span.shop-item-count').text(hidden_count);
                } else {
                    $('.visual-id-' + item.id).removeClass('not-available');
                    $('.visual-id-' + item.id).addClass('available');
                }
                function out_of_stock() {
                    $('.visual-id-' + item.id).removeClass('available');
                    $('.visual-id-' + item.id).addClass('not-available');
                }

                calc_warn();
            });
        }
        $('.visual-id-' + item.id).find('span.shop-item-count').text(cartItem_count);
        item_tr.find('input.invoice-cart-single-count').trigger('change');

        var go = "";
        $('input.number').on('keyup', function () {
            var currentNumberElement = $(this);
            var number = $(this).val();
            var cnumber = parseFloat(number);

            if (/[0-9]/.test(cnumber)) {
                go = 1;
            } else {
                go = 0;
                var color = 'red';
                var icon = 'times';
                var msg = 'Numbers only';
                push_notificatoin(color, icon, msg);
                currentNumberElement.val("");
            }
        });
    }

    function remove_from_invoice() {
        var remove_item_btn = $(event.target);
        remove_item_btn.closest('tr').addClass('to-remove');
        var remove_id = remove_item_btn.closest('tr').attr('id');

        var remove_hidden_count = $('.visual-id-' + remove_id).find('span.hidden-count.hide').text();
        $('.visual-id-' + remove_id).find('span.shop-item-count').text(remove_hidden_count);
        $('.visual-id-' + remove_id).removeClass('not-available');
        $('.visual-id-' + remove_id).addClass('available');

        setTimeout(function () {
            remove_item_btn.closest('tr').remove();
        }, 300);
        calc_warn();
        focus_to_search();
    }

//    single discount
    function single_discount(item_id) {
        var single_discounted_price;
        var single_discount_field = $(event.target);
        var single_discount_field_val = parseFloat(single_discount_field.val());
        var single_price_cart = parseFloat(single_discount_field.closest('tr#' + item_id).find('.invoice-cart-single-price > span').text());
        var single_count_cart = parseFloat(single_discount_field.closest('tr#' + item_id).find('input.invoice-cart-single-count').val());
        if ((single_discount_field.val() === "") || (single_discount_field.val() < 0) || (single_discount_field.val() === 0)) {
            single_discount_field.val(0);
            single_discounted_price = (single_price_cart * single_count_cart);
        } else {
            single_discounted_price = (single_price_cart * single_count_cart) - single_discount_field_val;
        }
        $('table.invoice-cart-table tbody tr#' + item_id + ' .invoice-cart-single-total > span').text(parseFloat(single_discounted_price).toFixed(2));
        calc_warn();
    }
//    single discount

//sub total
    function calculate() {
        var discount_total = 0;
        var total = 0;
        $('input.discount-field').each(
                function () {
                    discount_total += parseFloat($(this).val());
                }
        );
        $('.invoice-cart-single-total > span').each(
                function () {
                    total += parseFloat($(this).text().trim());
                }
        );
//        console.log('discount_total: '+discount_total);
//        console.log('total: '+total);
        $('input.tot-discount').val(discount_total.toFixed(2));
//        var sub_total = total - discount_total;
        $('input.tot-price.number').val(total.toFixed(2));
        $('button.calculate-cart').removeClass('remind-to-calculate');
    }
//sub total

    function discard_all_items() {
        $(function ($) {
            var seat = $('table.invoice-cart-table tbody tr');
            for (var i = 0; i < seat.length; i++) {
                (function (index) {
                    setTimeout(function () {
                        seat.eq(index).addClass('to-remove');
                    }, 100 * index);
                })(i);

                setTimeout(function () {
                    seat.remove();
                }, 1000);
            }
        });
        $('.shop-item').each(function () {
            var hidden_count = $(this).find('span.hidden-count.hide').text();
            $(this).find('span.shop-item-count').text(hidden_count);
            var visible_count = parseInt($(this).find('span.shop-item-count').text());
            if (visible_count < 1) {
                $(this).addClass('not-available');
                $(this).removeClass('available');
            } else {
                $(this).removeClass('not-available');
                $(this).addClass('available');
            }
        });
        setTimeout(function () {
            $('.invoice-container').removeClass('after');
            $('.shop-container').removeClass('after');
        }, 1000);
        $('input.tot-discount').val("");
        $('input.tot-price.number').val("");
    }
    function discard_all_items_completed_payment() {
        $(function ($) {
            var seat = $('table.invoice-cart-table tbody tr');
            for (var i = 0; i < seat.length; i++) {
                (function (index) {
                    setTimeout(function () {
                        seat.eq(index).addClass('to-remove');
                    }, 100 * index);
                })(i);

                setTimeout(function () {
                    seat.remove();
                }, 1000);
            }
        });

        setTimeout(function () {
            $('.invoice-container').removeClass('after');
            $('.shop-container').removeClass('after');
        }, 1000);
        $('input.tot-discount').val("");
        $('input.tot-price.number').val("");
    }

//    calculate warn
    function calc_warn() {
        $('button.calculate-cart').addClass('remind-to-calculate');
        setTimeout(function () {
            $('button.calculate-cart').trigger('click');
        }, 0);
    }
//    calculate warn

    function proceed() {
        if (($('input.tot-price.number').val() === "") || ($('input.tot-price.number').val() === "0")) {

        } else {
            var sale_container = [];
            $('table.invoice-cart-table tbody').find('tr').map(function () {
                var item_sale = {};
                if ($(this).attr('id') == 0) {
                    item_sale.resell_note = $(this).find('.resell-note').text();
                    item_sale.resell_net_profit = $(this).find('span.resell-net-profit').text();
                    item_sale.resell_buy = $(this).find('.resell-buy').text();
                    item_sale.resell_branch_id = "<?php echo $branch_id ?>";
                }
                item_sale.id = $(this).attr('id');
                item_sale.cus_phone = $(this).attr('phone');
                item_sale.count = $(this).find('input.invoice-cart-single-count').val();
                item_sale.name = $(this).find('.invoice-cart-single-name').text();
                item_sale.price = $(this).find('.invoice-cart-single-price > span').text();
                item_sale.discount = $(this).find('input.discount-field').val();
                item_sale.single_total = $(this).find('.invoice-cart-single-total > span').text();
                sale_container.push(item_sale);
            });
//        console.log(JSON.stringify(sale_container));
            var obj = JSON.stringify(sale_container);
            var stringify = JSON.parse(obj);

            var product_detail = "";
            for (var i = 0; i < stringify.length; i++) {
                var resell_note = stringify[i]['resell_note'];
                var resell_net_profit = stringify[i]['resell_net_profit'];
                var resell_buy = stringify[i]['resell_buy'];
                var resell_branch_id = stringify[i]['resell_branch_id'];
                var id = stringify[i]['id'];
                var cus_phone = stringify[i]['cus_phone'];
                var name = stringify[i]['name'];
                var count = stringify[i]['count'];
                var price = stringify[i]['price'];
                var discount = stringify[i]['discount'];
                var single_total = stringify[i]['single_total'];
                product_detail += `<tr id="${id}" phone="` + cus_phone + `">
  <td>
    <span id="bill-item-name">${name}</span>
  </td>
  <td style="text-align:right;">
    <span id="bill-item-count">${count} X </span>
  </td>
  <td style="text-align:right;">
    Rs.<span id="bill-item-single-price">${price}</span>
  </td>
  <!-- <td  style="text-align:right;">
    Rs.<span id="bill-item-single-discount">` + discount + `</span>
  </td> -->
  <td style="text-align:right;">
    Rs.<span id="bill-item-single-total-price">${single_total}</span>
  </td>
  <td class="sales_id" style="display:none"></td>
  <td style="display:none" class="resell-print">
    <span class="resell-note-print">` + resell_note + `</span>
    <span class="resell-net-profit">` + resell_net_profit + `</span>
    <span class="resell-buy-print">` + resell_buy + `</span>
    <span class="resell-branch-id-print">` + resell_branch_id + `</span>
  </td>
</tr>
`
            }

            var sub_discount = parseFloat($('input.tot-discount.number').val());
            var sub_total = parseFloat($('input.tot-price.number').val());
//            var dt = new Date();
//            var time = dt.getFullYear() + "-" + dt.getMonth() + "-" + dt.getDate() + " " + dt.getHours() + ":" + dt.getMinutes() + ":" + dt.getSeconds();
            var time = "<?php
date_default_timezone_set('Asia/Calcutta');
echo $registered_date = date("Y-m-d H:i:s");
?>";
            var dtNum = new Date();
            var invoice_number = dtNum.getTime();
            var user_id = "<?php echo $user_id_new; ?>";
            var cashier = "<?php echo $username; ?>";
            var $cashier_first_name = "<?php echo $first_name; ?>";
            var $cashier_last_name = "<?php echo $last_name; ?>";
            var store_location = "<?php echo $branch_name . ', ' . $branch_location; ?>";
            var store_address = "<?php echo $address; ?>";
            var tel_1 = "<?php echo $tel_1; ?>";
            var tel_2 = "<?php echo $tel_2; ?>";
            var customer_id = customer_id_init;
            var customer_name = customer_val_init;

            var returning_customer_discounted_price;
            if (customer_id_init == '0') {
                returning_customer_discounted_price = 0;
            } else {
                returning_customer_discounted_price = sub_total - ((sub_total / 100) * customer_discount_profit);
//                returning_customer_discounted_price = 0;
            }

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
              <th style="padding:0 0 10 0;font-weight:300;" colspan="1">Customer: </th><th colspan="3">
                <p style="padding:0 0 10 0;margin:0; text-align:left;font-weight:300;">`+ customer_name +`</p>
              </th>
            </tr>
            <!-- <tr style="text-align:left;">
              <th colspan="1">Patient: </th><th colspan="3">asasd</th>
            </tr> -->
            <tr>
              <th style="text-align:left;">Name</th>
              <th style="text-align:right;">Qty</th>
              <th style="text-align:right;">Price</th>
              <!-- <th style="text-align:right;">Discount</th> -->
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
              <!-- <td style="text-align:right;">Rs.<span id="sub_discount">` + sub_discount + `</span></td> -->
              <td style="text-align:right;">Rs.<span id="sub_total">` + sub_total + `</span></td>
            </tr>
            <tr>
              <td colspan="3">Discount</td>
              <td style="text-align:right;">Rs.<span id="sub_discount">` + sub_discount + `</span></td>
              <!-- <td style="text-align:right;">Rs.<span id="sub_total">` + sub_total + `</span></td> -->
            </tr>
            <tr style="display:none!important;">
              <td colspan="2">Lotaly offered price</td>
              <td colspan="2" style="text-align:right;">Rs.<span id="returning_customer_discounted_price">` +
                  returning_customer_discounted_price + `</span></td>
            </tr>
            <!-- <tr>
              <td colspan="4">
                <div class="bottom-margin">&nbsp;</div>
              </td>
            </tr> -->
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
            <tr style="display: none!important;">
              <td colspan="4" style="text-align:right;">
                <div class="customer_td">
                  <span id="customer_id" style="display:none;">` + customer_id + `</span>
                  Customer : <span id="customer_name" style="display: inline-block;">` + customer_name + `</span>
                  <div id="customer_discount_profit_container" style="display: none; margin-left: 5px;"><span
                      id="customer_discount_profit" style="display: inline-block;">` + customer_discount_profit +
                      `</span><span style="display: inline-block;">% Offer</span></div>
                </div>
              </td>
            </tr>
            <!-- <tr>
              <td colspan="4">
                <div class="bottom-margin">&nbsp;</div>
              </td>
            </tr> -->
            <tr class="invoice-info" style="display: none!important;">
              <td colspan="4" class="text-center">
                <p>Time <span id="time">` + time + `</span></p>
                <p>By <span id="cashier" style="text-transform: capitalize;">` + $cashier_first_name +` `+
                    $cashier_last_name + `</span><span style="display:none" id="user_id">` + user_id + `</span></p>
                <p><span id="store_location" style="text-transform: capitalize;">` + store_address + `</span></p>
                <p><span id="telephone_no" style="text-transform: capitalize;">` + tel_1 + ` / ` + tel_2 + `</span></p>
              </td>
            </tr>
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
            <button type="button" class="paccount-partition-print-btn" onclick="printDiv()">Print Bill</button>
          </div>
          <div class="account-partition-field-block">
            <button type="button" class="paccount-partition-print-btn quotaion-btn" onclick="printDivQuotaion()">Print
              Quotation</button>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
            `;
            $('body').append(proceed_form);
            get_last_sales_id();
        }
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
    function close_invoice() {
        $('.proceed-form-container').remove();
    }
    function printDiv() {
        if (($('#getBalance').val() === "") || ($('#getBalance').val() === "0")) {
            
        } else {
            var divToPrint = document.getElementById('bill-partition');
            var newWin = window.open('', 'Print-Window');
            newWin.document.open();
            newWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML + '</body></html>');
            newWin.document.close();
            setTimeout(function () {
                newWin.close();
            }, 10);

            record_invoice();
            discard_all_items_completed_payment();
            $('.proceed-form-container').remove();
        }
    }
    function printDivQuotaion() {
        if (($('#getBalance').val() === "") || ($('#getBalance').val() === "0")) {
        } else {
            $('#invoice_no_txt').text('Quotaion');
            $('#invoice_number').hide();
            var divToPrint = document.getElementById('bill-partition');
            var newWin = window.open('', 'Print-Window');
            newWin.document.open();
            newWin.document.write('<html><body onload="window.print()">' + divToPrint.innerHTML + '</body></html>');
            newWin.document.close();
            setTimeout(function () {
                newWin.close();
            }, 10);
            discard_all_items_completed_payment();
            $('.proceed-form-container').remove();
        }
    }

    function record_invoice() {
        var sub_discount = $('#sub_discount').text();
        var sub_total = $('#sub_total').text();
        var cash_span = $('span#cash_span').text();
        var balance_span = $('span#balance_span').text();
        var invoice_number = $('#invoice_number').text();
        var time = $('#time').text();
        var user_id = $('#user_id').text();
        var cashier = $('#cashier').text();
        var store_location = $('#store_location').text();
        var customer_id = $('#customer_id').text();
        var customer_name = $('#customer_name').text();
        var customer_discount_rate = $('span#customer_discount_profit').text();
        var customer_discounted_price = $('span#returning_customer_discounted_price').text();

        var invoice_details = {
            sub_discount: sub_discount,
            sub_total: sub_total,
            cash_span: cash_span,
            balance_span: balance_span,
            invoice_number: invoice_number,
            time: time,
            cashier: cashier,
            user_id: user_id,
            store_location: store_location,
            customer_id: customer_id,
            customer_name: customer_name,
            customer_discount_rate: customer_discount_rate,
            customer_discounted_price: customer_discounted_price
        };
        var invoice_details_obj = JSON.stringify(invoice_details);

        $.post('add-invoice-call.php', {invoice_detailsJsonData: invoice_details_obj}, function (response) {
            console.log('add-invoice-call ' + response);
        });

        var record_invoice_container = [];
        $('.bill-partition table tbody').find('tr').map(function (last_sales_id) {
            var ri = {};
            ri.sales_id = $(this).find('.sales_id').text();
            ri.id = $(this).attr('id');
            ri.cus_phone = $(this).attr('phone');
            ri.name = $(this).find('span#bill-item-name').text();
            ri.count = $(this).find('span#bill-item-count').text();
            ri.single_price = $(this).find('span#bill-item-single-price').text();
            ri.single_discount = $(this).find('span#bill-item-single-discount').text();
            ri.single_total = $(this).find('span#bill-item-single-total-price').text();
            ri.single_resell_note = $(this).find('.resell-note-print').text();
            ri.single_resell_profit = $(this).find('span.resell-net-profit').text();
            ri.single_resell_buy = $(this).find('span.resell-buy-print').text();
            ri.single_resell_branch_id = $(this).find('.resell-branch-id-print').text();
            record_invoice_container.push(ri);
        });
        var riobj = JSON.stringify(record_invoice_container);
//        var riobj_stringify = JSON.parse(riobj);
//        console.log(riobj);
        $.post('add-sales-call.php', {jsonData: riobj}, function (response) {
            console.log(response);
        });

    }

    function get_last_sales_id() {
        var data;
        $.ajax({
            type: "POST",
            url: "last_invoice_id.php",
            data: data,
            success: function (data, last_sales_id)
            {
                last_sales_id = $.trim(data);
                $('.sales_id').text(last_sales_id);
//                console.log(last_sales_id);
                // alert(last_sales_id);
            }
        });
    }

//==============================================================================

    function hold_items() {
        var hold_screen = `
            <div class="hold_screen_frame">
                <div class="hold_screen_container">
                    <span id="close_hold" onclick="close_hold()">
                        <i class="material-icons">close</i>
                    </span>
                    <h5>Are you sure?</h5>
                    <div class="input-group">
                        <label>Use this phone number to retreive</label>
                        <input type="text" class="form-control" id="cust_no_field" placeholder="Enter the phone number" maxlength="9" size="9" autofocus>
                        <input type="text" class="form-control" id="cust_name_field" placeholder="Enter the namae (optional)">
                    </div>
                    <div class="input-group">
                        <button type="button" class="btn btn-default" onclick="record_hold()" keyup="mob_num_validate">Hold now</button>
                    </div>
                </div>
            </div>
        `;
        $('body').append(hold_screen);
        setTimeout(function () {
            $('.hold_screen_container .input-group > input.form-control').focus();
            $('.hold_screen_container .input-group > input.form-control').on('keyup change', function () {
                var customer_mobile = parseInt($(this).val());
                if ($(this).val().length === 0) {
                    $(this).val(0);
                } else {
                    $(this).val(customer_mobile);
                }
            });
        }, 10);
    }
    function record_hold(e) {

        var mob_num_field = $('#cust_no_field');
        var cust_name_field = $('#cust_name_field');
        if (mob_num_field.val() == "0") {
            e.preventDefault();
        } else if (mob_num_field.val().length === 0) {
            e.preventDefault();
        } else {
            var mob_num_field_val = mob_num_field.val();
            var cust_name_field_val = cust_name_field.val();
            var hold_obj = {
                mob_num: mob_num_field_val,
                cust_name: cust_name_field_val
            };
            var hold_obj_to_json = JSON.stringify(hold_obj);
//            console.log(hold_obj_to_json);
            $.post('hold-call.php', {jsonData: hold_obj_to_json}, function (response) {
//                console.log((response).trim());
            }).done(function (response) {
//                console.log('done ' + (response).trim());
                var data;
                $.ajax({
                    type: "POST",
                    url: "last_hold_id.php",
                    data: data,
                    success: function (data, last_hold_id)
                    {
                        last_hold_id = $.trim(data);
//                        console.log(last_hold_id);

                        var hold_container = [];
                        $('table.invoice-cart-table tbody').find('tr').map(function () {
                            var item_sale = {};
                            item_sale.hold_id = last_hold_id;
                            item_sale.id = $(this).attr('id');
                            item_sale.count = $(this).find('input.invoice-cart-single-count').val();
                            item_sale.name = $(this).find('.invoice-cart-single-name').text();
                            item_sale.price = $(this).find('.invoice-cart-single-price > span').text();
                            item_sale.discount = $(this).find('input.discount-field').val();
                            item_sale.single_total = $(this).find('.invoice-cart-single-total > span').text();
                            hold_container.push(item_sale);
                        });
                        var hold_obj = JSON.stringify(hold_container);
                        $.post('hold-sales-call.php', {jsonData: hold_obj}, function (response) {
//                            console.log(response);
                            successfully_holded();
                            close_hold();
                        });
                    }
                });
            });
//            hold_call.always(function () {
//                console.log("finished");
//            });
        }
        discard_all_items_completed_payment();
    }
    function close_hold() {
        $('.hold_screen_frame').remove();
    }

    function successfully_holded() {
        var color = 'green';
        var icon = 'check';
        var msg = 'Successfully holded';
        push_notificatoin(color, icon, msg);
        $('.required').removeClass('validation-error');
    }

    function successfully_retreived() {
        var color = 'green';
        var icon = 'check';
        var msg = 'Successfully retreived';
        push_notificatoin(color, icon, msg);
        $('.required').removeClass('validation-error');
    }
//    function validation_error() {
//        var color = 'red';
//        var icon = 'times';
//        var msg = 'Please fill the required fields and submit';
//        push_notificatoin(color, icon, msg);
//        $('.required').addClass('validation-error');
//    }

    function get_held_cart() {
        var held_screen = `
            <div class="hold_screen_frame">
                <form id="hold_cart_form" method="GET" action="get_held_cart.php">
                    <div class="hold_screen_container">
                        <span id="close_hold" onclick="close_hold()">
                            <i class="material-icons">close</i>
                        </span>
                        <h5>Are you sure?</h5>
                        <div class="input-group">
                            <label>Enter the phone numbe</label>
                            <input type="text" class="form-control" id="get_customer_num" placeholder="Enter your phone number" maxlength="9" size="9" name="customer_num" value="" autofocus>
                        </div>
                        <div class="input-group">
                            <button type="button" class="btn btn-default" onclick="retreive_cart()" keyup="mob_num_validate">Retreive cart</button>
                        </div>
                    </div>
                </form>
            </div>
        `;
        $('body').append(held_screen);
        $('.invoice-container').addClass('after');
        $('.shop-container').addClass('after');
        setTimeout(function () {
            $('.hold_screen_container .input-group > input.form-control').focus();
        }, 10);
    }

    function retreive_cart() {
        $.ajax({
            type: 'get',
            url: 'get_held_cart.php',
            data: $('form').serialize(),
            success: function (data) {
                $('table.invoice-cart-table tbody').empty();
                var cus_no = $('#get_customer_num').val();
                setTimeout(function () {
                    $('table.invoice-cart-table tbody').load(baseUrl + '/views/shop/get_held_cart.php?customer_num=' + cus_no);

                    setTimeout(function () {
                        $('table.invoice-cart-table tbody tr').each(function () {
//                            var retreived_item = $(this);
                            var retreived_item_id = $(this).attr('id');
                            var current_item_count = $(this).find('input.invoice-cart-single-count').val();
                            var visual_item_count = $('.visual-id-' + retreived_item_id).find('span.shop-item-count').text();
                            var visual_item_count_after = parseInt(visual_item_count) - parseInt(current_item_count);
//                            console.log(visual_item_count_after);
                            $('.visual-id-' + retreived_item_id).find('span.shop-item-count').text(visual_item_count_after);
                            calc_warn();
                        });
                    }, 500);

                    setTimeout(function () {
                        close_hold();
                        successfully_retreived();
                    }, 10);
                }, 10);
            }
        });
    }

    function calc_qty() {
        var calc_qty = $(event.target).val();
        if (($(event.target).val() === "") || ($(event.target).val() === "0")) {
            $(event.target).val(1);
        } else {
            var tr_id = $(event.target).closest('tr').attr('id');
            var invoice_cart_single_price = $('.invoice-cart-single-price > span').text();
            var discount_field_val = $('input.discount-field').val();
            var single_total = (parseInt(invoice_cart_single_price) * parseInt(calc_qty)) - parseInt(discount_field_val);
            $(event.target).closest('tr#' + tr_id).find('.invoice-cart-single-total > span').text(single_total);

            var visual_id_count = $('.visual-id-' + tr_id).find('span.shop-item-count');
            var visual_id_hidden_count = $('.visual-id-' + tr_id).find('span.hidden-count');
            var visual_id_count_new = parseInt(visual_id_hidden_count.text()) - parseInt(calc_qty);
            visual_id_count.text(visual_id_count_new);
            calc_warn();
        }
    }

//    $("#shop-filter-field").on("keyup change", function () {
    $(document).on('keyup change', '#shop-filter-field', function () {
        var value = $(this).val().toLowerCase();
        $(".shop-item").filter(function () {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
            if (!$(this).is(':visible'))
            {
                $(this).addClass('not-visible');
                $(this).removeClass('visible');
                $(this).prev('a.item-category-name').hide();
            } else {
                $(this).addClass('visible');
                $(this).removeClass('not-visible');
                $(this).prev('a.item-category-name').show();
            }
        });
    });

    function focus_to_search() {
        $('input#shop-filter-field').focus();
    }
    function clear_field() {
        focus_to_search();
        $('input#shop-filter-field').val("");
        $('input#shop-filter-field').trigger('change');
        $('i.material-icons.clear-field').remove();
    }
    $('.navbar-nav>li').on('click', function () {
        $(this).toggleClass('open');
    });



    var barcode = "";
    var barcode_ean13 = "";
    var code_tag = "";
    $(document).on('keydown', function (e) {
        var code = (e.keyCode ? e.keyCode : e.which);
        if (code == 13)// Enter key hit
        {
            barcode_ean13 = barcode.slice(0, -1);
            add_by_barcode(barcode_ean13);
        } else if (code == 9)// Tab key hit
        {
            barcode_ean13 = barcode.slice(0, -1);
            add_by_barcode(barcode_ean13);
        } else
        {
            barcode = barcode + String.fromCharCode(code);
        }

        function add_by_barcode() {
            var idis = "";
            $('.shop-item').each(function () {
                if ($(this).find('.code-tag').text() == barcode_ean13) {
                    idis = $(this).attr('id');
                    add_to_invoice('1', idis);
                    $('input#shop-filter-field').val("");
                    e.preventDefault();
                } else {
                    $('input#shop-filter-field').val("");
                    e.preventDefault();
                }
            });
            barcode = "";
            clear_field();
        }
    });

    function mobile_bill_mode() {
        $('.invoice-container.after').toggleClass('mobile-billing-mode');
        $('.shop-container.after').toggleClass('mobile-billing-mode');
    }

    var add_customer_page_url = baseUrl + "/views/customers/partial-add.php";
    function add_customer_live() {
        var add_customer_block = `
            <div class="sale_detail_container">
                <div class="sale_detail_block">
                    <div class="close-detail-btn">
                        <i class="material-icons" onclick="remove_pop_up()">close</i>
                    </div>
                    <div class="sale_detail_container_loader" id="add_customer_container_loader"></div>
                </div>
            </div>
        `;

        $('body').append(add_customer_block);
        $('.sale_detail_container_loader').load(add_customer_page_url);
    }

    function remove_pop_up() {
        $('.sale_detail_container').remove();
    }
    var add_resell_page_url = baseUrl + "/views/resell/resell-add-partial.php";
    function external_supply() {
        var resell_container_element = `
            <div class="sale_detail_container">
                <div class="sale_detail_block">
                    <div class="close-detail-btn">
                        <i class="material-icons" onclick="remove_pop_up()">close</i>
                    </div>
                    <div class="sale_detail_container_loader" id="add_resel_container_loader"></div>
                </div>
            </div>
        `;
        $('body').append(resell_container_element);
        $('.sale_detail_container_loader').load(add_resell_page_url);
    }
    function add_resell() {
        var name_required = $('.name-required');
        var supplier_required = $('.supplier-required');
        var buy_required = $('.buy-required');
        var sell_required = $('.sell-required');
        if ((name_required.val().length > 0) && (supplier_required.val().length > 0) && (buy_required.val().length > 0) && (sell_required.val().length > 0)) {
            var add_resell_list = [];
            var resell_i = {};

            resell_i.resell_prod_name = $('#resell-item-name').val();
            resell_i.resell_suppler_type = $('#resell-supplier-name').val();
            resell_i.resell_buying_price = $('#resell-buying-price').val();
            resell_i.resell_selling_price = $('#resell-selling-price').val();
            resell_i.resell_net_profit = ($('#resell-selling-price').val() - $('#resell-buying-price').val());

            add_resell_list.push(resell_i);
            var resellObj = JSON.stringify(resell_i.resell_selling_price);
//            alert(resellObj);
            var add_resell_tr = `
                <tr id="0" class="resell-tr">
                    <td style="width:10px; padding: 10px 0px;"><input class="invoice-cart-single-count" type="number" value="1" onkeyup="resell_single_discount()" onchange="resell_single_discount()"></td>
                    <td><div class="invoice-cart-single-name">` + resell_i.resell_prod_name + `</div></td>
                    <td class="text-right"><div class="invoice-cart-single-price">Rs.<span>` + resell_i.resell_selling_price + `</span></div></td>
                    <td class="text-right discount-td"><div class="invoice-cart-single-ondeal-discount">Rs.<input type="text" class="discount-field number text-right" onkeyup="resell_single_discount_2()" onchange="resell_single_discount_2()" value="0"></div></td>
                    <td class="text-right"><div class="invoice-cart-single-total">Rs.<span>` + resell_i.resell_selling_price + `</span></div></td>
                    <td class="text-right" style="width:10px; padding: 10px 0px;"><span class="remove-from-invoice text-right" onclick="remove_from_invoice()"><i class="material-icons">close</i></span></td>
                    <td class="hide" class="resell-note" style="width:10px; padding: 10px 0px;">
                        <span class="resell-note">Item : ` + resell_i.resell_prod_name + `, Supplier : ` + resell_i.resell_suppler_type + `, Buy : ` + resell_i.resell_buying_price + `, Sell : ` + resell_i.resell_selling_price + `</span>
                        <span class="resell-buy">` + resell_i.resell_buying_price + `</span>
                        <span class="resell-net-profit">` + resell_i.resell_net_profit + `</span>
                    </td>
                </tr>
        `;
            $('table.invoice-cart-table > tbody').append(add_resell_tr);
            remove_pop_up();
            calc_warn();
        } else {
            all_resell_error();
        }
    }
    function add_suppier_error() {
        var color = 'red';
        var icon = 'times';
        var msg = 'Please add a new supplier or select';
        push_notificatoin(color, icon, msg);
    }
    function all_resell_error() {
        var color = 'red';
        var icon = 'times';
        var msg = 'Please fill all the fields';
        push_notificatoin(color, icon, msg);
        $('.required').addClass('validation-error');
    }

    function resell_single_discount() {
        var resell_item_tr = $(event.target).closest('.resell-tr');
        if (($(event.target).val() === "") || ($(event.target).val() === "0") || ($(event.target).val() < 0)) {
            $(event.target).val(1);
        }
        var item_single_price = parseFloat(resell_item_tr.find('.invoice-cart-single-price > span').text());
        var item_single_count = parseFloat($(event.target).val());
        var discount_field = parseFloat(resell_item_tr.find('input.discount-field').val());
        var item_single_total = (item_single_price * item_single_count) - discount_field;
        resell_item_tr.find('.invoice-cart-single-total > span').text(item_single_total);
        calc_warn();
    }
    
    function resell_single_discount_2() {
        var resell_item_tr = $(event.target).closest('.resell-tr');
        
        var discount_val = $(event.target).val();
        var before_discount_val = resell_item_tr.find('.invoice-cart-single-price > span').text();
        var resell_count = resell_item_tr.find('input.invoice-cart-single-count').val();
        var new_discount_val = parseInt(before_discount_val * resell_count) - parseInt(discount_val);
        resell_item_tr.find('.invoice-cart-single-total > span').text(new_discount_val);
        calc_warn();
    }
</script>