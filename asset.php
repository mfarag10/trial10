<?php

$fp = fopen('/farag/lidn.txt', 'w');
fwrite($fp, 'Cats chase');
fwrite($fp, 'mice');
fclose($fp);

echo "hello farag" ;

?>
