<?php

$fp = fopen('/farag/lidn.txt', 'w');
fwrite($fp, 'Cats chase');
fwrite($fp, 'mice');
fclose($fp);

echo "hello farag00000000" ;
$servername="mysqldb-farag.apps.ocp4.example.com";
$username="ose";
$password="openshift";
// Create connection
$conn = new mysqli($servername, $username, $password);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";


?>
