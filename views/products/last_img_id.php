<?php include_once '../../controllers/connection.php'; ?>

<?php
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
        echo $img_id = $row["img_id"];
        }
} else {
    echo "";
}
?>