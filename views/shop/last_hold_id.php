<?php include_once '../../controllers/connection.php'; ?>

<?php
$get_last_hold_id = "
SELECT
customer_mobile_number
FROM hold
ORDER BY hold_id DESC
LIMIT 1
";

$get_last_invoice_id = $conn->query($get_last_hold_id);
if ($get_last_invoice_id->num_rows > 0) {
    while ($row = $get_last_invoice_id->fetch_assoc()) {
        echo $invoice_id = $row["customer_mobile_number"];
        }
} else {
    echo "";
}
?>