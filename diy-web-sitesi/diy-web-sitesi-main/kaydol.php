<?php
session_start();
$baglanti=new mysqli("localhost", "root", "", "diy_sitesi");
$baglanti->set_charset("utf8");

if($_SERVER["REQUEST_METHOD"]=="POST") {
    $kullanici_adi=$_POST["kullanici_adi"];
    $email=$_POST["email"];
    $sifre=$_POST["sifre"];
    $sifre_tekrar=$_POST["sifre_tekrar"];

    if($sifre!==$sifre_tekrar) {
        echo "Şifreler uyuşmuyor!";
        exit;}

    $sifre_hashli=password_hash($sifre, PASSWORD_DEFAULT);

    $stmt=$baglanti->prepare("INSERT INTO kullanicilar (kullanici_adi, email, sifre) VALUES (?, ?, ?)");
    $stmt->bind_param("sss", $kullanici_adi, $email, $sifre_hashli);

    if($stmt->execute()) {
        $_SESSION["kullanici_adi"]=$kullanici_adi;
        header("Location: index.php");
        exit;
    } else{
        echo "Hata: " . $stmt->error;
    }
    $stmt->close();
    $baglanti->close();
}
?>