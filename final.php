<?php
include "includes/head.php";
?>

<body>
    <?php
    include "includes/header.php";
    ?>

    <?php
        
        use PHPMailer\PHPMailer\PHPMailer;
        use PHPMailer\PHPMailer\Exception;
        
        require 'vendor/autoload.php';
        
        // Check if the form is submitted
        if(isset($_POST['send_email'])) {
            // Create a new PHPMailer instance
            $mail = new PHPMailer(true);
        
            try {
                // Set the mail server details
                $mail->isSMTP();
                $mail->Host       = 'smtp.gmail.com';
                $mail->SMTPAuth   = true;
                $mail->Username   = 'crichero.2709@gmail.com';
                $mail->Password   = 'qzhl towb ooov nsjw';
                $mail->SMTPSecure = 'ssl';
                $mail->Port       = 465;
        
                // Set sender and recipient
                $mail->setFrom('crichero.2709@gmail.com', 'Gaurav Patil');
                $mail->addAddress('gaurav27206@gmail.com', 'Hello World');
        
                // Set email subject and body
                $mail->Subject = 'Order Confirmation';
                $mail->Body    = 'Dear Admin , You Have New Order.';
        
                // Send the email
                $mail->send();
            } catch (Exception $e) {
                echo "Error: {$mail->ErrorInfo}<br>";
                echo "Message: " . $e->getMessage();
            }
        }
        
        
        
        
    ?>

    <div><br>
        <h1 style="text-align: center; font-family: 'Fredoka One', cursive;">WE'VE RECEIVED YOUR ORDER!</h1><br>
        <h5 style="text-align: center; font-family: 'Fredoka One', cursive;">Thanks for shopping with Easy Pharma!</h5>
        <center><img src="images/final.gif" alt="" style="width:30rem;"></center>
    </div>
    <center><a href="index.php"> <button style="margin-top: -35px;" type="button" class="btn btn-outline-info btn-lg">Go back to the store </button></a></center>
    <?php
    add_order();
    ?>
    <br>
    <!-- FOOTER -->
    <?php
    include "includes/footer.php"
    ?>

</body>