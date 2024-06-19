<?php
$kasutaja = "Harry";
$dbserver = "localhost";
$andmebaas = "kohvikud";
$pw = "MySQLParool1";

$yhendus = mysqli_connect($dbserver, $kasutaja, $pw, $andmebaas);

if (!$yhendus) {
    die("Sa jälle ebaõnnestusid!");
}
 
  
?>