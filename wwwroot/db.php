<?php
$dbh = new PDO('mysql:host=mysql', 'root', 'root');
$num = $dbh->exec("CREATE DATABASE `lavalite` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;");
