<?php

use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Permohonan */
?>
<div class="permohonan-view">
 
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'nomor',
            'jenis_id',
            'divisi_id',
            'kualifikasi_id',
            'kualifikasi_pemohon_id',
            'tanggal_permohonan',
            'nomor_sengketa',
            'perihal_sengketa:ntext',
            'tanggal_sengketa',
            'unit_id',
            'provinsi_id',
            'kab_kota_id',
            'tahun',
            'created_at',
            'created_by',
            'updated_at',
            'updated_by',
            'termohon_id',
            'status_permohonan',
            'status_register',
            'alasan',
        ],
    ]) ?>

</div>
