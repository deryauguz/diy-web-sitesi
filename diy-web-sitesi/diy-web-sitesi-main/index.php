<?php session_start(); ?>
<!DOCTYPE html>
<html lang="tr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>3(D)IY Atölyesi</title>
  <link rel="icon" href="images/favicon.png" type="image/png" />
  <link rel="stylesheet" href="style.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;600&display=swap" >
  <style>
    body{
      font-family: 'Rubik', sans-serif;
    }
  </style>
</head>
<body>
  <nav class="menu">
    <ul>
      <li class="logo"><h1>3(D)IY Atölyesi</h1></li>
      <li>
        <ul class="menu-center">
          <li><a href="nasilcalisir.html" target="_blank">Nasıl Çalışır?</a></li>
          <li><a href="populerprojeler.html" target="_blank">Popüler Projeler</a></li>
          <li><a href="malzeme.html" target="_blank">Malzeme Listesi</a></li>
          <li><a href="sss.html" target="_blank">SSS</a></li>
          <li><a href="iletisim.html" target="_blank">İletişim</a></li>
        </ul>
      </li>
    <?php if (isset($_SESSION["kullanici_adi"])): ?>
<li class="giris" style="color: white;">
  Hoşgeldin, <strong><?= htmlspecialchars($_SESSION["kullanici_adi"]) ?></strong> | <a href="cikis.php" style="color: white;">Çıkış Yap</a>
</li>      <?php else: ?>
        <li class="giris"><a href="giris.html">Giriş Yap</a></li>
      <?php endif; ?>
    </ul>
  </nav>

  <section class="mor-alan">
    <div class="mor-alan-content">
      <div class="mor-alan-text">
        <h1>Kendin yap, yaratıcılığını konuştur!</h1>
        <p>Evdeki malzemeleri gir, sistem sana uygun projeler önersin!</p>
        <a class="btn" href="malzeme.html"><strong>Projeni Bul</strong></a>
      </div>
      <div class="robot-image">
        <img src="images/robot.jpg" alt="Robot çizimi - 3DIY">
      </div>
    </div>
  </section>

  <section class="sarı-alan">
    <div class="insanlar-image">
      <img src="images/insanlar.jpg"alt="insanlar">
    </div>
    <div class="sarı-alan-sol">
      <h2>Kendin Yap Projelerinde Yeni Bir Dönem!</h2>
      <p>3(D)IY Atölyesi sahip olduğun malzemelere göre seni ilham verici projelerle buluşturur. Elinde birkaç pet şişe, biraz ip ya da karton mu var? Hemen gir ve neler yapabileceğini gör!</p>
    </div>
    <div class="sarı-alan-sag">
      <h2 class="sarı-title">Nasıl Çalışır?</h2>
      <div class="kutular-container">
      <div class="kutu">
        <img src="images/malzemegir.jpg" alt="Malzeme Gir">
        <h3>Malzemeni Gir</h3>
      </div>
      <div class="kutu">
        <img src="images/önerial.jpg" alt="Proje Önerisi">
        <h3>Proje Önerisi Al</h3>
      </div>
      <div class="kutu">
        <img src="images/yappaylaş.jpg" alt="Yap ve Paylaş">
        <h3>Yap ve Paylaş</h3>
      </div>
    </div>
  </section>
  <footer>
    <p>© 2025 3(D)IY Atölyesi |  Gizlilik</a> |  Kullanım Şartları</a></p>
  </footer>
</body>
</html>