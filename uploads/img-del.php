<?php

//$file = "2018-04-14-1523721349.jpg";
//if (!unlink($file)) {
//    echo ("Error deleting $file");
//} else {
//    echo ("Deleted $file");
//}

$files = array('2018-04-14-1523731945.jpeg', '2018-04-14-1523731959.jpeg');
foreach ($files as $file) {
//    if (!unlink($file)) {
//        echo "not done";
//    } else {
//        echo "done";
//    }
    if (@unlink($file)) {
        echo "done";
    } else {
        echo "not done";
    }
}
?>