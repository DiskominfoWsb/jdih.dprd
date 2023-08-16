<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model frontend\models\Dokumen */

$this->title = 'Tambah Data Dokumen';
$this->params['breadcrumbs'][] = ['label' => 'Dokumen', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="box-body no-padding">

    <?= $this->render('_form-create', [
    'model' => $model,
    ]) ?>
</div>


