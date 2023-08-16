<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\Pemrakarsa */

$this->title = 'Tambah Data Pemrakarsa';
$this->params['breadcrumbs'][] = ['label' => 'Pemrakarsa', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="box-body no-padding">

    <?= $this->render('_form-create', [
    'model' => $model,
    ]) ?>
</div>


