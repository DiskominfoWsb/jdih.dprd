<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model frontend\models\Dokumen */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Dokumens', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>


<div class="box-body table-responsive no-padding">
    <div class="box box-primary box-solid">
        <div class="box-header with-border">
            
            <b>Detail Data Dokumen</b>
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
                'tipe_dokumen',
                'judul:ntext',
                'teu:ntext',
                'nomor_peraturan',
                'nomor_panggil',
                'bentuk_peraturan:ntext',
                'jenis_peraturan',
                'singkatan_jenis:ntext',
                'cetakan',
                'tempat_terbit:ntext',
                'penerbit:ntext',
                'tanggal_penetapan',
                'deskripsi_fisik',
                'sumber:ntext',
                'isbn',
                'bahasa:ntext',
                'bidang_hukum:ntext',
                'nomor_induk_buku',
                'singkatan_bentuk',
                'tipe_koleksi_nomor_eksemplar',
                'pola_nomor_eksemplar',
                'jumlah_eksemplar',
                'kala_terbit',
                'tahun_terbit',
                'tanggal_dibacakan',
                'pernyataan_tanggung_jawab:ntext',
                'edisi',
                'gmd',
                'judul_seri',
                'klasifikasi',
                'info_detil_spesifik',
                'abstrak:ntext',
                'gambar_sampul',
                'label',
                'sembunyikan_di_opac',
                'promosikan_ke_beranda',
                'status_terakhir',
                'status',
                'integrasi',
                '_created_by',
                '_updated_by',
                'created_at:datetime',
                'updated_at:datetime',
                'inisiatif',
                'pemrakarsa',
                'tanggal_pengundangan',
                'daerah',
                'penandatanganan',
                'lembaga_peradilan',
                'pemohon',
                'termohon',
                'jenis_perkara',
                'sub_klasifikasi',
                'amar_status',
                'berkekuatan_hukum_tetap',
                'urusan_pemerintahan',
                'catatan_status_peraturan',
                'hit_see',
                'hit_download',
                    ],
                ]) ?>
        </div>
    </div>
</div>


