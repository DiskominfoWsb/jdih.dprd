<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\search\PenyusunanSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="rancangan-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
        'options' => [
            'data-pjax' => 1
        ],
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'tahapan_rancangan') ?>

    <?= $form->field($model, 'nama_rancangan') ?>

    <?= $form->field($model, 'jenis_rancangan_id') ?>

    <?= $form->field($model, 'tahun') ?>

    <?php // echo $form->field($model, 'program_id') ?>

    <?php // echo $form->field($model, 'pemrakarsa_id') ?>

    <?php // echo $form->field($model, 'status_rancangan_id') ?>

    <?php // echo $form->field($model, 'is_publish') ?>

    <?php // echo $form->field($model, 'materi_muatan') ?>

    <?php // echo $form->field($model, 'keterangan') ?>

    <?php // echo $form->field($model, 'file_rancangan') ?>

    <?php // echo $form->field($model, 'file_naskah_akademik') ?>

    <?php // echo $form->field($model, 'tanggal_awal_publish') ?>

    <?php // echo $form->field($model, 'tanggal_akhir_publish') ?>

    <?php // echo $form->field($model, 'created_at') ?>

    <?php // echo $form->field($model, 'created_by') ?>

    <?php // echo $form->field($model, 'updated_at') ?>

    <?php // echo $form->field($model, 'updated_by') ?>

    <?php // echo $form->field($model, 'peraturan_id') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
