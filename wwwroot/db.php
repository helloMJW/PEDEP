<?php
$dbh = new PDO('mysql:host=mysql5.6', 'root', 'root');
$count = $dbh->exec("CREATE DATABASE `october` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;");
var_dump($count);
