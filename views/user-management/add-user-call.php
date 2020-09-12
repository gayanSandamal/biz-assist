<?php include_once '../../controllers/connection.php'; ?>
<?php
$username = htmlspecialchars($_GET["username"]);
$firstname = htmlspecialchars($_GET["firstname"]);
$lastname = htmlspecialchars($_GET["lastname"]);
$phone = htmlspecialchars($_GET["phone"]);
$email = htmlspecialchars($_GET["email"]);
$locator = htmlspecialchars($_GET["locator"]);
$userlevel = htmlspecialchars($_GET["userlevel"]);
$password = htmlspecialchars($_GET["password"]);
$password_md5 = md5($password);

$sql_insert_user = "
    INSERT INTO
    `user` (
    username,
    first_name,
    last_name,
    phone,
    email,
    user_level_id,
    branch_id,
    password
    ) VALUES (
    '$username',
    '$firstname',
    '$lastname',
    '$phone',
    '$email',
    '$userlevel',
    '$locator',
    '$password_md5'
    )
";

if ($conn->query($sql_insert_user) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql_insert_user. "<br>" . $conn->error;
}

$conn->close();
?>