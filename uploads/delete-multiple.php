<?php include_once '../controllers/connection.php'; ?>

<?php

date_default_timezone_set('Asia/Calcutta');
$deleted_date = date("Y-m-d H-i-s");

if (!empty($_POST['check_list'])) {
    foreach ($_POST['check_list'] as $check) {
        $checkstr[] = $check;

//        ==================================================

        $sql_get_for_product_log = "
            SELECT
            p.product_id,
            p.product_code_no,
            p.product_name,
            c.cat_name,
            b.brand_name,
            p.product_model_no,
            s.supplier_name,
            p.buying_price,
            p.selling_price,
            p.expenses AS margin,
            p.qty,
            p.user_id
            FROM
            product p
            LEFT OUTER JOIN category c
            ON c.cat_id = p.product_cat_id
            LEFT OUTER JOIN brand b
            ON b.brand_id = p.product_brand_id
            LEFT OUTER JOIN branch br
            ON br.branch_id = p.branch_id
            LEFT OUTER JOIN suppliers s
            ON s.supplier_id = p.supplier_id
            WHERE p.product_id = $check
        ";
        $result_sql_get_for_product_log = $conn->query($sql_get_for_product_log);
        if ($result_sql_get_for_product_log->num_rows > 0) {
            while ($row = $result_sql_get_for_product_log->fetch_assoc()) {
                $product_details = "product_code_no :" . $row["product_code_no"] . ", product_name :" . $row["product_name"] . ", cat_name :" . $row["cat_name"] . ", brand_name :" . $row["brand_name"] . ", product_model_no :" . $row["product_model_no"] . ", supplier_name :" . $row["supplier_name"] . ", buying_price :" . $row["buying_price"] . ", selling_price :" . $row["selling_price"] . ", margin :" . $row["margin"];
                $deleted_by = $row["user_id"];
            }
        }

        $sql_add_log = "
            INSERT INTO delete_log (time, details, user_id)
        VALUES
                (
                        '$deleted_date',
                        '$product_details',
                        '$deleted_by'
                )
        ";
        if ($conn->query($sql_add_log) === TRUE) {
            echo "New log is created successfully";
        } else {
            echo "Error: " . $sql_add_log . "<br>" . $conn->error;
        }
//        ==================================================

        $sql_get_img_id = "
            SELECT
            i.img_path
            FROM
            image i
            LEFT OUTER JOIN product p ON p.img_id = i.img_id
            WHERE
            p.product_id = $check
        ";
        $result_sql_get_img_id = $conn->query($sql_get_img_id);
        if ($result_sql_get_img_id->num_rows > 0) {
            while ($row = $result_sql_get_img_id->fetch_assoc()) {
                $img_path = $row["img_path"];
                $file_name = str_replace("/uploads/", "", $img_path);
                $file = trim($file_name);
                if (!unlink($file)) {
                    echo ("Error deleting $file");
                } else {
                    echo ("Deleted $file");
                }
            }
        }
    }
    $sql_delete_product_id = implode(",", $checkstr);
}

$sql_delete_product = "
    DELETE product, image
    FROM product
    INNER JOIN image ON product.img_id = image.img_id
    WHERE
    product.product_id IN ($sql_delete_product_id)
";
if ($conn->query($sql_delete_product) === TRUE) {
    echo "Product is deleted successfully";
} else {
    echo "Error: " . $sql_delete_product . "<br>" . $conn->error;
}

?>