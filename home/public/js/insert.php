<?php
include '../libraries/Database.php';
$db = new Database();
var_dump('heyoo');

$db->query("INSERT INTO contact(name,phone,textarea) VALUES(?,?,?)");
$db->bind(1, $_POST['name']);
$db->bind(2, $_POST['phone']);
$db->bind(3, $_POST['message']);
$db->execute();
