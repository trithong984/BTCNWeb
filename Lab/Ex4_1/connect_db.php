<?php
    $dsn = 'mysql:host=localhost;dbname=guitar shop';
    $username = 'root';
    $password = '';

    try {
        $db = new PDO($dsn, $username, $password);
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        include('connect_error.php');
        exit();
    }   
?>