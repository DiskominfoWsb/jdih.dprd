<?php
use yii\helpers\Html;
?>                      


<div class="job-ad-item">
    <div class="item-info">                             
        <div class="ad-info">
            <span><?= Html::a($model->nama_rancangan, ['rancangan/view', 'id' => $model->id],['class'=>'title']);?></span>
            <div class="ad-meta">
                <ul>
                    <li><a href="#"><i class="fa fa-money" aria-hidden="true"></i><?=$model->jenisRancangan->nama_rancangan;?></a></li>
                    <li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i><?=$model->program->nama_program;?></a></li>
                    <li><a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i><?=$model->tahun;?></a></li>
                    <li><a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i>Berakhir pada : <?=$model->tanggal_akhir_publish;?></a></li>
                  
                </ul>
            </div><!-- ad-meta -->                                  
        </div><!-- ad-info -->
    <div class="ad-info">
        <?= Html::a('Lihat Detail', ['rancangan/view', 'id' => $model->id],['class'=>'btn btn-primary']);?>
        <?php if (strtotime($model->tanggal_akhir_publish) > strtotime(date('Y-m-d'))): ?>
            <?= Html::a('Partisipasi', ['komentar/create', 'id' => $model->id],['class'=>'btn btn-primary']);?>  
        <?php else : ?>
            <?= Html::a('Lihat Komentar', ['komentar/view', 'id' => $model->id],['class'=>'btn btn-primary']);?>
        <?php endif; ?>    
    </div>                       
    </div>                                                              
</div>                        