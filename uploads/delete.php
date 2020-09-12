<?php include_once '../controllers/connection.php'; ?>

<?php

$id = $_POST['del_id'];

date_default_timezone_set('Asia/Calcutta');
$deleted_date = date("Y-m-d H-i-s");

$sql_delete_product = "DELETE FROM product
WHERE product_id = $id";

//===============================
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
    WHERE p.product_id = $id
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
//===============================

$sql_get_img_id = "
    SELECT
    i.img_id,
    i.img_path
    FROM
    image i
    LEFT OUTER JOIN product p
    ON p.img_id = i.img_id
    WHERE p.product_id = $id
";
$result_sql_get_img_id = $conn->query($sql_get_img_id);
if ($result_sql_get_img_id->num_rows > 0) {
    while ($row = $result_sql_get_img_id->fetch_assoc()) {
        $img_id = $row["img_id"];
        $img_path = $row["img_path"];
    }
}

if ($conn->query($sql_delete_product) === TRUE) {
    echo "New record created successfully";

    $file_name = str_replace("/uploads/", "", $img_path);
    $file = $file_name;
    if (!unlink($file)) {
        echo ("Error deleting $file");

        $sql_delete_img = "
            DELETE
            FROM
            image
            WHERE image.img_id = $img_id
            AND NOT image.img_id = 0
        ";
        $result_sql_delete_img = $conn->query($sql_delete_img);
        if ($conn->query($result_sql_delete_img) === TRUE) {
            echo "Image record is deleted";
        } else {
            echo "Image record is not deleted";
        }
    } else {
        echo ("Deleted $file");
        $sql_delete_img = "
            DELETE
            FROM
            image
            WHERE image.img_id = $img_id
            AND NOT image.img_id = 0
        ";
        $result_sql_delete_img = $conn->query($sql_delete_img);
        if ($conn->query($result_sql_delete_img) === TRUE) {
            echo "Image record is deleted";
        } else {
            echo "Image record is not deleted";
        }
    }
} else {
    echo "Error: " . $sql_delete_product . "<br>" . $conn->error;
}

$conn->close();
?>