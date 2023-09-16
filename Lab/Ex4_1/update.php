<?php
require_once('connect_db.php');

// Get IDs
$product_id = filter_input(INPUT_POST, 'product_id', FILTER_VALIDATE_INT);
$category_id = filter_input(INPUT_POST, 'category_id', FILTER_VALIDATE_INT);

// Delete the product from the database
if ($product_id != false && $category_id != false) {
    $query = "UPDATE products
              SET code = '5789' WHERE product_id = 2 ";
    $statement = $db->prepare($query);
    $success = $statement->execute();
    $statement->closeCursor();    
}

// Display the Product List page
include('index.php');