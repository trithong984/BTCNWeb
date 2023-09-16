<?php
require_once('connect_db.php');

// Get IDs
$product_id = filter_input(INPUT_POST, 'product_id', FILTER_VALIDATE_INT);
$category_id = filter_input(INPUT_POST, 'category_id', FILTER_VALIDATE_INT);

// Delete the product from the database
if ($product_id != false && $category_id != false) {
    $query = 'UPDATE products';
    $statement = $db->prepare($query);
    $statement->bindValue(':product_id', $product_id);
    $success = $statement->execute();
    $statement->closeCursor();    

    // $sql = "UPDATE products SET code='589' WHERE id=2";
    // $stmt = $conn->prepare($sql);
    // $stmt->execute();
}

// Display the Product List page
include('index.php');