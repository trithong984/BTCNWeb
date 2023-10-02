<?php
$scores = array();
$scores[0] = '';
$scores[1] = '';
$scores[2] = '';
        
$scores_string = '';
$score_total = 0;
$score_average = 0;
$max_rolls = 0;
$average_rolls = 0;

$score_total_f = '';
$score_average_f = '';


$action = filter_input(INPUT_POST, 'action');
switch ($action) {
    case 'process_scores':
        $scores = $_POST['scores'];

        $is_valid = true;
        for ($i = 0; $i < count($scores); $i++) {
            if (empty($scores[$i]) || !is_numeric($scores[$i])) {
                $scores_string = 'You must enter three valid numbers for scores.';
                $is_valid = false;
                break;
            }
        }
        if (!$is_valid) {
            break;
        }

        $score_total = 0;
        foreach ($scores as $s) {
            $scores_string .= $s . '|';
            $score_total += $s;
        }
        $scores_string = substr($scores_string, 0, strlen($scores_string)-1);

        $score_average = $score_total / count($scores);
        
        $score_total_f = number_format($score_total, 2);
        $score_average_f = number_format($score_average, 2);

        break;
    case 'process_rolls':
        $number_to_roll = filter_input(INPUT_POST, 'number_to_roll', 
                FILTER_VALIDATE_INT);

        $total = 0;       
        $max_rolls = -INF;

        for ($count = 0; $count < 10000; $count++) {
            $rolls = 1;
            while (mt_rand(1, 6) != $number_to_roll) {
                $rolls++;
            }
            $total += $rolls;            
            $max_rolls = max($rolls, $max_rolls);
        }
        $average_rolls = $total / $count;

        break;
}
include 'scores.php';
?>