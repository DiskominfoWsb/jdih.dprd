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
    ]]); 
?>

<?= $form->errorSummary([$model,$lampiran,$teu])?>

  <!-- Custom Tabs -->
<div class="nav-tabs-custom">
    <ul class="nav nav-tabs">
      <li class="active"><a href="#tab_1" data-toggle="tab">Data Utama</a></li>
      <li><a href="#tab_2" data-toggle="tab">Lampiran</a></li>
      <li><a href="#tab_3" data-toggle="tab">Tajuk Entry Utama</a></li>
    </ul>
    <div class="tab-content">
        <div class="tab-pane active" id="tab_1">
            <div class="box box-primary box-solid">
                <div class="box-header with-border">
                    <b>Form Data Utama Peraturan</b>
                </div>
            <div class="box-body">
                <?= $form->field($model, 'jenis_peraturan')->dropDownList(
                        \yii\helpers\ArrayHelper::map(\backend\models\JenisPeraturan::find()->where(['parent_id'=>4])->asArray()->all(), 'name', 'name'),
                        [
                            'id'=>'zipCode',
                            'prompt'=>'-- Pilih Jenis Putusan --', 
                        ])->label('Jenis Putusan'); 
                ?>
                
                <?= $form->field($model, 'judul')->textarea(['placeholder'=>'tulis lengkap judul putusan','rows' => 6])->label('Judul Putusan') ?>

                <?= $form->field($model, 'nomor_peraturan')->textInput(['placeholder'=>'tulis nomor peraturan','maxlength' => true])->label('Nomor Putusan') ?>

                <?= $form->field($model, 'pemohon')->textInput(['placeholder'=>'tulis nama pemohon','maxlength' => true])->label('Pemohon') ?>                

                <?= $form->field($model, 'termohon')->textInput(['placeholder'=>'tulis nama termohon','maxlength' => true])->label('Termohon') ?>                
                <?= $form->field($model, 'tahun_terbit')->textInput(['placeholder'=>'tulis tahun peraturan','maxlength' => 4])->label('Tahun') ?>
              
                <?= $form->field($model, 'tempat_terbit')->textInput(['placeholder'=>'tulis tempat penetapan','maxlength' => true])->label('Tempat Penetapan') ?>

                <?= $form->field($model, 'tanggal_penetapan')->widget(DateControl::classname(), 
                        [
                            'type' => 'date',
                            'ajaxConversion' => true,
                            'autoWidget' => true,
                            'widgetClass' => '',
                            'displayFormat' => 'php:d-F-Y',
                            'saveFormat' => 'php:Y-m-d',
                            'widgetOptions' => [
                             'options' => ['placeholder' => 'tulis tanggal penetapan '],
                                'pluginOptions' => [
                            
                                    'autoclose' => true,
                                    'format' => 'php:d-F-Y'
                                ]
                            ]
                        ])->label('Tanggal Penetapan'); 
                ?>        
                <?= $form->field($model, 'penandatanganan')->textInput(['placeholder'=>'tulis penandatangan peraturan','maxlength' => true]) ?>


                <?= $form->field($model, 'pemrakarsa')->textInput(['placeholder'=>'tulis pemrakarsa','maxlength' => true]) ?>

                <?= $form->field($model, 'sumber')->textarea(['placeholder'=>'contoh LN Nomor 21 Tahun 2017 ','rows' => 6]) ?>

                <?= $form->field($model, 'bahasa')->dropDownList(
                        \yii\helpers\ArrayHelper::map(\backend\models\Bahasa::find()->asArray()->all(), 'name', 'name'),
                        [
                            'prompt'=>'--Silahkan Pilih--', 
                        ])->label('Bahasa'); 
                ?>

                <?= $form->field($model, 'urusan_pemerintahan')->dropDownList(
                        \yii\helpers\ArrayHelper::map(\backend\models\UrusanPemerintahan::find()->asArray()->all(), 'name', 'name'),
                        [
                            'prompt'=>'---Silahkan Pilih--', 
                        ])->label('Urusan Pemerintahan'); 
                ?>         
                <?= $form->field($model, 'bidang_hukum')->dropDownList(
                        \yii\helpers\ArrayHelper::map(\backend\models\BidangHukum::find()->asArray()->all(), 'name', 'name'),
                        [
                            'prompt'=>'--Silahkan Pilih--', 
                        ])->label('Bidang Hukum'); 
                ?>    
               
                
              

                <?= $form->field($model, 'status')->dropDownList(
                        \yii\helpers\ArrayHelper::map(\backend\models\Status::find()->where(['status'=>['Berlaku','Tidak Berlaku']])->asArray()->all(), 'status', 'status'),
                        [
                            'prompt'=>'--Silahkan Pilih--', 
                        ])->label('Status Peraturan'); 
                ?>                  

                <?= $form->field($model, 'status_terakhir')->dropDownList(
                        \yii\helpers\ArrayHelper::map(\backend\models\Status::find()->where(['not',['status'=>['Berlaku','Tidak Berlaku']]])->asArray()->all(), 'status', 'status'),
                        [
                            'prompt'=>'--Silahkan Pilih--', 
                        ])->label('Keterangan Status'); 
                ?>  
            <?= $form->field($model, 'abstrak')->widget(FileInput::classname(), [
            'pluginOptions'=>['allowedFileExtensions'=>['pdf'],'showUpload' => false,'showPreview' => false,],
        ]);?>                                 
                <?= $form->field($model, 'promosikan_ke_beranda')->dropDownList(
                        [
                            'Ya' => 'Ya',
                            'Tidak' => 'Tidak',

                        ],
                        ['prompt'=>'--Silahkan Pilih--'],
                    );
                ?>

                <?= $form->field($model, 'singkatan_jenis')->hiddenInput()->label(false)?>  

                <?= $form->field($model, 'bentuk_peraturan')->hiddenInput()->label(false)?>  

                <?= $form->field($model, 'tipe_dokumen')->hiddenInput(['value'=>4])->label(false); ?>
                </div>
            </div>
        </div>
      <!-- /.tab-pane -->
      <div class="tab-pane" id="tab_2">
            <?= $form->field($lampiran, 'judul_lampiran')->textInput(['placeholder'=>'tulis penandatangan peraturan','maxlength' => true]) ?>

            <?= $form->field($lampiran, 'dokumen_lampiran')->widget(FileInput::classname(), [
            'pluginOptions'=>['allowedFileExtensions'=>['pdf'],'showUpload' => false,'showPreview' => false,],
        ]);?> 
      </div>
      <!-- /.tab-pane -->
      <div class="tab-pane" id="tab_3">
        <?= $form->field($teu, 'nama_pengarang',['inputOptions' => 

    ['autofocus' => 'autofocus']])->dropDownList(
                \yii\helpers\ArrayHelper::map(\backend\models\Pengarang::find()->asArray()->all(), 'id', 'name'),
                [
                    'prompt'=>'-- Silahkan Pilih --', 
                ])->label('Nama Pengarang'); 
        ?> 

        <?= $form->field($teu, 'tipe_pengarang')->dropDownList(
                \yii\helpers\ArrayHelper::map(\backend\models\TipePengarang::find()->asArray()->all(), 'id', 'name'),
                [
                    'prompt'=>'-- Silahkan Pilih --', 
                ])->label('Type Pengarang'); 
        ?>      

     <?= $form->field($teu, 'jenis_pengarang')->dropDownList(
                \yii\helpers\ArrayHelper::map(\backend\models\JenisPengarang::find()->asArray()->all(), 'id', 'name'),
                [
                    'prompt'=>'-- Silahkan Pilih --', 
                ])->label('Jenis Pengarang'); 
        ?>  
      </div>
      <!-- /.tab-pane -->
    </div>
    <!-- /.tab-content -->
  </div>
  <!-- nav-tabs-custom -->
           
    <div class="section">



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

    <div class="box-footer">
        <?= Html::submitButton('Simpan', ['class' => 'btn btn-success btn-flat']) ?>
        <?= \yii\helpers\Html::a( 'Batal', Yii::$app->request->referrer,['class' => 'btn btn-danger btn-flat']);?>
    </div>
</div>
    <?php ActiveForm::end(); ?>



<?php 
$script = <<< JS
$('#zipCode').change(function(){
    var zipId = $(this).val();
 
    $.get('get-peraturan',{ zipId : zipId },function(data){
        var data = $.parseJSON(data);
        $('#putusan-singkatan_jenis').attr('value',data.singkatan);
        $('#putusan-bentuk_peraturan').attr('value',data.name);
    });
});
JS;
$this->registerJs($script);
?>
   