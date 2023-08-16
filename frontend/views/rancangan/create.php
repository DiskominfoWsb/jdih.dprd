<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model frontend\models\Rancangan */

$this->title = 'Tambah Data Rancangan';
$this->params['breadcrumbs'][] = ['label' => 'Rancangan', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="box-body no-padding">

    <?= $this->render('_form-create', [
    'model' => $model,
    ]) ?>
</div>


