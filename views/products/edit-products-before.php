<?php include_once '../../controllers/connection.php'; ?>

<?php

$id = htmlspecialchars($_GET["id"]);
$user_id = htmlspecialchars($_GET["user_id"]);
$branch_id = htmlspecialchars($_GET["branch_id"]);
$get_product = "
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
    p.expenses,
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
FROM product p
LEFT OUTER JOIN category c ON c.cat_id = p.product_cat_id
LEFT OUTER JOIN brand b ON b.brand_id = p.product_brand_id
LEFT OUTER JOIN suppliers s ON s.supplier_id = p.supplier_id
LEFT OUTER JOIN image i ON i.img_id = p.img_id
LEFT OUTER JOIN product_condition pcon ON pcon.product_condition_id = p.product_condition_id
WHERE p.product_id = '$id'
ORDER BY c.cat_name ASC
";
$result_get_product = $conn->query($get_product);
if ($result_get_product->num_rows > 0) {
    while ($row = $result_get_product->fetch_assoc()) {
        $product_name = $row["product_name"];
        $product_desc = $row["product_desc"];
        $cat_name = $row["cat_name"];
        $brand_name = $row["brand_name"];
        $product_model_no = $row["product_model_no"];
        $product_code_no = $row["product_code_no"];
        $supplier_name = $row["supplier_name"];
        $buying_price = $row["buying_price"];
        $expenses = $row["expenses"];
        $selling_price = $row["selling_price"];
        $tax_id = $row["tax_id"];
        $offer_type_id = $row["offer_type_id"];
        $offer_value = $row["offer_value"];
        $discounted = $row["discounted"];
        $product_added_date = $row["product_added_date"];
        $product_exp_date = $row["product_exp_date"];
        $user_id = $row["user_id"];
        $qty = $row["qty"];
        $product_condition_id = $row["product_condition_id"];
        $product_condition_state = $row["product_condition_state"];

        $sql_insert_product = "
        INSERT INTO edit_log (
            product_id,
            product_name,
            product_desc,
            product_cat_id,
            product_brand_id,
            product_model_no,
            product_code_no,
            supplier_id,
            buying_price,
            expenses,
            selling_price,
            tax_id,
            offer_type_id,
            offer_value,
            product_added_date,
            product_exp_date,
            product_condition_id,
            qty,
            discounted,
            user_id,
            branch_id,
            flag
        )
        VALUES
            (
                '$id',
                '$product_name',
                '$product_desc',
                '$cat_name',
                '$brand_name',
                '$product_model_no',
                '$product_code_no',
                '$supplier_name',
                '$buy_price',
                '$expenses',
                '$selling_price',
                '$tax_id',
                '$offer_type_id',
                '$offer_value',
                '$product_added_date',
                '$product_exp_date',
                '$product_condition_id',
                '$qty',
                '$discounted',
                '$user_id',
                '$branch_id',
                '1'
            )
        ";

        if ($conn->query($sql_insert_product) === TRUE) {
            echo "Log recorded successfully";
        } else {
            echo "Error: " . $sql_insert_product . "<br>" . $conn->error;
        }
    }
}
?>