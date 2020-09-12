<?php
$get_categories = "
SELECT
cat_id,
cat_name
FROM category
WHERE NOT cat_id = 0
ORDER BY cat_name
";
$get_categories_to_check = "
SELECT
cat_id,
cat_name
FROM category
WHERE NOT cat_id = 0
ORDER BY cat_name
";
$result_get_categories = $conn->query($get_categories);
$result_get_categories_to_check = $conn->query($get_categories_to_check);
?>