<?php


use yii\helpers\Html;
use yii\widgets\Pjax;
use yii\widgets\ListView;


$this->title = 'Berita';
$this->params['breadcrumbs'][] = $this->title;
?>


<section class="page-title-section bg-img cover-background" data-overlay-dark="7" data-background="/img/banner/header.jpg">
    <div class="container">
        <h1>Berita</h1>
        <ul class="text-center">
            <li><?= Html::a('Home', ['/']); ?></li>
            <li>
                <span class="active">Berita</span>
            </li>
        </ul>
    </div>
</section>



<section>
    <div class="container">
        <div class="row">
            <?= ListView::widget(
                [
                    'summary' => false,
                    'dataProvider' => $dataProvider,
                    //'filterModel' => $searchModel,
                    // 'itemOptions' => ['tag' => null],
                    'options'      => [
                        'tag' => false,
                    ],
                    'itemOptions'  => [
                        'tag' => false,
                    ],
                    'itemView' => function ($model, $key, $index, $widget) {
                        $itemContent = $this->render(
                            '_data',
                            [
                                'model' => $model,
                                'index' => $index,
                                'key' => $key
                            ]
                        );
                        return $itemContent;
                    }

                ]
            );
            ?>
        </div>
    </div>
</section>
</div>