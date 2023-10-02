<?php
$message = '';                                                                      

$action = filter_input(INPUT_POST, 'action');
if ($action === NULL) {
    $action =  'start_app';
}

switch ($action) {
    case 'start_app':
        $interval = new DateInterval('P1M');
        $default_date = new DateTime();
        $default_date->sub($interval);
        $invoice_date_s = $default_date->format('n/j/Y');

        $interval = new DateInterval('P2M');
        $default_date = new DateTime();
        $default_date->add($interval);
        $due_date_s = $default_date->format('n/j/Y');

        $message = 'Enter two dates and click on the Submit button.';
        break;
    case 'process_data':
        $invoice_date_s = filter_input(INPUT_POST, 'invoice_date');
        $due_date_s = filter_input(INPUT_POST, 'due_date');

        if (empty($invoice_date_s) || empty($due_date_s)) {
            $message = 'You must enter both dates. Please try again.';
            break;
        }

        try {
            $invoice_date_o = new DateTime($invoice_date_s);
            $due_date_o = new DateTime($due_date_s);
        } catch (Exception $e) {
            $message = 'Both dates must be in a valid format. Please check both dates and try again.';
            break;
        }

        if ($due_date_o < $invoice_date_o) {
            $message = 'The due date must come after the invoice date. Please try again.';
            break;
        }

        $format_string = 'F j, Y';

        $invoice_date_f = $invoice_date_o->format($format_string);
        $due_date_f = $due_date_o->format($format_string);

        $current_date_o = new DateTime();
        $current_date_f = $current_date_o->format($format_string);
        $current_time_f = $current_date_o->format('g:i:s a');

        $time_span = $current_date_o->diff($due_date_o);
        if ($due_date_o < $current_date_o) {
            $due_date_message = $time_span->format(
                'This invoice is %y years, %m months, and %d days overdue.');
        } else {
            $due_date_message = $time_span->format(
                'This invoice is due in %y years, %m months, and %d days.');
        }
        
        break;
}
include 'test_date.php';
?>