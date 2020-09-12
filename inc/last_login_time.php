<?php include_once '../controllers/connection.php'; ?>
<?php include_once 'session.php'; ?>
<?php
$get_last_login = "
SELECT login_time
FROM
login_log l
LEFT OUTER JOIN user u
ON u.user_id = l.user_id
WHERE l.user_id = 2
ORDER BY login_time DESC
LIMIT 1
";
$result_get_last_login = $conn->query($get_last_login);
if ($result_get_last_login->num_rows > 0) {
    while ($row = $result_get_last_login->fetch_assoc()) {
        echo $login_time = $row["login_time"];
    }
} else {
    
}
?>