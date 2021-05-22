<?php
include_once '../../inc/header.php';
include_once '../../controllers/connection.php';
$get_branch = "
SELECT
u.username,
b.branch_id,
b.branch_name,
b.branch_location
FROM user u
LEFT OUTER JOIN branch b
ON b.branch_id = u.branch_id
WHERE u.user_id = '$user_id_new'
";
$result_get_branch = $conn->query($get_branch);
if ($result_get_branch->num_rows > 0) {
    while ($row = $result_get_branch->fetch_assoc()) {
        $username = $row["username"];
        $branch_name = $row["branch_name"];
        $branch_id = $row["branch_id"];
        $branch_location = $row["branch_location"];
    }
} else {
}

if (isset($_POST['action']) && !empty($_POST['action'])) {
    $action = $_POST['action'];
    switch ($action) {
        case 'add-products' : addProducts();
            break;
        case 'blah' : blah();
            break;
    }
}

function addProducts() {
    
}

function blah() {
    echo 'huui';
}

//get_products
function get_products($conn) {
}

//get_categories_select
function get_categories_select($conn) {
    $get_categories_select = "SELECT cat_id, cat_name FROM category WHERE NOT cat_id = 0";
    $result_get_categories_select = $conn->query($get_categories_select);
    if ($result_get_categories_select->num_rows > 0) {
        while ($row = $result_get_categories_select->fetch_assoc()) {
            ?>
            <option value="<?php echo $row["cat_id"]; ?>"><?php echo $row["cat_name"]; ?></option>
            <?php
        }
    } else {
        echo "0 results";
    }
}

//get_brands_select
function get_brands_select($conn) {
    $get_brands_select = "SELECT brand_id, brand_name FROM brand WHERE NOT brand_id = 0";
    $result_get_brands_select = $conn->query($get_brands_select);
    if ($result_get_brands_select->num_rows > 0) {
        while ($row = $result_get_brands_select->fetch_assoc()) {
            ?>
            <option value="<?php echo $row["brand_id"]; ?>"><?php echo $row["brand_name"]; ?></option>
            <?php
        }
    } else {
        echo "0 results";
    }
}

//get_suppliers_select
function get_suppliers_select($conn) {
    $get_suppliers_select = "SELECT supplier_id, supplier_name FROM suppliers WHERE NOT supplier_id = 0";
    $result_get_suppliers_select = $conn->query($get_suppliers_select);
    if ($result_get_suppliers_select->num_rows > 0) {
        while ($row = $result_get_suppliers_select->fetch_assoc()) {
            ?>
            <option value="<?php echo $row["supplier_id"]; ?>"><?php echo $row["supplier_name"]; ?></option>
            <?php
        }
    } else {
        echo "0 results";
    }
}

//get_condition_select
function get_condition_select($conn) {
    $get_condition_select = "SELECT product_condition_id, product_condition_state FROM product_condition";
    $result_get_condition_select = $conn->query($get_condition_select);
    if ($result_get_condition_select->num_rows > 0) {
        while ($row = $result_get_condition_select->fetch_assoc()) {
            ?>
            <option value="<?php echo $row["product_condition_id"]; ?>"><?php echo $row["product_condition_state"]; ?></option>
            <?php
        }
    } else {
        echo "0 results";
    }
}

//get_tax_select
function get_tax_select($conn) {
    $get_tax_select = "SELECT tax_id, tax_rate, tax_desc FROM tax";
    $result_get_tax_select = $conn->query($get_tax_select);
    if ($result_get_tax_select->num_rows > 0) {
        while ($row = $result_get_tax_select->fetch_assoc()) {
            ?>
            <option value="<?php echo $row["tax_id"]; ?>"><?php echo $row["tax_rate"] . '%'; ?></option>
            <?php
        }
    } else {
        echo "0 results";
    }
}

//get_tax_select
function get_offer_select($conn) {
    $get_offer_select = "SELECT offer_type_id, offer_type_name FROM offer_type";
    $result_get_offer_select = $conn->query($get_offer_select);
    if ($result_get_offer_select->num_rows > 0) {
        while ($row = $result_get_offer_select->fetch_assoc()) {
            ?>
            <option value="<?php echo $row["offer_type_id"]; ?>"><?php echo $row["offer_type_name"]; ?></option>
            <?php
        }
    } else {
        echo "0 results";
    }
}

//get_available_products
function get_available_products($conn, $branch_id) {
    $get_available_products = "SELECT product_id, product_name, product_model_no FROM product WHERE branch_id = '$branch_id' ORDER BY product_id DESC";
    $result_get_available_products = $conn->query($get_available_products);
    if ($result_get_available_products->num_rows > 0) {
        while ($row = $result_get_available_products->fetch_assoc()) {
            ?>
            <li><a><?php echo $row["product_name"] . "(" . $row["product_model_no"] . ")"; ?></a></li>
            <?php
        }
    } else {
        echo "0 results";
    }
}
?>