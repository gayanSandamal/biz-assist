<?php include_once '../../controllers/connection.php'; ?>
<?php
$get_customers_to_check = "
SELECT
customer_id,
customer_name,
phone
FROM customer
";

$result_get_customers_to_check = $conn->query($get_customers_to_check);
?>

<label>Returning customers</label>
<select id="returning-customers" name="returning_customer">
    <?php
    if ($result_get_customers_to_check->num_rows > 0) {
        while ($row = $result_get_customers_to_check->fetch_assoc()) {
            ?>
            <option value="<?php echo $row["customer_id"]; ?>"><?php echo $row["phone"]; ?> (<?php echo $row["customer_name"]; ?>)</option>
            <?php
        }
    } else {
        echo "0 results";
    }
    ?>
</select>

<script>
    var returning_customers = $('#returning-customers');

    $('#returning-customers').select2({
        tags: true
    });
    returning_customers.on('change', function () {
        var customer_val = $(this).select2('data');
        var customer_val_new = (customer_val[0].text).replace('%', '');
        var customer_id_new = (customer_val[0].id);
        customer_val_init = customer_val_new;
        customer_id_init = customer_id_new;
        if (customer_id_init == '0') {
            customer_discount_profit = 0;
        } else {
            if (!isNaN(parseInt(customer_id_new, 10))) {
                customer_discount_profit = 0;
            } else {
                
            }
        }
//        alert(customer_discount_profit);
    });
</script>