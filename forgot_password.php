<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'vendor/autoload.php';

// session_start();
include "admin/connection.php";

if (isset($_POST['forgot_password'])) {
    $username = $_POST['username'];
    $email = $_POST['email'];

    // Check if the username and email exist in the database
    $sql = "SELECT * FROM user WHERE username = '$username' AND email = '$email'";
    $query = $conn->query($sql);

    if ($query->num_rows > 0) {
        // Generate a random password
        $new_password = substr(str_shuffle("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"), 0, 10);

        // Update the password in the database
        $sql = "UPDATE user SET password = '$new_password' WHERE username = '$username' AND email = '$email'";
        $conn->query($sql);

        // Send the new password to the user's email
        $mail = new PHPMailer();
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com'; // Replace with your SMTP server
        $mail->SMTPAuth = true;
        $mail->Username = 'pelegrinojayrald@gmail.com'; // Replace with your email username
        $mail->Password = 'glrfxjnoowomaini'; // Replace with your email password
        $mail->SMTPSecure = 'tls';
        $mail->Port = 587;
        // $mail->SMTPDebug = 2;

        $mail->setFrom('pelegrinojayrald@gmail.com', 'Jayrald'); // Replace with your email address and name
        $mail->addAddress($email); // Add the user's email address

        $mail->Subject = 'Forgot Password';
        $mail->Body = 'Your new password is: ' . $new_password;

        if (!$mail->send()) {
            echo 'Error sending email: ' . $mail->ErrorInfo;
        } else {
            echo 'Email sent successfully!';
        }
    } else {
        echo "Username and email do not match.";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Banbros Employee</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>

<style>
    .container{
        padding: 20px;
    }

    .right-align {
    text-align: center;
    width: 100%;
    }
</style>

<body style="background:#eee">
<br><br><br>
    <div class="container">
        <div class="col-md-6 offset-3"></div>
            <div class="card" style="width: 30rem; margin:auto; float:none;">
                <div class="card-header bg-primary d-flex justify-content-center">
                    <div class="card-title">
                    <br>
                    <a class="navbar-brand" href="#"><img src="https://www.banbros.ph/assets/img/logo.png" style="width: 210px;" alt="Inventory System"></a>
                    </div>
                </div>
                <form action="" method="post">
                    <table class="table table-borderless">
                        <tr>
                            <!-- <td>USERNAME</td> -->
                            <td><input type="text" placeholder="Enter Admin Username" class="form-control" name="username" required></td>
                        </tr>
                        <tr>
                            <!-- <td>PASSWORD</td> --> 
                            <td><input type="email" placeholder="Enter Email" class="form-control" name="email" required></td>
                        </tr>
                        <tr>
                            <!-- <td></td> -->
                            <td><button type="submit" class="btn btn-danger btn-block" name="forgot_password" >Reset Password</button></td>
                        </tr>
                        <tr>
                            <td>Do you remember your account? <a href="index.php">Sign in</a></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>