<?php
require('util/main.php');

require('model/database.php');
require('model/product_db.php');

$cat_id = 1;

$products = get_products_by_category($cat_id);

$product_name = 'Fender Telecaster';

$product = get_product_by_name($product_name);
if ($product) {
    $product_id = $product['productID'];
    $row_count = delete_product($product_id);
    if ($row_count > 0) {
        $delete_message = "$row_count row was deleted.";
    } else {
        $delete_message = "No rows were deleted.";
    }
} else {
    $delete_message = "There is no product with that name.";
}

$category_id = 1;
$code = 'tele';
$name = 'Fender Telecaster';
$description = 'NA';
$price = '949.99';

$product_id = add_product($category_id, $code, $name, $description, $price, 0);

if ($product_id > 0) {
    $insert_message = "1 row was inserted with this ID: $product_id";
} else {
    $insert_message = "No rows were inserted.";
}
include 'home.php';

?>