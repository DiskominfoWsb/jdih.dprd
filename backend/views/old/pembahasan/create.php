<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\Rancangan */

$this->title = 'Tambah Data Pembahasan Rancangan Peraturan';
$this->params['breadcrumbs'][] = ['label' => 'Rancangan', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="box-body no-padding">

    <?= $this->render('_form-create', [
    'model' => $model,
    ]) ?>
</div>


