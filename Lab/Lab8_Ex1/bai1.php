<!-- dvcf yjsi sbwh nhdy -->
<?php

require './PHPMailer-master/src/PHPMailer.php';
require './PHPMailer-master/src/SMTP.php';
require './PHPMailer-master/src/Exception.php';

$mail = new PHPMailer\PHPMailer\PHPMailer(true);

try {
    $mail->SMTPDebug = 0;
    $mail->isSMTP();
    $mail->CharSet = 'utf8';
    $mail->Host = 'smtp.gmail.com';
    $mail->SMTPAuth = true;
    $nguoigui = '16hoakhuong@gmail.com';
    $matkhau = 'dvcf yjsi sbwh nhdy';
    $tennguoigui = 'MrA';

    $mail->Username = $nguoigui;
    $mail->Password = $matkhau;
    $mail->SMTPSecure = 'ssl';
    $mail->Port = 465;
    $mail->setFrom($nguoigui, $tennguoigui);
    $to = 'nhienhk19@gmail.com';
    $to_name = 'ducnhien';

    $mail->addAddress($to, $to_name);
    $mail->isHTML(true);
    $mail->Subject = 'Gửi thư từ php';
    $noidungthu = "<b>Chào bạn!</b><br>Chúc an lành!" ;
    $mail->Body = $noidungthu;
    $mail->smtpConnect(array(
        "ssl"=> array(
            "verify_peer"=> false,
            "verify_peer_name" => false,
            "allow_self_signed" => true,
        )
        ));
        $mail->send();
        echo "Đã gửi thành công";

} catch (Exception $e) {
    echo 'Mail không gửi được. Lỗi: ', $mail->ErrorInfo;
}

?>