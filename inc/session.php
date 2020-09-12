<?php
    session_start();
    if (!isset($_SESSION["user_id"])) {
        header("Location: http://localhost/md_chemists/login.php");
    }
    $user_id_new = $_SESSION['user_id'];
    $level_id = $_SESSION['user_level_id'];
    $first_name = $_SESSION['first_name'];
    $last_name = $_SESSION['last_name'];
?>