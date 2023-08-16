<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\Program */

$this->title = 'Tambah Data Program';
$this->params['breadcrumbs'][] = ['label' => 'Program', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="box-body no-padding">

    <?= $this->render('_form-create', [
    'model' => $model,
    ]) ?>
</div>


