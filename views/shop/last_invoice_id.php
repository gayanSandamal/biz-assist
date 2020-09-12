<?php include_once '../../controllers/connection.php'; ?>

<?php
$get_last_invoice_id = "
SELECT
invoice_id
FROM invoice
ORDER BY invoice_id DESC
LIMIT 1
";

$get_last_invoice_id = $conn->query($get_last_invoice_id);
if ($get_last_invoice_id->num_rows > 0) {
    while ($row = $get_last_invoice_id->fetch_assoc()) {
        $invoice_id = $row["invoice_id"];
        echo ++$invoice_id;
        }
} else {
    echo "";
}
?>