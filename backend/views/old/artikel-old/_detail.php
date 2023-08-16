<?php
use yii\helpers\Html;
use yii\widgets\DetailView;
?>

<div class="box-header">
    <?= Html::a('<i class="fa fa-mail-reply"></i> Kembali', ['index'], ['class' => 'btn btn-success btn-flat']) ?>
    <?= Html::a('<i class="fa fa-pencil"></i> Ubah', ['update', 'id' => $model->id], ['class' => 'btn btn-primary btn-flat']) ?>
    <p></p>
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [                  
        'jenis_peraturan',
        'judul',
        'teu',
        'nomor_panggil',
        'cetakan',
        'tempat_terbit',
        'penerbit',
        'tahun_terbit',
        'deskripsi_fisik',
        'isbn',
        'nomor_induk_buku',
        'sumber',
        'bahasa',
        'bidang_hukum',

        ],
    ]) ?>      
</div> 

       
 
