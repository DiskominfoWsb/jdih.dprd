<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Permohonan */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="permohonan-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'id')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'nomor')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'jenis_id')->textInput() ?>

    <?= $form->field($model, 'divisi_id')->textInput() ?>

    <?= $form->field($model, 'kualifikasi_id')->textInput() ?>

    <?= $form->field($model, 'kualifikasi_pemohon_id')->textInput() ?>

    <?= $form->field($model, 'tanggal_permohonan')->textInput() ?>

    <?= $form->field($model, 'nomor_sengketa')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'perihal_sengketa')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'tanggal_sengketa')->textInput() ?>

    <?= $form->field($model, 'unit_id')->textInput() ?>

    <?= $form->field($model, 'provinsi_id')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'kab_kota_id')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'tahun')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <?= $form->field($model, 'created_by')->textInput() ?>

    <?= $form->field($model, 'updated_at')->textInput() ?>

    <?= $form->field($model, 'updated_by')->textInput() ?>

    <?= $form->field($model, 'termohon_id')->textInput() ?>

    <?= $form->field($model, 'status_permohonan')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'status_register')->textInput() ?>

    <?= $form->field($model, 'alasan')->textInput(['maxlength' => true]) ?>

  
	<?php if (!Yii::$app->request->isAjax){ ?>
	  	<div class="form-group">
	        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
	    </div>
	<?php } ?>

    <?php ActiveForm::end(); ?>
    
</div>
