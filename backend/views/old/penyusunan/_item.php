<?php

use yii\helpers\Html;
?>

<div class="box-body chat" id="chat-box" style="overflow: hidden; width: auto; height: auto;">
  <div class="item">            
    <?= Html::img('@web/img/user1-128x128.jpg', ['class' => 'online', 'alt'=>'Message User Image']) ?>                  
    <p class="message">
      <a href="#" class="name">
        <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> <?=$model->created_at;?></small>
        <?= $model->nama;?>
      </a>
      <?=$model->komentar;?>
    </p>
    <?php if (!empty($model->file_pendukung)) :?>
      <div class="attachment">
          <h4>Attachments:</h4>
          <p class="filename"><?= $model->file_pendukung;?></p>
        <div class="pull-right">
          <?= Html::a('download', ['/masukan-masyarakat/download', 'id' => $model->file_pendukung],['class'=>'btn btn-primary btn-sm btn-flat']);?>          
        </div>
      </div>
    <?php endif;?>
  </div>
  
  <?php if($model->is_publish == 0) : ?>
        <?= Html::a('<i class="fa fa-cloud-upload"></i>  Publish', ['/masukan-masyarakat/publish', 'id' => $model->id], [
            'class' => 'btn btn-primary btn-xs',
            'data' => [
                'confirm' => 'Yakin ingin mempublish komentar ini?',
                'method' => 'post',
            ],
        ]) ?>
  <?php else :?>
        <?= Html::a('<i class="fa fa-cloud-download"></i>  Jangan Publish', ['/masukan-masyarakat/unpublish', 'id' => $model->id], [
            'class' => 'btn btn-warning btn-xs',
            'data' => [
                'confirm' => 'Yakin ingin menonaktifkan komentar ini?',
                'method' => 'post',
            ],
        ]) ?>    
  <?php endif;?>

  <?= Html::a('<i class="fa fa-search-plus"></i> Detail', ['masukan-masyarakat/view', 'id' => $model->id], ['class' => 'btn btn-success btn-xs']) ?>
</div>
<br>