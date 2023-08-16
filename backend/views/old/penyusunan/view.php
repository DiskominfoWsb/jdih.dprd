<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\widgets\ListView;
/* @var $this yii\web\View */
/* @var $model backend\models\Rancangan */

$this->title = $model->nama_rancangan;
$this->params['breadcrumbs'][] = ['label' => 'Rancangans', 'url' => ['index']];
//$this->params['breadcrumbs'][] = $this->title;
?>

<div class="row">
    <div class="col-md-12">
        <?= Html::a('<i class="fa fa-mail-reply"></i> Kembali', ['index'], ['class' => 'btn btn-success btn-flat']) ?>
        <?= Html::a('<i class="fa fa-pencil"></i> Ubah', ['update', 'id' => $model->id], ['class' => 'btn btn-primary btn-flat']) ?>
        <?= Html::a('<i class="fa fa-trash"></i> Hapus', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger btn-flat',
            'data' => [
                'confirm' => 'Yakin menghapus data ini?',
                'method' => 'post',
            ],
        ]) ?>
        <p></p>
    </div>
    <div class="col-md-9">       
        <div class="box-body table-responsive no-padding">
            <div class="box box-primary box-solid">
                <div class="box-header with-border">            
                    <b>Detail Data Rancangan</b>
                </div>          
                <div class="box-body">
                        <?= DetailView::widget([
                            'model' => $model,
                            'attributes' => [
                                'nama_rancangan',
                                'jenisRancangan.nama_rancangan',
                                'tahun',
                                'program.nama_program',
                                'pemrakarsa.nama_pemrakarsa',
                                'statusRancangan.nama_status',
                                'materi_muatan:ntext',
                                'keterangan:ntext',
                            ],
                        ]) ?>
                </div>
            </div>
        </div>

        <?php if ($partisipasi->totalCount > 0): ?>                       
            <div class="box-body table-responsive no-padding">
                <div class="box box-warning box-solid">
                    <div class="box-header with-border">            
                        <b>Partisipasi Masyarakat</b>
                    </div>          
                    <div class="box-body">
                        <?= ListView::widget([
                            'dataProvider' => $partisipasi,
                            'summary' => '',  
                            'layout' => "{summary}\n{items}\n{pager}", 
                            'emptyText' => '<h4>Data yang dicari tidak ditemukan......</h4>',
                            'options' => [
                                'tag' => 'div',
                                'class' => 'section job-list-item',
                                'id' => 'list-wrapper',
                            ],
                            'itemOptions' => ['class' => 'item'],
                            'itemView' => '_item',
                            'itemOptions' => [
                                'tag' => false,
                            ],
                            ]) 
                        ?>
                    </div>
                </div>
            </div>      
        <?php endif;?>
    </div>

    <div class="col-md-3">
        <div class="box-body table-responsive no-padding">
            <div class="box box-danger box-solid">
                <div class="box-header with-border">            
                    <b>Dokumen</b>
                </div>          
                <div class="box-body">
                    <div class="box-header">
                        <?= DetailView::widget([
                            'model' => $model,
                            'attributes' => [                            
                            [
                                'attribute'=>'file_rancangan',
                                'label' =>'Draft Rancangan Peraturan',
                                'contentOptions' => ['style' => 'width: 50px;', 'class' => 'text-center'],
                                'format'=>'raw',
                                'value' => function($data)
                                    {
                                       if (!empty($data->file_rancangan))
                                       {
                                            return Html::a(Html::img(yii\helpers\Url::base(true).'/img/pdf.png', ['alt'=>'myImage','width'=>'25','height'=>'auto']), ['perencanaan/download', 'id' => $data->file_rancangan],['data-pjax'=>'0']);
                                        }
                                    }
                            ],
                            [
                                'attribute'=>'file_naskah_akademik',
                                'label' =>'Draft Naskah Akademik',
                                'contentOptions' => ['style' => 'width: 50px;', 'class' => 'text-center'],
                                'format'=>'raw',
                                'value' => function($data)
                                    {
                                       if (!empty($data->file_naskah_akademik))
                                       {
                                            return Html::a(Html::img(yii\helpers\Url::base(true).'/img/pdf.png', ['alt'=>'myImage','width'=>'25','height'=>'auto']), ['perencanaan/download', 'id' => $data->file_naskah_akademik],['data-pjax'=>'0']);
                                        }
                                    }
                            ],
                            ],
                        ]) ?>
                    </div>
                </div>
            </div>

            <div class="box box-success box-solid">
                <div class="box-header with-border">            
                    <b>Info Publikasi</b>
                </div>          
                <div class="box-body">
                    <div class="box-header">
                        <?= DetailView::widget([
                            'model' => $model,
                            'attributes' => [

                            [
                                'label' =>'Tanggal Publish',
                                'value' =>function($data){
                                    return $data->getTanggal($data->tanggal_awal_publish);
                                },
                            ],
                            [
                                'label' =>'Tanggal Akhir Partisipasi',
                                'value' =>function($data){
                                    return $data->getTanggal($data->tanggal_akhir_publish);
                                },
                            ],                            
                            [
                                'label' =>'Total Komentar',
                                'value' =>function($data){
                                    return $data->getTotal($data->id);
                                },
                            ],
                            [
                                'label' =>'Share Publik',
                                'value' =>function($data){
                                    return $data->getShare($data->id);
                                },
                            ],
                            ],
                        ]) ?>
                    </div>
                </div>
            </div>            
        </div>
    </div>
</div>
