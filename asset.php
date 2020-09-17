<?php

$fp = fopen('/farag/lidn.txt', 'w');
fwrite($fp, 'Cats chase');
fwrite($fp, 'mice');
fclose($fp);

$servername = "localhost";
$username = "username";
$password = "password";

// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
?>
