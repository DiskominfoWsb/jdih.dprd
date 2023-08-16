<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\StatusRancangan */

$this->title = 'Tambah Data Status Rancangan';
$this->params['breadcrumbs'][] = ['label' => 'Status Rancangan', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="box-body no-padding">

    <?= $this->render('_form-create', [
    'model' => $model,
    ]) ?>
</div>


