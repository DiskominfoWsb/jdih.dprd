<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\search\MasukanMasyarakatSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="masukan-masyarakat-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
        'options' => [
            'data-pjax' => 1
        ],
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'rancangan_id') ?>

    <?= $form->field($model, 'nama') ?>

    <?= $form->field($model, 'email') ?>

    <?= $form->field($model, 'pekerjaan') ?>

    <?php // echo $form->field($model, 'instansi') ?>

    <?php // echo $form->field($model, 'komentar') ?>

    <?php // echo $form->field($model, 'masukan_mewakili') ?>

    <?php // echo $form->field($model, 'file_pendukung') ?>

    <?php // echo $form->field($model, 'is_publish') ?>

    <?php // echo $form->field($model, 'created_at') ?>

    <?php // echo $form->field($model, 'created_by') ?>

    <?php // echo $form->field($model, 'updated_at') ?>

    <?php // echo $form->field($model, 'updated_by') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
