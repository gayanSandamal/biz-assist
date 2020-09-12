<?php include_once 'connection.php'; ?>
<?php

session_start();
if (isset($_POST['login'])) {
    try {
        $uname = $_POST['username'];
        $pass = $_POST['password'];

        $pass = md5($pass);

        $sql = "SELECT * FROM user WHERE username='$uname' and password='$pass' LIMIT 1";
        $query = $conn->query($sql);

        if ($query->num_rows > 0) {


            $row = $query->fetch_assoc();
            $id = $row['user_id'];
            $level_id = $row['user_level_id'];
            $first_name = $row['first_name'];
            $last_name = $row['last_name'];

            $_SESSION['username'] = $uname;
            $id = $_SESSION['user_id'] = $id;
            $level_id = $_SESSION['user_level_id'] = $level_id;
            $first_name = $_SESSION['first_name'] = $first_name;
            $last_name = $_SESSION['last_name'] = $last_name;

            date_default_timezone_set('Asia/Calcutta');
            $login_time = date("Y-m-d H-i-s");

            $insert_login_log_sql = "
                INSERT INTO login_log
                (user_id, login_time)
                VALUES
                ('$id', '$login_time')
            ";
            if ($conn->query($insert_login_log_sql) === TRUE) {
//                echo "New record created successfully";
            } else {
//                echo "Error: " . $insert_login_log_sql . "<br>" . $conn->error;
            }


            $get_access = "
                SELECT
                u.user_id,
                u.username,
                u.user_level_id,
                ul.user_level,
                ua.accessible_page
                FROM user u
                LEFT OUTER JOIN user_level ul
                ON ul.user_level_id = u.user_level_id
                LEFT OUTER JOIN user_access ua
                ON ua.user_level_id = ul.user_level_id
                WHERE u.user_id = '$id'
            ";
            $result_get_access = $conn->query($get_access);
            if ($result_get_access->num_rows > 0) {
                while ($row = $result_get_access->fetch_assoc()) {
                    $accessible_page = $row["accessible_page"];
                    $accessible_page_array = explode(',', $accessible_page);
//                    echo array_values($accessible_page_array)[0];
                    $accessible_username = $row["username"];
                }
            }

            $conn->close();
            
            if (ctype_space($accessible_page)) {
                header("Location: http://localhost/md_chemists/views/dashboard/");
            }elseif ($accessible_page == '') {
                header("Location: http://localhost/md_chemists/views/dashboard/");
            } else {
                header("Location: http://localhost/md_chemists".$accessible_page_array[0]);
            }
        } else {
            header("Location: http://localhost/md_chemists/login.php");
//            die("error");
        }
    } catch (Exception $ex) {
        die($ex);
    }
}
?>