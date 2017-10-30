<?php

if ($_POST['submit']) {
    function clear($string)
    { // функа очищения текста от тегов и пробелов
        return trim(strip_tags($string));
    }

    $name = clear($_POST['name']);
    $email = clear($_POST['email']);
    $commend = clear($_POST['comment']);
    $submit = clear($_POST['submit']);
    $ip_address = $_SERVER['REMOTE_ADDR'];
    $browser = $_SERVER['HTTP_USER_AGENT'];
    $date = date('Y-m-d G:i:s');

    // file work
    $path = 'D:/OpenServer/domains/scalar/img/'; // директория для загрузки
    $ext = array_pop(explode('.', $_FILES['file']['name'])); // расширение
    $new_name = time() . '.' . $ext; // новое имя с расширением
    $full_path = $path . $new_name; // полный путь с новым именем и расширением
    move_uploaded_file($_FILES['file']['tmp_name'], $full_path);


    // BD work
    $connect = mysqli_connect("localhost", "root", "", "scalar")
    or die('Error connect DB server');

    $query = "INSERT INTO commend (USER_NAME, USER_EMAIL, COMMENT, FILE, IP_ADRES, BROWSER, DATE) VALUES ('$name', '$email', '$commend', '$new_name', '$ip_address','$browser', '$date')";

    $result = mysqli_query($connect, $query);

    mysqli_close($connect);


    $to = 'taktreba2017@gmail.com'; // вписать адрес почты администратора который будет получать письма
    $subject = 'Comment from ' . $email;

    mail($to, $subject, $commend);


    header('Location: http://scalar/listComment.php');
}
