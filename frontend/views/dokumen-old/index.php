<?php
use mdm\admin\components\Helper;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\DokumenSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Dokumen';
$this->params['breadcrumbs'][] = $this->title;
?>


    
    <div class="box-body table-responsive no-padding">
        <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
        <?= GridView::widget([

            'panel' => [
                'type' => GridView::TYPE_PRIMARY,
                'heading'=> '<h3 class="panel-title"><i class="glyphicon glyphicon-book"></i> Data '.'Dokumen'.'</h3>',
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

                'id',
                'tipe_dokumen',
                'judul:ntext',
                'teu:ntext',
                'nomor_peraturan',
                // 'nomor_panggil',
                // 'bentuk_peraturan:ntext',
                // 'jenis_peraturan',
                // 'singkatan_jenis:ntext',
                // 'cetakan',
                // 'tempat_terbit:ntext',
                // 'penerbit:ntext',
                // 'tanggal_penetapan',
                // 'deskripsi_fisik',
                // 'sumber:ntext',
                // 'isbn',
                // 'bahasa:ntext',
                // 'bidang_hukum:ntext',
                // 'nomor_induk_buku',
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
                // 'abstrak:ntext',
                // 'gambar_sampul',
                // 'label',
                // 'sembunyikan_di_opac',
                // 'promosikan_ke_beranda',
                // 'status_terakhir',
                // 'status',
                // 'integrasi',
                // '_created_by',
                // '_updated_by',
                // 'created_at',
                // 'updated_at',
                // 'inisiatif',
                // 'pemrakarsa',
                // 'tanggal_pengundangan',
                // 'daerah',
                // 'penandatanganan',
                // 'lembaga_peradilan',
                // 'pemohon',
                // 'termohon',
                // 'jenis_perkara',
                // 'sub_klasifikasi',
                // 'amar_status',
                // 'berkekuatan_hukum_tetap',
                // 'urusan_pemerintahan',
                // 'catatan_status_peraturan',
                // 'hit_see',
                // 'hit_download',


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
   
</div>
