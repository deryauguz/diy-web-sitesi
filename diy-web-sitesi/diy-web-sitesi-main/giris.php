<?php
session_start();
$baglanti=new mysqli("localhost", "root", "", "diy_sitesi");
$baglanti->set_charset("utf8");

if($_SERVER["REQUEST_METHOD"]=="POST"){
    $email=$_POST["email"];
    $sifre=$_POST["sifre"];

    $stmt=$baglanti->prepare("SELECT * FROM kullanicilar WHERE email=?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $sonuc=$stmt->get_result();

    if($sonuc->num_rows === 1){
        $kullanici=$sonuc->fetch_assoc();
        if(password_verify($sifre, $kullanici["sifre"])){
            $_SESSION["kullanici_adi"]=$kullanici["kullanici_adi"];
            header("Location: index.php");
            exit;
        }else{
            echo "Hatalı şifre!";}
        } else{
        header("Location: kayitform.html");
        exit;
    }
}
?>