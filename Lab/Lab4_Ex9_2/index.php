<?php
$number1 = '';
$number2 = '';
$number3 = '';
$message = 'Enter some numbers and click on the Submit button.';

$action = filter_input(INPUT_POST, 'action');

switch ($action) {
    case 'process_data':
        $number1 = filter_input(INPUT_POST, 'number1');
        $number2 = filter_input(INPUT_POST, 'number2');
        $number3 = filter_input(INPUT_POST, 'number3');

        if (empty($number1) ||
            empty($number2) ||
            empty($number3)) {
                $message = 'You must enter all three numbers.';
                break;
        }

        if (!is_numeric($number1) ||
            !is_numeric($number2) ||
            !is_numeric($number3)) {
                $message = 'You must enter three valid numbers.';
                break;
        }


        $number1_ceil = ceil($number1);
        $number1_floor = floor($number1);

        $number2_ceil = ceil($number2);
        $number2_floor = floor($number2);

        $number3_ceil = ceil($number3);
        $number3_floor = floor($number3);

        $number3_rounded = round($number3, 3);
        $number1_rounded = round($number1, 3);
        $number2_rounded = round($number2, 3);

        $max = max($number1, $number2, $number3);
        $min = min($number1, $number2, $number3);

        // generate a random integer between 1 and 100
        $random = mt_rand(1, 100);

        // format the message
        $message =
            "Number 1: $number1\n" .
            "Number 2: $number2\n" .
            "Number 3: $number3\n" .
            "\n" .
            "Number 1 ceiling: $number1_ceil\n" .
            "Number 1 floor: $number1_floor\n" . 
            "Number 1 rounded: $number1_rounded\n\n" .
            "Number 2 ceiling: $number2_ceil\n" .
            "Number 2 floor: $number2_floor\n" .
            "Number 2 rounded: $number2_rounded\n\n" .
            "Number 3 ceiling: $number3_ceil\n" .
            "Number 3 floor: $number3_floor\n" .
            "Number 3 rounded: $number3_rounded\n" .
            "\n" .
            "Min: $min\n" .
            "Max: $max\n" .
            "\n" .
            "Random: $random\n";

        break;
}
include 'test_number.php';
?>