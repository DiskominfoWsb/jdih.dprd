<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\Kategori */

$this->title = 'Tambah Data Kategori';
$this->params['breadcrumbs'][] = ['label' => 'Kategori', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="box-body no-padding">

    <?= $this->render('_form-create', [
    'model' => $model,
    ]) ?>
</div>


