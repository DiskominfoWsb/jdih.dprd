<?php
use mdm\admin\components\Helper;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\widgets\ListView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel frontend\models\search\RancanganSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */


$this->title = 'Rancangan';
$this->params['breadcrumbs'][] = $this->title;
?>

<section class="job-bg page job-list-page" style="background-image: url('frontend/assets/images/bg/home3.jpg')">
    <div class="container">
        <div class="breadcrumb-section">
            <!-- breadcrumb -->
            <ol class="breadcrumb">
                <li><a href="/">Home</a></li>
                <li>Rancangan </li>
            </ol><!-- breadcrumb -->                        
            <h2 class="title">Data Rancangan Peraturan Perundang-undangan</h2>
        </div>

        <div class="category-info"> 
            <div class="row">
                <div class="col-md-3">
               
                        <div class="section job-list-item">
                            <h4>Pencarian Lanjut</h4>
                            <br><br>
                            <?php echo $this->render('_search', ['model' => $searchModel]); ?>
                        </div>
                    
                </div>
                
                <div class="col-md-9">                                             
                    <?= ListView::widget([
                        'dataProvider' => $dataProvider,
                        'summary' => '<h4>Ditampilkan {begin} - {end} dari {totalCount} Data Rancangan</h4>',  
                        'layout' => "{summary}\n{items}\n{pager}", 
                        'emptyText' => '<h4>Data yang dicari tidak ditemukan......</h4>',
                        'options' => [
                            'tag' => 'div',
                            'class' => 'section job-list-item',
                            'id' => 'list-wrapper',
                        ],
                        'itemOptions' => ['class' => 'item'],
                        'itemView' => '_item',
                        'itemOptions' => [
                            'tag' => false,
                        ],
                        'pager' => [
                            'firstPageLabel' => 'first',
                            'lastPageLabel' => 'last',
                            'nextPageLabel' => 'next',
                            'prevPageLabel' => 'previous',
                            'maxButtonCount' => 3,
                        ],
                     //   'itemView' => function ($model, $key, $index, $widget) {
                       //     return Html::a(Html::encode($model->id), ['view', 'id' => $model->id]);
                       // },
                    ]) ?>
                </div>               
            </div>
        </div><!-- recommended-ads -->
    </div>  

</section><!-- main -->




   
    

