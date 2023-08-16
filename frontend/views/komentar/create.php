<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model frontend\models\MasukanMasyarakat */

$this->title = 'Tambah Data Masukan Masyarakat';
$this->params['breadcrumbs'][] = ['label' => 'Masukan Masyarakat', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="box-body no-padding">

    <?= $this->render('_form-create', [
    'model' => $model,
    ]) ?>
</div>


