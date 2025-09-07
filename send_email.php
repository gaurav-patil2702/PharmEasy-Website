<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'vendor/autoload.php';

// Check if the form is submitted
if (isset($_POST['send_email'])) {
    // Create a new PHPMailer instance
    $mail = new PHPMailer(true);

    try {
        // Set the mail server details
        $mail->isSMTP();

        
            $mail->Host       = 'smtp.gmail.com';
            $mail->SMTPAuth   = true;
            $mail->Username   = 'gaurav27206@gmail.com';
            $mail->Password   = 'qrfb vrax bqqd ewnk';
            $mail->SMTPSecure = 'ssl';
            $mail->Port       = 465;
        // ... (other configuration settings)

        // Set sender and recipient
        $mail->setFrom('gaurav27206@gmail.com', 'Gaurav Patil');
        $mail->addAddress('crichero.2709@gmail.com', 'Srushti Chipate');

        // Set email subject and body
        $mail->Subject = 'Order Confirmation';
        $mail->Body    = 'Admin You Have a New Order.';

        // Send the email
        $mail->send();
    } catch (Exception $e) {
        echo "Error: {$mail->ErrorInfo}<br>";
        echo "Message: " . $e->getMessage();
    }
}
?>
