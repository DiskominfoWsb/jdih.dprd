<?php
use mdm\admin\components\Helper;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use kartik\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\PenyusunanSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Data Perencanaan Rancangan Peraturan';
$this->params['breadcrumbs'][] = $this->title;
?>


    <?php Pjax::begin(['enablePushState' => false]); ?>
    
    <div class="box-body table-responsive no-padding">
        <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
        <?= GridView::widget([

            'panel' => [
                'type' => GridView::TYPE_PRIMARY,
                'heading'=> '<h3 class="panel-title"><i class="glyphicon glyphicon-book"></i> Tabel Data Rancangan</h3>',
            ],
            'toolbar' =>  [
                [   'content' => Html::a('<i class="fa fa-plus-circle"></i> Tambah Data', ['create'], ['class' => 'btn btn-success'])
                ],
                '{export}',
                '{toggleData}'
            ],
            'dataProvider' => $dataProvider,
            'summary' => 'Ditampilkan {begin} - {end} dari {totalCount} Data',    
            'filterModel' => $searchModel,
            'layout' => "{items}\n{summary}\n{pager}",
            'columns' => [

                [
                    'class' => 'yii\grid\SerialColumn',
                    'contentOptions' => ['style' => 'width: 50px;', 'class' => 'text-center'],
                    'header'=>'No',
                    'headerOptions' => ['class' => 'text-center'],
                ],                 

                'nama_rancangan',
                [
                    'attribute' => 'program_id',  
                    'label'=>'Program Penyusunan',   
                    'headerOptions' => ['style' => 'width:200px'],
                    'contentOptions' => ['style' => 'width:200px; white-space: normal;'],
                    'filterType' => GridView::FILTER_SELECT2,    
                    'filterWidgetOptions' => [
                        'options' => ['prompt' => 'Pilih Jenis'],
                        'pluginOptions' => [
                            'allowClear' => true,
                        ],
                    ],                     
                    'filter' => ArrayHelper::map(\backend\models\Program::find()->all(), 'id', 'nama_program'),
                    'value' => 'program.nama_program',
                ],              

                [
                    'attribute' => 'jenis_rancangan_id',  
                    'label'=>'Jenis Rancangan',   
                    'headerOptions' => ['style' => 'width:200px'],
                    'contentOptions' => ['style' => 'width:200px; white-space: normal;'],
                    'filterType' => GridView::FILTER_SELECT2,    
                    'filterWidgetOptions' => [
                        'options' => ['prompt' => 'Pilih Jenis'],
                        'pluginOptions' => [
                            'allowClear' => true,
                        ],
                    ],                     
                    'filter' => ArrayHelper::map(\backend\models\JenisRancangan::find()->all(), 'id', 'nama_rancangan'),
                    'value' => 'jenisRancangan.nama_rancangan',
                ],                  
                
                [
                    'label'=>'Tahun',
                    'headerOptions' => ['style' => 'width:70px'],
                    //'contentOptions' => ['style' => 'width:50px; white-space: normal;'],
                    'attribute'=>'tahun',

                ],
                [
                    'attribute' => 'pemrakarsa_id',  
                    'label'=>'Pemrakarsa',   
                    'headerOptions' => ['style' => 'width:200px'],
                    'contentOptions' => ['style' => 'width:200px; white-space: normal;'],
                    'filterType' => GridView::FILTER_SELECT2,    
                    'filterWidgetOptions' => [
                        'options' => ['prompt' => 'Pilih Jenis'],
                        'pluginOptions' => [
                            'allowClear' => true,
                        ],
                    ],                     
                    'filter' => ArrayHelper::map(\backend\models\Pemrakarsa::find()->all(), 'id', 'nama_pemrakarsa'),
                    'value' => 'pemrakarsa.nama_pemrakarsa',
                ],                 
                // 'program_id',
                // 'pemrakarsa_id',
                // 'status_rancangan_id',
                // 'is_publish',
                // 'materi_muatan:ntext',
                // 'keterangan:ntext',
                // 'file_rancangan',
                // 'file_naskah_akademik',
                // 'tanggal_awal_publish',
                // 'tanggal_akhir_publish',
                // 'created_at',
                // 'created_by',
                // 'updated_at',
                // 'updated_by',
                // 'peraturan_id',


                [
                    'class' => 'yii\grid\ActionColumn',
                    'headerOptions' => ['style' => 'width: 150px;', 'class' => 'text-center'],
                    'contentOptions' => ['style' => 'width: 150px;', 'class' => 'text-center'],
                    'header' =>'Aksi',
                    'template' => Helper::filterActionColumn('{view}&nbsp;&nbsp;{update}&nbsp;&nbsp;{delete}'),
                    
                    'buttons' => [
                        'view' => function($url, $model) {
                                    return 
                                    Html::a('<span class="btn btn-sm btn-success"><b class="fa fa-search-plus"></b></span>', ['view', 'id' => $model->id], ['title' => 'Lihat']);
                                },
                        'update' => function($id, $model) {
                                    return Html::a('<span class="btn btn-sm btn-warning"><b class="fa fa-pencil"></b></span>', ['update', 'id' => $model->id], ['title' => 'Ubah']);
                                },
                        'delete' => function($url, $model) {
                                    return Html::a('<span class="btn btn-sm btn-danger"><b class="fa fa-trash"></b></span>', ['delete', 'id' => $model->id], ['title' => 'Hapus', 'class' => '', 'data' => ['confirm' => 'Yakin akan menghapus data ini.', 'method' => 'post', 'data-pjax' => false],]);
                                },
                    ],
                ],                
            ],
        ]); ?>
   
    <?php Pjax::end(); ?>
</div>
