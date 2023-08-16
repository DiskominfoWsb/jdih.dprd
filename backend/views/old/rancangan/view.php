<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model frontend\models\Rancangan */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Rancangans', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>


<div class="box-body table-responsive no-padding">
    <div class="box box-primary box-solid">
        <div class="box-header with-border">
            
            <b>Detail Data Rancangan</b>
        </div>
          
        <div class="box-body">

            <div class="box-header">
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
                <?= DetailView::widget([
                    'model' => $model,
                    'attributes' => [
                        'id',
                'tahapan_rancangan',
                'nama_rancangan',
                'jenis_rancangan',
                'tahun',
                'program',
                'pemrakarsa',
                'status',
                'is_publish',
                'materi_muatan:ntext',
                'keterangan:ntext',
                'file_rancangan',
                'file_naskah_akademik',
                'tanggal_awal_publish',
                'tanggal_akhir_publish',
                'created_at:datetime',
                'created_by',
                'updated_at:datetime',
                'updated_by',
                'peraturan_id',
                    ],
                ]) ?>
        </div>
    </div>
</div>


