<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
use kartik\widgets\FileInput;
use kartik\datecontrol\DateControl;
use yii\captcha\Captcha;
/* @var $this yii\web\View */
/* @var $model frontend\models\MasukanMasyarakat */
/* @var $form yii\widgets\ActiveForm */
?>

    <section class=" job-bg ad-details-page" style="background-image: url('../frontend/assets/images/bg/home3.jpg')">
        <div class="container">
            <div class="breadcrumb-section">
                <!-- breadcrumb -->
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li>Rancangan </li>
                </ol><!-- breadcrumb -->                        
                <h2 class="title">Masukan/Partisipasi Masyarakat</h2>
            </div><!-- banner -->

            <div class="category-info"> 
                <div class="row">
                    <div class="col-md-8">               
                        <div class="section job-list-item">
                       <?php $form = ActiveForm::begin([
                            'layout' => 'horizontal',
                            'options' => ['enctype' => 'multipart/form-data'],
                            'fieldConfig' => [
                                'template' => "{label}\n{beginWrapper}\n{input}\n{hint}\n{error}\n{endWrapper}",
                                'horizontalCssClasses' => [
                                    'label' => 'col-sm-4',
                                    'offset' => 'col-sm-offset-4',
                                    'wrapper' => 'col-sm-8',
                                    //'error' => '',
                                    'hint' => '',
                                ],
                            ],
                        ]); ?>
    <?php // $form->errorSummary($model); ?>
                        <?= $form->field($model, 'nama')->textInput(['maxlength' => true])->label('Nama Lengkap',['class'=>'col-sm-4 label-div']) ?>

                        <?= $form->field($model, 'email')->textInput(['maxlength' => true])->label('email',['class'=>'col-sm-4 label-div']) ?>

                        <?= $form->field($model, 'pekerjaan')->textInput(['maxlength' => true])->label('Pekerjaan',['class'=>'col-sm-4 label-div']) ?>

                        <?= $form->field($model, 'instansi')->textInput(['maxlength' => true])->label('Instansi',['class'=>'col-sm-4 label-div']) ?>

                        <?= $form->field($model, 'masukan_mewakili')->radioList(array('Pribadi'=>'Pribadi', 'Instansi'=>'Instansi'))->label('Masukan mewakili',['class'=>'col-sm-4 label-div']) ?>

                        <?= $form->field($model, 'komentar')->textarea(['rows' => 6])->label('Komentar',['class'=>'col-sm-4 label-div']) ?>
                        
                        <?= $form->field($model, 'file_pendukung')->fileInput()->label('Dokumen Pendukung',['class'=>'col-sm-4 label-div']) ?>


                        


                        <?=
                        
                        $form->field($model, 'verifyCode')->widget(Captcha::className(), [
                            'template' => '<div class="row"><div class="col-lg-3">{image}</div><div class="col-lg-6">{input}</div></div>',
                        ])->label('Verifikasi Kode',['class'=>'col-sm-4 label-div']); 
                        ?>  

                        <?= Html::submitButton('<i class="fa fa-save"></i> Kirim', 
                            [
                                'class' => 'btn btn-success btn-flat',
                                'data' => [
                                            'confirm' => 'Yakin data sudah benar.', 
                                            'method' => 'post', 
                                            'data-pjax' => false],
                            ]) ?>
                                   
        
                        <?php ActiveForm::end(); ?>
                    </div>
                </div>
                

                    <!-- quick-rules -->    
                    <div class="col-md-4">
                        <div class="section quick-rules">
                            <h4>Quick rules</h4>
                            <p class="lead">Posting an ad on <a href="#">jobs.com</a> is free! However, all ads must follow our rules:</p>

                            <ul>
                                <li>Make sure you post in the correct category.</li>
                                <li>Do not post the same ad more than once or repost an ad within 48 hours.</li>
                                <li>Do not upload pictures with watermarks.</li>
                                <li>Do not post ads containing multiple items unless it's a package deal.</li>
                                <li>Do not put your email or phone numbers in the title or description.</li>
                                <li>Make sure you post in the correct category.</li>
                                <li>Do not post the same ad more than once or repost an ad within 48 hours.</li>
                                <li>Do not upload pictures with watermarks.</li>
                                <li>Do not post ads containing multiple items unless it's a package deal.</li>
                            </ul>
                        </div>
                    </div><!-- quick-rules -->  
                </div><!-- photos-ad -->                
            </div>  
        </div><!-- container -->
    </section><!-- main -->

    


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