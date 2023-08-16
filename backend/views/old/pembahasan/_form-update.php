<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use kartik\widgets\FileInput;
use kartik\datecontrol\DateControl;
/* @var $this yii\web\View */
/* @var $model backend\models\Rancangan */
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
    <?= $form->errorSummary($model); ?>
          <div class="box box-primary box-solid">
            <div class="box-header with-border">
              <b>Form Ubah Data</b>
            
            </div>

            <div class="box-body">

        
                
                <?= $form->field($model, 'program_id')->dropDownList(
                        \yii\helpers\ArrayHelper::map(\backend\models\Program::find()->asArray()->all(), 'id', 'nama_program'),
                        ['prompt'=>'-- Pilih Program Penyusunan --',

                    ])->label('Program Penyusunan')
                ?>

                <?= $form->field($model, 'tahun')->textInput(['minlength' => 4, 'maxlength' => 4])->input('tahun', ['placeholder' =>'tulis tahun'])->label('Tahun') ?>                

                <?=
                    $form->field($model, 'jenis_rancangan_id')->dropDownList(
                        \yii\helpers\ArrayHelper::map(\backend\models\JenisRancangan::find()->asArray()->all(), 'id', 'nama_rancangan'),
                        ['prompt'=>'-- Pilih Jenis Rancangan --',

                    ])->label('Jenis Rancangan')
                ?>

                <?= $form->field($model, 'nama_rancangan')->textarea(['rows' => 6, 'placeholder' =>'tulis judul rancangan peraturan'])->label('Nama Rancangan')?>
                <?=
                    $form->field($model, 'pemrakarsa_id')->dropDownList(
                        \yii\helpers\ArrayHelper::map(\backend\models\Pemrakarsa::find()->asArray()->all(), 'id', 'nama_pemrakarsa'),
                        ['prompt'=>'-- Pilih Pemrakarsa --',

                    ])->label('Pemrakarsa')
                ?>

                <?php
                   // $form->field($model, 'status_rancangan_id')->dropDownList(
                    //     \yii\helpers\ArrayHelper::map(\backend\models\Status::find()->where(['kategori_id'=>1])->asArray()->all(), 'nama_status', 'nama_status'),
                    //     ['prompt'=>'-- Pilih Status Rancangan --',

                    // ])->label('Status Rancangan')
                ?>

                <?php // $form->field($model, 'is_publish')->dropDownList([ '1' => 'Publish', '2' => 'Jangan Publish', ], ['prompt' => 'Pilih Status'])->label('Status') ?>

                <?= $form->field($model, 'materi_muatan')->textarea(['rows' => 6, 'placeholder' =>'tulis materi muatan'])->label('materi Muatan')?>

                <?= $form->field($model, 'keterangan')->textarea(['rows' => 6, 'placeholder' =>'tulis uraian'])->label('Uraian Rancangan')?>

                <?=
                    $form->field($model, 'file_rancangan')->widget(FileInput::classname(), [
                       'pluginOptions'=>[
                            'allowedFileExtensions'=>['pdf'],
                            'showUpload' => false,
                            'showPreview' => false,
                        ],
                    ])->label('Draft Rancangan Peraturan')  
                ?>

                <?=
                    $form->field($model, 'file_naskah_akademik')->widget(FileInput::classname(), [
                       'pluginOptions'=>[
                            'allowedFileExtensions'=>['pdf'],
                            'showUpload' => false,
                            'showPreview' => false,
                        ],
                    ])->label('Draft Naskah Akademik')  
                ?>

            </div>
            <div class="box-footer">
                <?= Html::submitButton('<i class="fa fa-save"></i> Simpan', 
                    [
                        'class' => 'btn btn-success btn-flat',
                        'data' => [
                                    'confirm' => 'Yakin data sudah benar.', 
                                    'method' => 'post', 
                                    'data-pjax' => false],
                    ]) ?>
                <?= \yii\helpers\Html::a('<i class="fa fa-remove"></i> Batal', Yii::$app->request->referrer,['class' => 'btn btn-danger btn-flat'])?>                
            </div>
        </div>
                    <?= $form->field($model, 'tahapan_rancangan')->hiddenInput(['value'=>'Perencanaan'])->label(false); ?>
                <?= $form->field($model, 'status_rancangan_id')->hiddenInput(['value'=>1])->label(false); ?>   
                <?= $form->field($model, 'tanggal_awal_publish')->hiddenInput(['value'=>date('Y-m-d')])->label(false); ?>  
                <?= $form->field($model, 'tanggal_akhir_publish')->hiddenInput(['value'=>date('Y-m-d', strtotime('+1 month', strtotime(date('Y-m-d'))))])->label(false); ?>                  

    <?php ActiveForm::end(); ?>


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