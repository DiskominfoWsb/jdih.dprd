<?php
use mdm\admin\components\Helper;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use kartik\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel backend\models\PeraturanSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Putusan';
$this->params['breadcrumbs'][] = $this->title;
?>


    <?php Pjax::begin(['enablePushState' => false]); ?>
    
    <div class="box-body table-responsive no-padding">
        <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
        <?= GridView::widget([

            'panel' => [
                'type' => GridView::TYPE_PRIMARY,
                'heading'=> '<h3 class="panel-title"><i class="glyphicon glyphicon-book"></i> Data Putusan</h3>',
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

                [
                    'attribute' => 'jenis_peraturan',  
                    'label'=>'Jenis Putusan',   
                    'headerOptions' => ['style' => 'width:200px'],
                    'contentOptions' => ['style' => 'width:200; white-space: normal;'],
                    'filterType' => GridView::FILTER_SELECT2,    
                    'filterWidgetOptions' => [
                        'options' => ['prompt' => 'Pilih Jenis'],
                        'pluginOptions' => [
                            'allowClear' => true,
                  //  'width'=>'resolve',
                        ],
                    ],                     
                    'filter' => ArrayHelper::map(\backend\models\JenisPeraturan::find()->where(['parent_id'=>4])->all(), 'name', 'name'),
                    'value' => 'jenis_peraturan',
                ],

                [
                    'label'=>'Tahun',
                    'attribute'=>'tahun_terbit',
                ],    

                [
                    'attribute'=>'judul',
                    'label' =>'Judul Putusan',
                    'contentOptions' => ['style' => 'width:auto; white-space: normal;'],
                    'content'=>function($data)
                    {
                        return Html::a(strtoupper($data->judul),['view','id'=>$data->id]);
                    }
                ],    

                [
                    'label'=>'Pemohon',
                    'attribute'=>'pemohon',
                ], 
                [
                    'label'=>'Termohon',
                    'attribute'=>'termohon',
                ],  

                [
                    'attribute' => 'status',  
                    'label'=>'Status Peraturan',   
                    'headerOptions' => ['style' => 'width:200px'],
                    'contentOptions' => ['style' => 'width:200; white-space: normal;'],
                    'filterType' => GridView::FILTER_SELECT2,    
                    'filterWidgetOptions' => [
                        'options' => ['prompt' => 'Pilih Status'],
                        'pluginOptions' => [
                            'allowClear' => true,
                  //  'width'=>'resolve',
                        ],
                    ],                     
                    'filter' => ArrayHelper::map(\backend\models\Status::find()->where(['id'=>([9,10])])->asArray()->all(),'status','status'),
                    'value' => 'status',
                ], 
                [
                    'attribute' => 'status_terakhir',  
                    'label'=>'Keterangan Status ',   
                    'headerOptions' => ['style' => 'width:200px'],
                    'contentOptions' => ['style' => 'width:200; white-space: normal;'],
                    'filterType' => GridView::FILTER_SELECT2,    
                    'filterWidgetOptions' => [
                        'options' => ['prompt' => 'Pilih Jenis'],
                        'pluginOptions' => [
                            'allowClear' => true,
                  //  'width'=>'resolve',
                        ],
                    ],                     
                    'filter' => ArrayHelper::map(\backend\models\Status::find()->where(['id'=>([2,4,6,7,8])])->asArray()->all(),'status','status'),
                    'value' => 'status_terakhir',
                ],                                                                 
                //'id',
                //'tipe_dokumen:ntext',
                //'jenis_peraturan',
                //'nomor_peraturan',
             //   'judul',
                //'tanggal_penetapan',
                // 'teu:ntext',
                // 'nomor_panggil',
                // 'penerbit:ntext',
                // 'tempat_terbit:ntext',
                // 'tahun_terbit',
                //'nomor_peraturan',
                // 'bentuk_peraturan:ntext',
                // 'singkatan_jenis:ntext',
                // 'cetakan',
                // 'tanggal_penetapan',
                // 'deskripsi_fisik',
                // 'sumber:ntext',
                // 'isbn',
                // 'bahasa:ntext',
                // 'bidang_hukum:ntext',
                // 'nomor_induk_buku',
                // 'jenis_peraturan',
                // 'singkatan_bentuk',
                // 'tipe_koleksi_nomor_eksemplar',
                // 'pola_nomor_eksemplar',
                // 'jumlah_eksemplar',
                // 'kala_terbit',
                // 'tahun_terbit',
                // 'tanggal_dibacakan',
                // 'pernyataan_tanggung_jawab:ntext',
                // 'edisi',
                // 'gmd',
                // 'judul_seri',
                // 'klasifikasi',
                // 'info_detil_spesifik',
                // 'abstrak',
                // 'gambar_sampul',
                // 'label',
                // 'sembunyikan_di_opac',
                // 'promosikan_ke_beranda',
                // 'status_terakhir',
                // 'status',
                // '_created_by',
                // '_updated_by',
                // '_created_time',
                // '_updated_time',


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
