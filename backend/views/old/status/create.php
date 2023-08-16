<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\Status */

$this->title = 'Tambah Data Status';
$this->params['breadcrumbs'][] = ['label' => 'Status', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="box-body no-padding">

    <?= $this->render('_form-create', [
    'model' => $model,
    ]) ?>
</div>


