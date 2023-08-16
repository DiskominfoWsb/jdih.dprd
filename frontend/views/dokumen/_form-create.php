<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use kartik\widgets\FileInput;
use kartik\datecontrol\DateControl;
/* @var $this yii\web\View */
/* @var $model frontend\models\Dokumen */
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
    
          <div class="box box-primary box-solid">
            <div class="box-header with-border">
              <b>Form Tambah Data Dokumen</b>
            
            </div>

            <div class="box-body">
                <?= $form->field($model, 'tipe_dokumen')->textInput() ?>

<?= $form->field($model, 'judul')->textarea(['rows' => 6]) ?>

<?= $form->field($model, 'teu')->textarea(['rows' => 6]) ?>

<?= $form->field($model, 'nomor_peraturan')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'nomor_panggil')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'bentuk_peraturan')->textarea(['rows' => 6]) ?>

<?= $form->field($model, 'jenis_peraturan')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'singkatan_jenis')->textarea(['rows' => 6]) ?>

<?= $form->field($model, 'cetakan')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'tempat_terbit')->textarea(['rows' => 6]) ?>

<?= $form->field($model, 'penerbit')->textarea(['rows' => 6]) ?>

<?= $form->field($model, 'tanggal_penetapan')->textInput() ?>

<?= $form->field($model, 'deskripsi_fisik')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'sumber')->textarea(['rows' => 6]) ?>

<?= $form->field($model, 'isbn')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'bahasa')->textarea(['rows' => 6]) ?>

<?= $form->field($model, 'bidang_hukum')->textarea(['rows' => 6]) ?>

<?= $form->field($model, 'nomor_induk_buku')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'singkatan_bentuk')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'tipe_koleksi_nomor_eksemplar')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'pola_nomor_eksemplar')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'jumlah_eksemplar')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'kala_terbit')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'tahun_terbit')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'tanggal_dibacakan')->textInput() ?>

<?= $form->field($model, 'pernyataan_tanggung_jawab')->textarea(['rows' => 6]) ?>

<?= $form->field($model, 'edisi')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'gmd')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'judul_seri')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'klasifikasi')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'info_detil_spesifik')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'abstrak')->textarea(['rows' => 6]) ?>

<?= $form->field($model, 'gambar_sampul')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'label')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'sembunyikan_di_opac')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'promosikan_ke_beranda')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'status_terakhir')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'status')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'integrasi')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, '_created_by')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, '_updated_by')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'created_at')->textInput() ?>

<?= $form->field($model, 'updated_at')->textInput() ?>

<?= $form->field($model, 'inisiatif')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'pemrakarsa')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'tanggal_pengundangan')->textInput() ?>

<?= $form->field($model, 'daerah')->textInput() ?>

<?= $form->field($model, 'penandatanganan')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'lembaga_peradilan')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'pemohon')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'termohon')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'jenis_perkara')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'sub_klasifikasi')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'amar_status')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'berkekuatan_hukum_tetap')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'urusan_pemerintahan')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'catatan_status_peraturan')->textInput(['maxlength' => true]) ?>

<?= $form->field($model, 'hit_see')->textInput() ?>

<?= $form->field($model, 'hit_download')->textInput() ?>

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