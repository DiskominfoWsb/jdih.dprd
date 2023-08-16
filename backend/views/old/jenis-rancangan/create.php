<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\JenisRancangan */

$this->title = 'Tambah Data Jenis Rancangan';
$this->params['breadcrumbs'][] = ['label' => 'Jenis Rancangan', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="box-body no-padding">

    <?= $this->render('_form-create', [
    'model' => $model,
    ]) ?>
</div>


