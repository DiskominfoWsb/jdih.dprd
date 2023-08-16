<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;


/* @var $this yii\web\View */
/* @var $model frontend\models\search\RancanganSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="rancangan-search">

    <?php $form = ActiveForm::begin([
        'enableClientScript' => false,
        'action' => ['index'],
        'method' => 'get',
        'options' => [
            'data-pjax' => true
        ],
    ]); ?>


    <?= $form->field($model, 'nama_rancangan', [
 'inputOptions' =>
    [
        'autofocus' => 'autofocus',
        'class' => 'form-control',
        'tabindex' => '1',
    ]]) ?>


    <?= $form->field($model, 'tahun') ?>


    <?= $form->field($model, 'program_id')->dropDownList(
        \yii\helpers\ArrayHelper::map(\frontend\models\Program::find()->all(), 'id', 'nama_program'),
        ['prompt'=>'-- Pilih Program --',
  
    ])->label('Jenis Rancangan');    
    ?>


    <?= $form->field($model, 'jenis_rancangan_id')->dropDownList(
        \yii\helpers\ArrayHelper::map(\frontend\models\JenisRancangan::find()->all(), 'id', 'nama_rancangan'),
        ['prompt'=>'-- Pilih Rancangan --',
  
    ])->label('Jenis Rancangan');    
    ?>

    <?= $form->field($model, 'pemrakarsa_id')->dropDownList(
        \yii\helpers\ArrayHelper::map(\frontend\models\Pemrakarsa::find()->all(), 'id', 'nama_pemrakarsa'),
        ['prompt'=>'-- Pilih Pemrakarsa --',
  
    ])->label('Pemrakarsa');    
    ?>
    <?php // echo $form->field($model, 'program') ?>

    <?php // echo $form->field($model, 'pemrakarsa') ?>

    <?php // echo $form->field($model, 'status') ?>


    <?php // echo $form->field($model, 'created_at') ?>

    <?php // echo $form->field($model, 'created_by') ?>

    <?php // echo $form->field($model, 'updated_at') ?>

    <?php // echo $form->field($model, 'updated_by') ?>

    <?php // echo $form->field($model, 'peraturan_id') ?>

       
        <?= Html::submitButton('Cari', ['class' => 'btn btn-success btn-flat']) ?>
        

    <?php ActiveForm::end(); ?>

</div>
