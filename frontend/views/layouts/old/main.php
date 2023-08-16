<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;
use yii\helpers\Url;

AppAsset::register($this);

?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
    <head>
        <meta charset="<?= Yii::$app->charset ?>">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Gallaxy Responsive HTML5/CSS3 Template from FIFOTHEMES.COM">
        <meta name="author" content="FIFOTHEMES.COM">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <?= Html::csrfMetaTags() ?>
        <title><?= Html::encode($this->title) ?></title>
        <link rel="shortcut icon" href="img/ico/favicon.ico">
        <link rel="apple-touch-icon" href="img/ico/apple-touch-icon.png">
        <link rel="apple-touch-icon" sizes="72x72" href="img/ico/apple-touch-icon-72.png">
        <link rel="apple-touch-icon" sizes="114x114" href="img/ico/apple-touch-icon-114.png">
        <link rel="apple-touch-icon" sizes="144x144" href="img/ico/apple-touch-icon-144.png">    
        
        <?php $this->head() ?>
    </head>

    <body class="boxed home">
    <?php $this->beginBody() ?>
        <div class="page-mask">
            <div class="page-loader">
                <div class="spinner"></div>
                Loading...
            </div>
        </div>
        <!-- Wrap -->
        <div class="wrap">
            <!-- Header -->
            <?= $this->render('header.php') ?>
            <!-- /Header --> 
            <!-- Main Section -->

            <section id="main">
                <?= $content ?>
            </section>        

            <!-- /Main Section -->
            <!-- Footer -->

            <?= $this->render('footer.php') ?>

            <!-- Modal -->
            <?= $this->render('modals.php') ?>
  
            <!-- Scroll To Top --> 
            <a href="#" class="scrollup"><i class="fa fa-angle-up"></i></a>
        </div>
        <!-- /Wrap -->

        <?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>

