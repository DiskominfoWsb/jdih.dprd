<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
use common\widgets\Alert;

/* @var $this yii\web\View */
/* @var $model frontend\models\Rancangan */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Rancangans', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>

    
<section class="job-bg page ad-profile-page" style="background-image: url('../frontend/assets/images/bg/home3.jpg')">
    <div class="container">
        <div class="breadcrumb-section">
            <ol class="breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li>Rancangan</li>
            </ol>                       
            <h2 class="title">Detail Rancangan</h2>
        </div><!-- breadcrumb-section -->

        <div class="resume-content">
            <div class="profile section clearfix">
                 <?= Alert::widget() ?>
                <div class="section">
                    <div class="icons">
                        <i class="fa fa-user-secret" aria-hidden="true"></i>
                    </div>  
                    <div class="declaration-info">
                        <h3>Detail</h3>
                    </div>
                    <?= DetailView::widget([
                        'model' => $model,
                        'template' => "<tr><th style='width: 35%;'>{label}</th><td>{value}.</td></tr>",
                        'attributes' => [                       
                            'tahapan_rancangan',
                            'nama_rancangan',
                            'jenisRancangan.nama_rancangan',
                            'tahun',
                            'program.nama_program',
                            'pemrakarsa.nama_pemrakarsa',   
                            'file_rancangan',
                            'file_naskah_akademik',             
                        ]]) 
                    ?>      
                        <br>                          
                    <div class="icons">
                        <i class="fa fa-hand-peace-o" aria-hidden="true"></i>
                    </div>   
                  
                    <div class="declaration-info">
                        <h3>Penjelasan</h3>
                    </div>                                 
                    <?= $model->keterangan;?>
                    <br><br>


                    <div class="icons">
                        <i class="fa fa-hand-peace-o" aria-hidden="true"></i>
                    </div>   
                    <div class="declaration-info">
                        <h3>Materi Muatan</h3>
                    </div>                                 
                    <?= $model->materi_muatan;?>

                </div><!-- career-objective -->   
            </div><!-- resume-content -->                       
        </div><!-- container -->
 
                <div class="resume-content">
                    <div class="profile section clearfix">
                        <div class="section">
                            <div class="icons">
                                <i class="fa fa-user-secret" aria-hidden="true"></i>
                            </div>  
                            <div class="declaration-info">
                                <h3>Komentar/Masukan Masyarakat</h3>
                            </div>
                            <?php if (!empty($komentar)): ?>
                                <?php foreach ($komentar as $data) : ?>  
                                    <div class="job-ad-item">
                                <div class="item-info">                             
                                    <div class="ad-info">
                                    <?= $data->nama.'<br>';?>
                                    <?= $data->komentar;?>
                                    </div></div></div> 
                                <?php endforeach; ?>
                            <?php endif; ?>                             
                        </div>
                    </div>
                </div>
</section><!-- ad-profile-page -->




<script type="text/javascript">       

function timeline() {
    var x = document.getElementById("timeline");
    if (x.style.display === "none") {
        x.style.display = "block";
        document.getElementById("button").value="Sembunyikan Proses";
    } else {
        x.style.display = "none";
        document.getElementById("button").value="Lihat Proses";
    }
}

</script>