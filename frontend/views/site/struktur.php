<?php

use yii\helpers\Html;
?>
<section class="page-title-section bg-img cover-background" data-overlay-dark="7" data-background="/img/banner/header.jpg">
  <div class="container">
    <h1>Struktur Organisasi</h1>
    <ul class="text-center">
      <li><?= Html::a('Home', ['/']); ?></li>
      <li>
        <span class="active">Tentang Kami</span>
      </li>
    </ul>
  </div>
</section>

<section>
  <div class="container">
    <h4>Struktur Organisasi JDIH BPHN</h4>
    <?= Html::img('@web/frontend/assets/img/jdih/sto.png', ['class' => 'width-100 margin-10px-bottom xs-margin-5px-bottom']); ?>
  </div>
</section>