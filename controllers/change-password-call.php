<?php include_once 'connection.php'; ?>

<?php

$id = htmlspecialchars($_GET["user_id"]);
$old_password = htmlspecialchars($_GET["old-password"]);
$old_password_md5 = md5($old_password);
$new_password = htmlspecialchars($_GET["new-password"]);
$new_password_md5 = md5($new_password);

$sql_get_password = "
SELECT
u.password
FROM
`user` u
WHERE u.user_id = $id
";

$result_sql_get_password = $conn->query($sql_get_password);
if ($result_sql_get_password->num_rows > 0) {
    while ($row = $result_sql_get_password->fetch_assoc()) {
        $password = $row["password"];
    }
} else {
    
}

if ($password === $old_password_md5) {
    $sql_edit_password = "
    UPDATE `user` u SET
    u.password = '$new_password_md5'
    WHERE u.user_id = $id
    ";

    if ($conn->query($sql_edit_password) === TRUE) {
        echo 'true';
    } else {
        echo "Error: " . $sql_edit_user . "<br>" . $conn->error;
    }
} else {
    echo 'false';
}
?>