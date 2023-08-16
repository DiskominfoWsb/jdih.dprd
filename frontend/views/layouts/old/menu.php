<?php

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Menu;
?>

<nav class="collapse navbar-collapse menu">

<?php         
    $menuItems = [
        [
            'label' => 'Home', 
            'url' => ['/site/index'],
           'template' =>'<a href="{url}" class="sf-with-ul">{label}</a>',
           
        ],

        [
            'label' => 'Profil <span class="sf-sub-indicator"><i class="fa fa-angle-down "></i></span>',
            
            'url' => '#',
            'items' => [
                ['label' => 'Tentang Kami', 'url' => ['/site/contact']],
                ['label' => 'Sejarah', 'url' => ['/site/visi-misi']],
                ['label' => 'Visi Misi', 'url' => ['/site/struktur-organisasi']],
                ['label' => 'Pengurus', 'url' => ['/site/struktur-organisasi']],                                  
            ],
        ], 

        [
            'label' => 'Layanan <span class="sf-sub-indicator"><i class="fa fa-angle-down "></i></span> ',
            'url' => '#',
            'items' => [
                ['label' => 'Simpanan', 'url' => ['/peraturan/uu']],
                ['label' => 'Pinjaman', 'url' => ['/peraturan/pp']],
            ],
        ],    

        ['label' => 'Keanggotaan', 'url' => Yii::$app->homeUrl],

        [
            'label' => 'Publikasi <span class="sf-sub-indicator"><i class="fa fa-angle-down "></i></span>',
            'url' => '#',     
           
           // 'template' => '<a id="current" href="{url}" class="sf-with-ul">{label}</a>',
            'items' => [
                ['label' => 'Berita', 'url' => ['/siteoo/contact'],],
                ['label' => 'Artikel', 'url' => ['/putusan/ma']],
            ],
        ],   
  
        ['label' => 'Kontak', 'url' => ['/site/kontak']],           
    ];
            
    echo Menu::widget([
        'items' => $menuItems,
       
   
        'activateItems' => true,
        'options' => [
            'class' => 'nav navbar-nav sf-menu',
        ],
        //'submenuTemplate' => "\n<ul class='sub-menu'>\n{items}\n</ul>\n",
        'activateParents' => true,
        'encodeLabels' => false, 
        //'activeCssClass'=>'current',

   
            
    ]);
    
?>
       <!-- <ul class="nav navbar-nav sf-menu">
        <li id="current">
            <a  href="#">Home</a>
        </li>
        
        <li>
            <a id href="#" class="sf-with-ul">
            Profil
            <span class="sf-sub-indicator">
            <i class="fa fa-angle-down "></i>
            </span>
            </a>
            <ul>
                <li><a href="shop.html" class="sf-with-ul">Kata Pengantar</a></li>
                <li><a href="shop-left-sidebar.html" class="sf-with-ul">Sejarah</a></li>
                <li><a href="shop-right-sidebar.html" class="sf-with-ul">Visi Misi</a></li>
                <li><a href="shop-right-sidebar.html" class="sf-with-ul">Dewan Pengurus</a></li>
            </ul>
        </li>

        <li>
            <a href="#" class="sf-with-ul">
            Layanan
            <span class="sf-sub-indicator">
            <i class="fa fa-angle-down "></i>
            </span>
            </a>
            <ul>
                <li><a href="shop.html" class="sf-with-ul">Simpanan</a></li>
                <li><a href="shop-left-sidebar.html" class="sf-with-ul">Pinjaman</a></li>                
            </ul>
        </li>   

        <li>
            <a  href="#">Keanggotaan</a>
        </li> 

        <li>
            <a id href="#" class="sf-with-ul">
            Publikasi
            <span class="sf-sub-indicator">
            <i class="fa fa-angle-down "></i>
            </span>
            </a>
            <ul>
                <li><a href="shop.html" class="sf-with-ul">Artikel</a></li>
                <li><a href="shop-left-sidebar.html" class="sf-with-ul">Berita</a></li>
                
            </ul>
        </li>         

        <li>
            <a href="#">
            Kontak

            </a>

        </li> 
    </ul>   -->
</nav>