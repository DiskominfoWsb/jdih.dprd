<?php

use yii\helpers\Html;
use yii\widgets\ListView;
?>

<section class="page-title-section bg-img cover-background" data-overlay-dark="7" data-background="/img/banner/header.jpg">
    <div class="container">
        <h1>ARTIKEL / MAJALAH HUKUM</h1>
        <ul class="text-center">
            <li><?= Html::a('Home', ['/']); ?></li>
            <li>
                <span class="active">Dokumen Hukum</span>
            </li>
        </ul>
    </div>
</section>
<!-- end page title section -->



<!-- start listing-list section -->
<section>
    <div class="container">
        <div class="border-bottom padding-20px-bottom margin-30px-bottom">

            <div class="widget search mb-4">
                <form id="w0" action="/dokumen/index" method="get" data-pjax="1">
                    <div class="form-row align-items-center">
                        <div class="col-md-10 my-1">
                            <input type="text" class="form-control" id="dokumensearch-judul" name="DokumenSearch[judul]" placeholder="cari dokumen hukum lainnya...">
                        </div>


                        <div class="col-md-2 my-1">
                            <button type="submit" class="butn btn-block">Cari</button>
                        </div>
                    </div>
                </form>
            </div>
            <!-- <form id="w0" class="shadow-sm rounded mb-8" action="/jdih/dokumen/index" method="get" data-pjax="1"> -->
            <!--                
                <div class="input-group input-group-lg">
                    <div class="input-group-prepend">
                        <span class="input-group-text bg-light border-0 no-margin-bottom margin-10px-top">
                            <i class="fa fa-search text-muted font-size-18" aria-hidden="true"></i>
                        </span>
                    </div>
                    <input type="text" class="form-control no-margin-bottom margin-10px-top" id="dokumensearch-judul"  name="DokumenSearch[judul]" aria-label="Amount (to the nearest dollar)" placeholder="ketik dokumen..." required="">
                    <div class="input-group-append no-margin-bottom margin-10px-top">
                        <button type="submit" class="btn shadow-none btn-lg btn-danger text-uppercase">Cari</button>
                    </div>
                </div> -->
            <!-- 
                          <div class="input-group mb-3">
                            
                            <input type="text" class="form-control" id="dokumensearch-judul"  name="DokumenSearch[judul]" placeholder="cari dokumen hukum lain..." aria-label="Recipient's username" aria-describedby="button-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="submit" id="button-addon2"><span class="ti-search">Cari</span></button>
                            </div>
                        </div>

            </form> -->
        </div>

        <div class="row">
            <div class="col-lg-9 sm-margin-50px-bottom">
                <?= ListView::widget([
                    'dataProvider' => $dataProvider,
                    'itemOptions' => ['class' => 'item'],
                    'itemView' => '_data',
                    'summary' => '',
                    // 'itemView' => function ($model, $key, $index, $widget) {
                    //     return Html::a(Html::encode($model->id), ['view', 'id' => $model->id]);
                    // },
                ]) ?>

            </div>
            <div class="col-lg-3">
                <div class="side-bar">
                    <div class="widget">
                        <div class="widget-title">
                            <h3>Pencarian</h3>
                        </div>
                        <?php echo $this->render('_search', ['model' => $searchModel]); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>