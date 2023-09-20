<?php
 $investment = filter_input(INPUT_POST,'investment');
 $interest_rate = filter_input(INPUT_POST,'interest_rate');
 $years = filter_input(INPUT_POST,'years');

 $future_value= $investment;
  for($i = 1 ; $i <= $years; $i++){
      $future_value += $investment * $interest_rate* .01;
 }

      $investment_f = '$'.number_format($investment, 2);
      $yearly_rate_f = $interest_rate.'%';
      $future_value_f = '$'.number_format($future_value, 2);
 
?>
<!DOCTYPE html>
<html>
<head>
    <title>Future Value Calculator</title>
    <link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
    <main>
        <h1>Future Value Calculator</h1>

        <label>Investment Amount:</label>
        <span><?php echo $investment_f; ?></span><br>

        <label>Yearly Interest Rate:</label>
        <span><?php echo $yearly_rate_f; ?></span><br>

        <label>Number of Years:</label>
        <span><?php echo $years; ?></span><br>

        <label>Future Value:</label>
        <span><?php echo $future_value_f; ?></span><br>
    </main>
</body>
</html>