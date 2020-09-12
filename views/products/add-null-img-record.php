<?php

include_once '../../controllers/connection.php';

//echo "Hi";s

$sql_check_img_zero = "
        SELECT EXISTS(
            SELECT
            i.img_id
            FROM
            image i
            WHERE i.img_id = 0
        ) AS output
    ";
$result_sql_check_img_zero = $conn->query($sql_check_img_zero);

if ($result_sql_check_img_zero->num_rows > 0) {
    while ($row = $result_sql_check_img_zero->fetch_assoc()) {
        $value = $row["output"];
    }
} else {
    
}

if ($value == 0) {
    $sql_insert_new_img_id = "
        INSERT INTO image (img_name, img_path)
        VALUES ('', '')
    ";
    if ($conn->query($sql_insert_new_img_id) === TRUE) {
        echo "New image created successfully";
        $get_last_img_id = "
            SELECT
            img_id
            FROM image
            ORDER BY img_id DESC
            LIMIT 1
        ";
        $result_last_img_id = $conn->query($get_last_img_id);
        if ($result_last_img_id->num_rows > 0) {
            while ($row = $result_last_img_id->fetch_assoc()) {
                $img_id = $row["img_id"];
                $get_update_img_id = "
                    UPDATE image
                    SET img_id = 0
                    WHERE img_id = $img_id
                ";
                $result_get_update_img_id = $conn->query($get_update_img_id);
            }
        } else {
            echo "";
        }
    } else {
        echo "Error: " . $sql_insert_new_img_id . "<br>" . $conn->error;
    }
} else {
    
}

$conn->close();
?>