<?php include_once '../../controllers/connection.php'; ?>
<?php

$get_users_to_check = "
SELECT
u.user_id,
u.username
FROM
`user` u
WHERE NOT u.user_level_id = 0
";

$result_get_users_to_check = $conn->query($get_users_to_check);

if ($result_get_users_to_check->num_rows > 0) {
    while ($row = $result_get_users_to_check->fetch_assoc()) {
        ?>
        <li><a href="<?php echo $row["user_id"]; ?>"><?php echo $row["username"]; ?></a></li>
        <?php
    }
} else {
    echo "0 results";
}
?>