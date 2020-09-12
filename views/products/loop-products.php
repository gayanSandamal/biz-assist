<?php
include_once '../../controllers/connection.php';
include_once '../../controllers/sql/sql-products.php';
get_available_products($conn, $branch_id);
?>