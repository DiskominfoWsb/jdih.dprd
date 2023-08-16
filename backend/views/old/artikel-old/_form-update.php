<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use kartik\widgets\FileInput;
use kartik\datecontrol\DateControl;
/* @var $this yii\web\View */
/* @var $model backend\models\Peraturan */
/* @var $form yii\widgets\ActiveForm */
?>


    <?php $form = ActiveForm::begin([
                'layout' => 'horizontal',
                'options' => ['enctype' => 'multipart/form-data'],
                'fieldConfig' => [
                    'template' => "{label}\n{beginWrapper}\n{input}\n{hint}\n{error}\n{endWrapper}",
                    'horizontalCssClasses' => [
                        'label' => 'col-sm-2',
                        'offset' => 'col-sm-offset-4',
                        'wrapper' => 'col-sm-8',
                        //'error' => '',
                        'hint' => '',
                    ],
                ],
            ]); ?>
    <div class="section">
          <div class="box box-primary box-solid">
            <div class="box-header with-border">
              <b>Form Data Artikel</b>
            </div>

            <div class="box-body">

        <?= $form->field($model, 'jenis_peraturan')->dropDownList(
                \yii\helpers\ArrayHelper::map(\backend\models\JenisPeraturan::find()->where(['parent_id'=>2])->asArray()->all(), 'id', 'name'),
                [
                    'prompt'=>'-- Pilih Jenis Monografi --', 
                ])->label('Jenis Monografi'); 
        ?>
        <?= $form->field($model, 'judul')->textarea(['rows' => 6]) ?>
        
        <?= $form->field($model, 'teu')->textInput(['placeholder'=>'badan/orang/institusi','maxlength' => true])->label('Tajuk Entry Utama') ?>
        <?= $form->field($model, 'nomor_panggil')->textInput(['placeholder'=>'singkatan jenis peraturan','maxlength' => true]) ?>
        
        <?= $form->field($model, 'cetakan')->textInput(['maxlength' => true]) ?>
        
        <?= $form->field($model, 'tempat_terbit')->textInput(['maxlength' => true])->label('Tempat Penetapan') ?>

        <?= $form->field($model, 'penerbit')->textInput(['maxlength' => 4]) ?>
        
        <?= $form->field($model, 'tahun_terbit')->textInput(['maxlength' => 4]) ?>
       
        <?= $form->field($model, 'deskripsi_fisik')->textInput(['maxlength' => 4]) ?>
        
        <?= $form->field($model, 'isbn')->textInput(['maxlength' => 4])->label('ISBN') ?>
        
        <?= $form->field($model, 'nomor_induk_buku')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'sumber')->textarea(['placeholder'=>'contoh LN Nomor 21 Tahun 2017 ','rows' => 6]) ?>

        <?= $form->field($model, 'bahasa')->dropDownList(
                \yii\helpers\ArrayHelper::map(\backend\models\Bahasa::find()->asArray()->all(), 'name', 'name'),
                [
                    'prompt'=>'--Silahkan Pilih--', 
                ])->label('Bahasa'); 
        ?>
        
        <?= $form->field($model, 'bidang_hukum')->dropDownList(
                \yii\helpers\ArrayHelper::map(\backend\models\BidangHukum::find()->asArray()->all(), 'name', 'name'),
                [
                    'prompt'=>'--Silahkan Pilih--', 
                ])->label('Bidang Hukum'); 
        ?>    

        <?= $form->field($model, 'abstrak')->textarea(['placeholder'=>'lihat permenkumham nomor 8 tahun 2019  ','rows' => 6]) ?>
                <?php // $form->field($model, 'katalog')->textarea(['placeholder'=>'lihat permenkumham nomor 8 tahun 2019  ','rows' => 6]) ?>

        <?= $form->field($model, 'promosikan_ke_beranda')->dropDownList(
                [
                    'Ya' => 'Ya',
                    'Tidak' => 'Tidak',

                ],
                ['prompt'=>'--Silahkan Pilih--'],
            );
        ?>

        <?= $form->field($model, 'tipe_dokumen')->hiddenInput(['value'=>1])->label(false); ?>
 
    <div class="box-footer">
        <?= Html::submitButton('Simpan', ['class' => 'btn btn-success btn-flat']) ?>
        <?= \yii\helpers\Html::a( 'Batal', Yii::$app->request->referrer,['class' => 'btn btn-danger btn-flat']);?>
    </div>
</div>
    <?php ActiveForm::end(); ?>
</div>


<!-- 
    $form->field($model, 'direktorat_id')->dropDownList(
        \yii\helpers\ArrayHelper::map(\backend\models\Unit::find()->where(['parent_id'=>NULL])->asArray()->all(), 'id', 'nama_unit'),
        ['prompt'=>'-- Pilih Direktorat --',
                'onchange'=>'
                        $.get( "'.Url::toRoute('/peminjaman/subdit').'", { id: $(this).val() } )
                            .done(function( data ) {
                                $( "#'.Html::getInputId($model, 'subdit_id').'" ).html( data );
                            }
                        );
                    '  
    ])->label('Dari');
    

 
    $form->field($model, 'penanggungjawab')->widget(\kartik\widgets\Select2::classname(), [
    'data' => \yii\helpers\ArrayHelper::map(\backend\models\Penangggungjawab::find()->asArray()->all(), 'nama', 'nama'),
    'options' => ['placeholder' => 'Pilih Pejabat Penanggung Jawab'],
    'pluginOptions' => [
        'allowClear' => true
    ]]);*


    $form->field($model, 'file')->widget(FileInput::classname(), [
       'pluginOptions'=>['allowedFileExtensions'=>['pdf'],'showUpload' => false,],
    ]); 

    $form->field($model, 'tanggal_nodin')->widget(DateControl::classname(), [
    'type' => 'date',
    'ajaxConversion' => true,
    'autoWidget' => true,
    'widgetClass' => '',
    'displayFormat' => 'php:d-F-Y',
    'saveFormat' => 'php:Y-m-d',
    // 'saveTimezone' => 'Asia/Bangkok',
    // 'displayTimezone' => 'Asia/Bangkok',

    'widgetOptions' => [
        'pluginOptions' => [
            'autoclose' => true,
            'format' => 'php:d-F-Y'
        ]
    ]])->label('Tanggal Nota Dinas');*/
-->