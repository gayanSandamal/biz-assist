<?php
include_once '../../controllers/connection.php';
include_once '../../inc/baseUrl.php';

$arr = json_decode($_POST['search_name_detailsJsonData'], true);
$search_name = $arr['search_name'];

$get_matching_img = "
SELECT
p.product_id,
p.product_name,
i.img_id,
i.img_path
FROM
image i
INNER JOIN product p
ON p.img_id = i.img_id
WHERE p.product_name LIKE '%$search_name%'
AND i.img_path IS NOT NULL
GROUP BY i.img_path
";
$result_get_matching_img = $conn->query($get_matching_img);

if ($result_get_matching_img->num_rows > 0) {
    while ($row = $result_get_matching_img->fetch_assoc()) {
        ?>
        <li>
            <img id="<?php echo $product_name = $row["img_id"]; ?>" src="<?php echo $baseUrl; ?><?php echo $product_name = $row["img_path"]; ?>" onclick="select_product_img()"/>
        </li>
        <?php
    }
} else {
    
}
?>