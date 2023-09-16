<?php
require_once('connect_db.php');

// Get IDs
$product_id = filter_input(INPUT_POST, 'product_id', FILTER_VALIDATE_INT);

// Check if the product_id is valid
if ($product_id !== false) {
    // Update the product in the database
    $query = 'UPDATE products SET column_name = :new_value WHERE productID = :product_id'; // Replace 'column_name' with the actual column name you want to update
    $statement = $db->prepare($query);
    $statement->bindValue(':product_id', $product_id, PDO::PARAM_INT); // Use PDO::PARAM_INT for integer values
    // Bind the new value if needed
    // $statement->bindValue(':new_value', $new_value); // Uncomment and replace ':new_value' with the actual new value

    $success = $statement->execute();
    $statement->closeCursor();
} else {
    // Handle the case where product_id is not valid
    echo "Invalid product ID";
}

// Display the Product List page
include('index.php');
?>
