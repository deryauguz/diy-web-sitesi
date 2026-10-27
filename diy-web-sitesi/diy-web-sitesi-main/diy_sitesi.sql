-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 01 Haz 2025, 15:32:35
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `diy_sitesi`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `id` int(10) UNSIGNED NOT NULL,
  `kullanici_adi` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sifre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `kullanici_adi`, `email`, `sifre`) VALUES
(1, 'ali', 'ali@gmail.com', '$2y$10$53Cdfmt1aH.G5xw/Rjlpw.L8YDsizKMFvHeNYEsVwoX9GFk6DcMUu'),
(2, 'veli', 'veli@gmail.com', '$2y$10$RYpAAETxdHyaZYq3bu.kHOYZF8ZwCqulQdXKcJ9fXogcwCrqv4T8i'),
(3, 'ayşe', 'ayse@gmail.com', '$2y$10$1VR2IAXNPsQwZ0FGrDAHouvniNg25NSDPOh.GnA49uOpUxGEKPntO');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `malzemeler`
--

CREATE TABLE `malzemeler` (
  `id` int(10) UNSIGNED NOT NULL,
  `malzeme_adi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `malzemeler`
--

INSERT INTO `malzemeler` (`id`, `malzeme_adi`) VALUES
(1, 'Ayna'),
(2, 'İğne'),
(3, 'Mandal'),
(4, 'Kil'),
(5, 'Balon'),
(6, 'Şönil'),
(7, 'İp'),
(8, 'Kavanoz'),
(9, 'Boncuk'),
(10, 'Pet Şişe'),
(11, 'Karton Kutu'),
(12, 'Kumaş'),
(13, 'Düğme'),
(14, 'Fermuar'),
(15, 'ayna'),
(16, 'igne'),
(17, 'mandal'),
(18, 'kil'),
(19, 'balon'),
(20, 'sonil'),
(21, 'ip'),
(22, 'kavanoz'),
(23, 'boncuk'),
(24, 'pet-sise'),
(25, 'karton-kutu'),
(26, 'kumas'),
(27, 'dugme'),
(28, 'fermuar');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `projeler`
--

CREATE TABLE `projeler` (
  `id` int(10) UNSIGNED NOT NULL,
  `proje_adi` varchar(100) NOT NULL,
  `dosya_adi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `projeler`
--

INSERT INTO `projeler` (`id`, `proje_adi`, `dosya_adi`) VALUES
(1, 'Ahşap Mandallı Dekoratif Ayna', 'ayna.html'),
(2, 'Deniz Kabuğu Cep Aynası', 'ayna.html'),
(3, 'Kırık Aynalarla Tablo', 'ayna.html'),
(4, 'Balon Hayvanlar', 'balon.html'),
(5, 'Balon Lambası', 'balon.html'),
(6, 'Balon Vazo', 'balon.html'),
(7, 'Boncukla Anahtarlık Yapımı', 'boncuk.html'),
(8, 'Boncuklu Kolye Yapımı', 'boncuk.html'),
(9, 'Boncuklu Bileklik Yapımı', 'boncuk.html'),
(10, 'Düğme Dekoratif Çerçeve', 'dugme.html'),
(11, 'Düğmeyle Mini Tablo Yapımı', 'dugme.html'),
(12, 'Düğmeyle Toka Yapımı', 'dugme.html'),
(13, 'Fermuardan Kalemlik/Mini Çanta', 'fermuar.html'),
(14, 'Fermuardan Gül veya Çiçek Broşu', 'fermuar.html'),
(15, 'Fermuardan Bileklik', 'fermuar.html'),
(16, 'İğne Oyası Çiçek motifi', 'igne.html'),
(17, 'İğneyle Nakışlı Tablo Yapımı', 'igne.html'),
(18, 'Dikişle Oyuncak Yapımı', 'igne.html'),
(19, 'İp ile Sepet Yapımı (Jüt İpli Sepet)', 'ip.html'),
(20, 'İp ile Anahtarlık Yapımı', 'ip.html'),
(21, 'İp ile Rüya Avı Yapımı', 'ip.html'),
(22, 'Karton Kutudan Masa Üstü Organizeri', 'karton-kutu.html'),
(23, 'Karton Kutudan Duvar Rafı Yapımı', 'karton-kutu.html'),
(24, 'Karton Kutudan Telefon Standı', 'karton-kutu.html'),
(25, 'Kavanozdan Mumluk Yapımı', 'kavanoz.html'),
(26, 'Kavanozdan Saksı Yapımı', 'kavanoz.html'),
(27, 'Kavanozdan Yüzey Süslemesi veya Duvar Dekoru', 'kavanoz.html'),
(28, 'Kilden Mini Heykel (Hayvan Figürü)', 'kil.html'),
(29, 'Kilden Mini Saksı Yapımı', 'kil.html'),
(30, 'Kil ile Yüzük Yapımı', 'kil.html'),
(31, 'Kumaştan Ayraç Yapımı', 'kumas.html'),
(32, 'Kumaştan Organizer Yapımı', 'kumas.html'),
(33, 'Kumaştan Toka Yapımı', 'kumas.html'),
(34, 'Mandal İle Dekoratif Kelebek Yapımı', 'mandal.html'),
(35, 'Mandal Fotoğraf Askısı', 'mandal.html'),
(36, 'Mandal Magnet Yapımı', 'mandal.html'),
(37, 'Pet Şişe Çiçek', 'pet-sise.html'),
(38, 'Pet Şişeden Bahçe Saksısı', 'pet-sise.html'),
(39, 'Pet Şişe Kapaklarından Tablo', 'pet-sise.html'),
(40, 'Şönil Çiçek Yapımı', 'sonil.html'),
(41, 'Şönil ile Anahtarlık Yapımı', 'sonil.html'),
(42, 'Şönil İpliğiyle Hayvan Figürü Yapımı', 'sonil.html');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `proje_malzemeler`
--

CREATE TABLE `proje_malzemeler` (
  `proje_id` int(10) UNSIGNED NOT NULL,
  `malzeme_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `proje_malzemeler`
--

INSERT INTO `proje_malzemeler` (`proje_id`, `malzeme_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 5),
(5, 5),
(5, 7),
(6, 5),
(7, 7),
(7, 9),
(8, 2),
(8, 7),
(8, 9),
(9, 2),
(9, 7),
(9, 9),
(10, 13),
(11, 13),
(12, 13),
(13, 2),
(13, 12),
(13, 14),
(14, 2),
(14, 14),
(15, 14),
(16, 2),
(16, 7),
(16, 12),
(17, 2),
(17, 7),
(17, 12),
(18, 2),
(18, 7),
(18, 12),
(19, 7),
(20, 7),
(21, 7),
(22, 11),
(22, 12),
(23, 11),
(24, 11),
(25, 8),
(26, 8),
(27, 8),
(28, 4),
(29, 4),
(30, 4),
(31, 2),
(31, 7),
(31, 12),
(32, 2),
(32, 7),
(32, 12),
(32, 13),
(33, 2),
(33, 7),
(33, 12),
(34, 3),
(35, 3),
(35, 7),
(36, 3),
(37, 10),
(38, 10),
(39, 10),
(40, 6),
(41, 6),
(42, 6);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `malzemeler`
--
ALTER TABLE `malzemeler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `projeler`
--
ALTER TABLE `projeler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `proje_malzemeler`
--
ALTER TABLE `proje_malzemeler`
  ADD PRIMARY KEY (`proje_id`,`malzeme_id`),
  ADD KEY `malzeme_id` (`malzeme_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `malzemeler`
--
ALTER TABLE `malzemeler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Tablo için AUTO_INCREMENT değeri `projeler`
--
ALTER TABLE `projeler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `proje_malzemeler`
--
ALTER TABLE `proje_malzemeler`
  ADD CONSTRAINT `proje_malzemeler_ibfk_1` FOREIGN KEY (`proje_id`) REFERENCES `projeler` (`id`),
  ADD CONSTRAINT `proje_malzemeler_ibfk_2` FOREIGN KEY (`malzeme_id`) REFERENCES `malzemeler` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
