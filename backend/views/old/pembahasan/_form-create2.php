<?php
use kartik\form\ActiveForm;
use kartik\builder\Form;
use kartik\builder\FormGrid;

 $program= \yii\helpers\ArrayHelper::map(\backend\models\Status::find()->where(['kategori_id'=>6])->orderBy([ 'urutan' => SORT_ASC])->asArray()->all(), 'id', 'nama_status');
 $rancangan = \yii\helpers\ArrayHelper::map(\backend\models\Status::find()->where(['kategori_id'=>8])->asArray()->all(), 'id', 'nama_status');
?>

          <div class="box box-primary box-solid">
            <div class="box-header with-border">
              <b>Form Tambah Data Rancangan</b>
            
            </div>

            <div class="box-body">
<?php
$form = ActiveForm::begin(['type'=>ActiveForm::TYPE_HORIZONTAL]);
echo FormGrid::widget([
    'model'=>$model,
    'form'=>$form,
    'autoGenerateColumns'=>true,
    'rows'=>[
        [
            'attributes'=>[       // 2 column layout
                //'program'=>['type'=>Form::INPUT_TEXT, 'options'=>['placeholder'=>'Enter username...']],
                'program'=>['type'=>Form::INPUT_DROPDOWN_LIST, 'items'=> $program],
                'tahun'=>['type'=>Form::INPUT_TEXT, 'options'=>['placeholder'=>'masukkan tahun...']],
                 
                     'jenis_rancangan'=>['type'=>Form::INPUT_DROPDOWN_LIST, 'items'=> $rancangan,['placeholder'=>'Enter notes...']],
            ]
        ],
        [
            'attributes'=>[       // 1 column layout
                'jenis_rancangan'=>['type'=>Form::INPUT_TEXTAREA, 'options'=>['placeholder'=>'Enter notes...']],
            ],
        ],
        // [
        //     'contentBefore'=>'<legend class="text-info"><small>Profile Info</small></legend>',
        //     'columns'=>3,
        //     'autoGenerateColumns'=>false, // override columns setting
        //     'attributes'=>[       // colspan example with nested attributes
        //         'address_detail' => [ 
        //             'label'=>'Address',
        //             'labelOptions' => ['class' => 'is-required'], // displays the required asterisk
        //             'columns'=>6,
        //             'attributes'=>[
        //                 'address'=>[
        //                     'type'=>Form::INPUT_TEXT, 
        //                     'options'=>['placeholder'=>'Enter address...'],
        //                     'columnOptions'=>['colspan'=>3],
        //                 ],
        //                 'zip_code'=>[
        //                     'type'=>Form::INPUT_TEXT, 
        //                     'options'=>['placeholder'=>'Zip...'],
        //                     'columnOptions'=>['colspan'=>2],
        //                 ],
        //                 'phone'=>[
        //                     'type'=>Form::INPUT_TEXT, 
        //                     'options'=>['placeholder'=>'Phone...']
        //                 ],
        //             ]
        //         ]
        //     ],
        // ],
        // [
        //     'attributes'=>[
        //         'birthday'=>['type'=>Form::INPUT_WIDGET, 'widgetClass'=>'\kartik\widgets\DatePicker', 'hint'=>'Enter birthday (mm/dd/yyyy)'],
        //         'state_1'=>['type'=>Form::INPUT_DROPDOWN_LIST, 'items'=>$model->typeahead_data, 'hint'=>'Type and select state'],
        //         'color'=>['type'=>Form::INPUT_WIDGET, 'widgetClass'=>'\kartik\color\ColorInput', 'hint'=>'Choose your color'],
        //     ]
        // ],
        // [
        //     'attributes'=>[       // 3 column layout
        //         'rememberMe'=>[   // radio list
        //             'type'=>Form::INPUT_RADIO_LIST, 
        //             'items'=>[true=>'Yes', false=>'No'], 
        //             'options'=>['inline'=>true]
        //         ],
        //         'brightness'=>[   // uses widget class with widget options
        //             'type'=>Form::INPUT_WIDGET, 
        //             'label'=>Html::label('Brightness (%)'), 
        //             'widgetClass'=>'\kartik\range\RangeInput',
        //             'options'=>['width'=>'80%']
        //         ],
        //         'actions'=>[    // embed raw HTML content
        //             'type'=>Form::INPUT_RAW, 
        //             'value'=>  '<div style="text-align: right; margin-top: 20px">' . 
        //                 Html::resetButton('Reset', ['class'=>'btn btn-secondary']) . ' ' .
        //                 Html::submitButton('Submit', ['class'=>'btn btn-primary']) . 
        //                 '</div>'
        //         ],
        //     ],
        // ],
    ],
    
]);
ActiveForm::end();
?>
</div>
</div>
