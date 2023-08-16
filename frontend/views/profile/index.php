<?php
/* @var $this yii\web\View */


use yii\helpers\Html;
use common\widgets\Alert;
?>

<section class="page-title-section bg-img cover-background" data-overlay-dark="7" data-background="/jdih/img/banner/header.jpg">
    <div class="container">
        <h1>Profile</h1>
        <ul class="text-center">
            <li><?= Html::a('Home', ['/']); ?></li>
            <li>
                <span class="active">Profile</span>
            </li>
        </ul>
    </div>
</section>

<?= Alert::widget() ?>
<section>
    <div class="container">

        <div class="row pb-5">

            <div class="col-md-5 col-lg-3 xs-margin-30px-bottom">
                <div class="summary padding-40px-all slow-redirect bg-light">
                    <h6>Dashboard</h6>
                    <ul class="list-unstyled no-margin-bottom">
                        <li><?= Html::a('Profile', ['profile/profile']) ?></li>
                        <li><?= Html::a('Peminjaman', ['profile/peminjaman']) ?></li>
                    </ul>
                </div>
            </div>

            <div class="col-md-7 col-lg-9 padding-10px-top">
                <h4 id="alert">Dashboard</h4>
                Selamat Datang Silahkan Perbaharui Profil anda dan selalu mengecek aktivitas Peminjaman
            </div>
        </div>
    </div>
</section>