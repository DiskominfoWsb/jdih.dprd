<?php

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;
use yii\helpers\Url;
use yii\widgets\Menu;

AppAsset::register($this);

?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">

<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>


<body>
    <?php $this->beginBody() ?>




    <!-- start main-wrapper section -->
    <div class="main-wrapper">
        <!-- start header section -->
        <header>
            <div class="navbar-default">
                <!-- start top search -->
                <div class="top-search bg-theme" style="display: block;">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6" style="color:white">
                                Pusat Dokumentasi dan Jaringan Hukum Nasional
                        </div>
                            <div class="col-md-6" style="text-align: right;color:white ">
                                Portal Resmi BPHN - Kementerian Hukum dan HAM RI
                            </div>
                        </div>
                    </div>
                </div>
   

                <!-- end top search -->

                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-md-12">
                            <div class="menu_area">
                                <nav class="navbar navbar-expand-lg navbar-light no-padding">

                                    <div class="navbar-header navbar-header-custom">
                                        <!-- start logo -->
                                        <?= Html::a(Html::img('@web/frontend/assets/img/logos/logo-new.png', ['id' => 'logo']), ['/'], ['class' => 'navbar-brand width-200px sm-width-180px xs-width-150px']); ?>
                                        <!-- end logo -->
                                    </div>

                                    <div class="navbar-toggler"></div>

                                    <!-- start menu area -->
                                    <?= $this->render('menu.php') ?>
                                    <!-- end menu area -->
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- end header section -->

        <?= $content ?>

        <?= $this->render('footer.php') ?>



    </div>
    <!-- end main-wrapper section -->

    <!-- start scroll to top -->
    <a href="javascript:void(0)" class="scroll-to-top"><i class="fas fa-angle-up" aria-hidden="true"></i></a>
    <!-- end scroll to top -->

    <!-- all js include start -->

    <!-- jQuery -->


    <!-- all js include end -->

    <?php $this->endBody() ?>
</body>

</html>
<?php $this->endPage() ?>