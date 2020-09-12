<?php
session_start();
// store session data
if (isset($_SESSION['user_id']))
    echo $_SESSION['user_id'] = $_SESSION['user_id']; // or if you have any algo.
?>