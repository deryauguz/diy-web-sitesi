<?php
$baglanti=new mysqli("localhost", "root", "", "diy_sitesi");
$baglanti->set_charset("utf8");

if($baglanti->connect_error){
    die("Bağlantı hatası: " . $baglanti->connect_error);}
function temizleMalzeme($str){
    $str=mb_strtolower(trim($str), 'UTF-8');
    $degistir=[
        'ğ'=>'g', 'ü'=>'u', 'ş'=>'s', 'ı'=>'i', 'ö'=>'o', 'ç'=>'c',
        'İ'=>'i', 'Ğ'=>'g', 'Ü'=>'u', 'Ş'=>'s', 'İ'=>'i', 'Ö'=>'o', 'Ç'=>'c'];
    $str=strtr($str, $degistir);
    $str=str_replace(' ', '-', $str);
    return $str;
}

$secili_malzemeler=$_POST['malzeme'] ?? [];
if (empty($secili_malzemeler)) {
    echo "Lütfen en az bir malzeme seçin.";
    exit;
}
$secili_malzemeler=array_unique(array_map('temizleMalzeme',$secili_malzemeler));
$projeDosyalari=[
    'ayna.html',
    'balon.html',
    'boncuk.html',
    'fermuar.html',
    'kavanoz.html',
    'kil.html',
    'dugme.html',
    'kumas.html',
    'mandal.html',
    'ip.html',
    'pet-sise.html',
    'sonil.html',
    'igne.html',
    'karton-kutu.html',
];

echo '<!DOCTYPE html>
<html lang="tr">
<head>
  <meta charset="UTF-8" />
  <title>Seçilen Projeler</title>
  <link rel="stylesheet" href="projeler.css" />
  <link rel="icon" href="images/favicon.png" type="image/png" />
</head>
<body>
  <h1>Seçtiğiniz malzemelerle yapılabilecek projeler:</h1>
  <div class="tum-projeler-kapsayici">
';

foreach($projeDosyalari as $dosyaAdi) {
    if(!file_exists($dosyaAdi)) continue;

    $html=file_get_contents($dosyaAdi);
    $dom=new DOMDocument();
    libxml_use_internal_errors(true);
    $dom->loadHTML($html, LIBXML_HTML_NOIMPLIED | LIBXML_HTML_NODEFDTD);
    libxml_clear_errors();

    $xpath=new DOMXPath($dom);
    $kartlar=$xpath->query("//*[contains(@class, 'proje-karti')]");

    foreach($kartlar as $kart){
        $dataMalzeme=$kart->getAttribute('data-malzeme');
        $malzemeArray=array_map('temizleMalzeme', explode(',', $dataMalzeme));

        $eslesenVarMi=false;
        foreach($secili_malzemeler as $secim){
            if(in_array($secim, $malzemeArray)){
                $eslesenVarMi = true;
                break;
            }
        }
        if($eslesenVarMi) {
            echo $dom->saveHTML($kart);
        }
    }
}
echo '
  </div>
</body>
</html>';
?>