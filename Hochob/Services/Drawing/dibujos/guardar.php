<?php
$data = $_POST['data'];
$data = substr($data,strpos($data,",")+1);
$data = base64_decode($data);
$file = date('m-d-Y_hia').'.png';
file_put_contents($file, $data);
echo exec('convert '.$file.' -resize 4096x2304! '.$file):

?>