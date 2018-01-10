<?php
$dbh = new PDO('mysql:host=mysql', 'root', 'root');
$dbh->exec("CREATE DATABASE `webed` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;");
