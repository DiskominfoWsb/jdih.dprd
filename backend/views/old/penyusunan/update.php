<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Rancangan */

$this->title = 'Ubah Data Penyusunan Rancangan Peraturan: ';
$this->params['breadcrumbs'][] = ['label' => 'Rancangan', 'url' => ['index']];
//$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="box-body no-padding">

    <?= $this->render('_form-update', [
        'model' => $model,
    ]) ?>

</div>
