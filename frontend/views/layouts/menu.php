<?php

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\helpers\Url;
use yii\widgets\Menu;
?>


<?php
$menuItems = [
    [
        'label' => 'Home',
        'url' => ['/site/index'],
    ],

    [
        'label' => 'Tentang Kami',
        'url' => '#',
        'options' => ['class' => 'has-sub'],
        'template' => '<span class="submenu-button"></span><a href="javascript:void(0)" class="href_class">{label}</a>',
        'items' => [
            ['label' => 'Sekilas Sejarah', 'url' => ['site/sekilas-sejarah']],
            ['label' => 'Dasar Hukum', 'url' => ['site/dasar-hukum']],
            ['label' => 'Visi ', 'url' => ['site/visi']],
            ['label' => 'Misi', 'url' => ['site/misi']],
            ['label' => 'Struktur Organisasi', 'url' => ['site/sto']],
        ]
    ],

    [
        'label' => 'Jenis Dokumen',
        'url' => '#',
        'options' => ['class' => 'has-sub'],
        'activateItems' => true,
        'activeCssClass' => 'active',
        // 'template' => '<span class="submenu-button"></span><span class="submenu-button"></span><a href="{url}">{label}</a>',
        'template' => '<span class="submenu-button"></span><a href={url}>{label}</a>',

        'items' => [
            ['label' => 'Peraturan', 'url' => ['dokumen/peraturan']],
            ['label' => 'Monografi', 'url' => ['dokumen/monografi']],
            // ['label' => 'Penelitian Hukum', 'url' => ['dokumen/penelitian-hukum']],
            // ['label' => 'Pengkajian Hukum', 'url' => ['dokumen/pengkajian-hukum']],
            // ['label' => 'Pengkajian Konstitusi', 'url' => ['dokumen/pengkajian-konstitusi']],
            // ['label' => 'Naskah Akademik Kemenkumham', 'url' => ['dokumen/naskah-akademik']],
            // ['label' => 'Analisis Dan Evaluasi', 'url' => ['dokumen/analisis-dan-evaluasi']],
            // ['label' => 'Kompedium', 'url' => ['site/kompedium']],
            ['label' => 'Artikel/Majalah Hukum', 'url' => ['dokumen/artikel']],
            ['label' => 'Putusan', 'url' => ['dokumen/putusan']],
            // ['label' => 'Staatsblad', 'url' => ['dokumen/staatsblad']],
        ]
    ],
    ['label' => 'Berita', 'url' => ['berita/index']],
    //   ['label' => 'UPT Kanwil', 'url' => ['site/upt']],
    // ['label' => 'Layanan Perpustakaan', 'url' => ['site/login']],
    //  ['label' => 'JDIH Galeri', 'url' => ['site/galeri']],
    // ['label' => 'Berita', 'url' => ['berita/index']],

    // ['label' => 'Kontak', 'url' => ['/site/kontak']],
];

if (Yii::$app->user->isGuest) {
    $menuItems[] =  ['label' => 'Layanan Perpustakaan', 'url' => ['site/login']];
    //$menuright[] = ['label' => '<i class="fa fa-user"></i> Login', 'url' => ['/site/login']];
    //$menuright[] = ['label' => 'Register', 'url' => ['/site/signup']];
} else {
    $menuItems[] = ['label' => 'Profile User', 'url' => ['/profile/index']];
    $menuItems[] = ['label' => 'Sign out', 'url' => ['/site/logout'],  ['data' => ['method' => 'post']]];
}
echo Menu::widget([
    'items' => $menuItems,
    // 'activateItems' => true,
    'options' => [
        'class' => 'navbar-nav ml-left',
        'id' => 'nav',
    ],
    'activateParents' => true,
    //'encodeLabels' => false,
    'activeCssClass' => 'current',
    //'submenuTemplate' => "\n<ul class='has-sub'>\n{items}\n</ul>\n",

]);
?>
