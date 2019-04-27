<?php
require 'vendor/autoload.php';
use PHPMailer\PHPMailer\PHPMailer;

if (isset($_POST['name']) && isset($_POST['email']) && isset($_POST['phone']) && isset($_POST['type'])) {
    $name = filter_var($_POST['name'], FILTER_SANITIZE_STRING);
    $email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
    $phone = filter_var($_POST['phone'], FILTER_SANITIZE_STRING);
    $type = filter_var($_POST['type'], FILTER_SANITIZE_STRING);
    $phoneReg = "/^0[2-9]\d{7,8}$/";
    $type_option = ['basic', 'business', 'free'];

    $dbcon = 'mysql:host=localhost;dbname=landing;charset=utf8';
    $db = new PDO($dbcon, 'root', '');
    $link = mysqli_connect("localhost", "root", "", "landing");
    // $sql = "INSERT INTO contacts VALUES(null, '$name','$email','$phone','$type', NOW())";
    //$res = mysqli_query($link, $sql);
    $query = $db->prepare($sql);
    $res = $query->execute([$name, $email, $phone, $type]);

    if ($res) {
        $mail = new PHPMailer();
        $mail->CharSet = 'UTF-8';
        $mail->setFrom('no-replay@gmail.com', 'From landing-page');
        $mail->addAddress('imya56@gmail.com', 'Message from landing page');
        $mail->Subject = 'new lead from landing page';
        $email->Body = <<<EOT
        <h3> New lead from landing page </h3>
        <b> Client name: </b> $name <br>
        <b> Client phone: </b> $phone <br>
        <b> Client email: </b> $email <br>
        <b> Client choose: </b> $type <br>
EOT;
        $email->isHTML(true);

        if ($mail->send) {
            echo true;
        }
    }

}