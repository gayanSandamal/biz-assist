<?php

//session_start();
include_once 'controllers/connection.php';
include_once 'inc/header.php';

date_default_timezone_set('Asia/Calcutta');
$logout_time = date("Y-m-d H-i-s");

$insert_logout_log_sql = "UPDATE login_log
SET logout_time = '$logout_time'
WHERE user_id = '$user_id_new'
ORDER BY login_log_id DESC
LIMIT 1";

if ($conn->query($insert_logout_log_sql) === TRUE) {
//    echo "Logging out.";
    if (session_destroy()) {
//        echo '..';
//        header("Location: http://localhost/md_chemists/login.php");
        ?>
        <script>
            window.location.replace("http://localhost/md_chemists/login.php");
        </script>
        <?php

    } else {
        echo 'not destroyed';
    }
} else {
    echo "Error: " . $insert_logout_log_sql . "<br>" . $conn->error;
}

$conn->close();
?>