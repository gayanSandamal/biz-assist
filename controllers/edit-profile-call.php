<?php include_once 'connection.php'; ?>

<?php
$id = htmlspecialchars($_GET["user_id"]);
$username = htmlspecialchars($_GET["username"]);
$first_name = htmlspecialchars($_GET["firstname"]);
$last_name = htmlspecialchars($_GET["lastname"]);
$phone = htmlspecialchars($_GET["phone"]);
$email = htmlspecialchars($_GET["email"]);
$branch_id = htmlspecialchars($_GET["locator"]);

$sql_edit_user = "
UPDATE `user` u SET
u.username = '$username',
u.first_name = '$first_name',
u.last_name = '$last_name',
u.phone = '$phone',
u.email = '$email',
u.branch_id = '$branch_id'
WHERE u.user_id = $id
";

if ($conn->query($sql_edit_user) === TRUE) {
    echo "Updated successfully";
} else {
    echo "Error: " . $sql_edit_user. "<br>" . $conn->error;
}

$conn->close();
?>