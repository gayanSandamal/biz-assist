<?php

include_once 'header.php';

echo $source_url = $baseUrl.'/uploads/2018-04-01-1522613288.PNG';
$source_url_parts = pathinfo($source_url);
//$destination_url = $baseUrl.'/optmized_uploads/';
$quality = 10;
list($width, $height) = getimagesize($source_url);
$width;
$height;
$after_width = 200;
if ($width > $after_width) {
    $reduced_width = ($width - $after_width);
    $reduced_radio = round(($reduced_width / $width) * 100, 2);
    $reduced_height = round(($height/100)*$reduced_radio ,2);
    $after_height = $height - $reduced_height;
}
$ratio_width = $width - $after_width;
$filename = $source_url_parts['filename'];
$extension = $source_url_parts['extension'];
if ($extension == 'jpg' || $extension == 'jpeg' || $extension == 'JPG' || $extension == 'JPEG') {
    $img = imagecreatefromjpeg($source_url);
} elseif ($extension == 'png' || $extension == 'PNG') {
    $img = imagecreatefrompng($source_url);
} else {
    
}
$imgResized = imagescale($img, $after_width, $after_height, $quality);
imagejpeg($imgResized, $filename . '-resized.jpg');
imagedestroy($img);
imagedestroy($imgResized);
?>