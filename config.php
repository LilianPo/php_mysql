<?php
$kasutaja = "lilian";
$dbserver = "localhost";
$andmebaas = "muusikapood";
$pw = "Passw0rd";

$yhendus = mysqli_connect($dbserver, $kasutaja, $pw, $andmebaas);

if(!$yhendus){
    die("Sa jälle ebaõnnestusid!");
}
?>