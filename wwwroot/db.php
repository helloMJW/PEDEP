<?php
$dbh = new PDO('mysql:host=mysql5.6', 'root', 'root');
$num = $dbh->exec("CREATE DATABASE `october` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;");
