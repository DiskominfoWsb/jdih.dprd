<?php
use yii\helpers\Html;
use yii\helpers\Url;
use frontend\models\Rancangan;
use yii\widgets\ActiveForm;
use yii\widgets\Pjax;
use yii\widgets\ListView;
use common\widgets\Alert;



?>	
	<div class="banner-job" style="background-image: url(<?=url::to('frontend/assets/images/bg/home.jpg')?>">
		<div class="banner-overlay"></div>
		<div class="container text-center">
			<h1 class="title">Ayoo berikan tanggapanmu</h1>
			<h3>partisipasi masyarakat terhadap rancangan peraturan</h3>
			<div class="banner-form">
				<form action="/partisipasi/rancangan" method="get" data-pjax="1"  class="clearfix">
					<input type="text" id="rancangansearch-nama_rancangan" name="RancanganSearch[nama_rancangan]" class="form-control" placeholder="ketik untuk mencari rancangan peraturan" autofocus>

					<button type="submit" class="btn btn-primary" value="Search">Search</button>
				</form>
			</div>
			<ul class="banner-socail list-inline">
				<li><a href="#" title="Facebook"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#" title="Twitter"><i class="fa fa-twitter"></i></a></li>
				<li><a href="#" title="Google Plus"><i class="fa fa-google-plus"></i></a></li>
				<li><a href="#" title="Youtube"><i class="fa fa-youtube"></i></a></li>
			</ul><!-- banner-socail -->
		</div><!-- container -->
	</div><!-- banner-section -->

	<div class="page">
		<div class="container">
		<?= Alert::widget() ?>
			<div class="resume-content">
				<div class="career-objective section">
					<div class="icons">
						<i class="fa fa-black-tie" aria-hidden="true"></i>
					</div>
					<div class="career-info">
						<h3>Selamat Datang</h3>
						<p><span>Konsultasi Publik adalah kegiatan berbentuk komunikasi dua arah yang
dilakukan secara pasif dan/atau aktif untuk meminta pandangan dari
Masyarakat, berlangsung dalam setiap tahapan pembentukan peraturan
perundang-undangan, baik berupa proses satu tahap atau proses yang
berkelanjutan dengan tujuan mengumpulkan informasi untuk
memfasilitasi penyusunan peraturan perundang-undangan yang
berkualitas.</p>
					</div>
				</div>	
			</div>		
		

			<div class="section latest-jobs-ads">
				<div class="section-title tab-manu">
					<h4>Partisipasi Rancangan Terbaru</h4>
					 <!-- Nav tabs -->      
					<ul class="nav nav-tabs" role="tablist">
						<li role="presentation" class="active"><a href="#perencanaan" data-toggle="tab">Perencanaan</a></li>
						<li role="presentation"><a href="#penyusunan" data-toggle="tab">Penyusunan</a></li>
						<li role="presentation"><a href="#pembahasan" data-toggle="tab">Pembahasan</a></li>
					</ul>
				</div>

				<div class="tab-content">
					<!-- tab perencanaan -->
					<div role="tabpanel" class="tab-pane fade in active" id="perencanaan">									
					<?php if (!empty(Rancangan::find()->jenis('Perencanaan'))): ?>
						<?php foreach (Rancangan::find()->jenis('Perencanaan') as $data) : ?> 									
							<div class="job-ad-item">
								<div class="item-info">								
									<div class="ad-info">
										<span><?= Html::a($data->nama_rancangan, ['rancangan/view', 'id' => $data->id],['class'=>'title']);?></span>
										<div class="ad-meta">
											<ul>
												<li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i><?=$data->program->nama_program;?></a></li>
												<li><a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i><?=$data->tahun;?></a></li>
												<li><a href="#"><i class="fa fa-money" aria-hidden="true"></i><?=$data->jenisRancangan->nama_rancangan;?></a></li>
												<li><a href="#"><i class="fa fa-tags" aria-hidden="true"></i><?=$data->pemrakarsa->nama_pemrakarsa;?></a></li>
												  <li><a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i>Berakhir pada : <?=$data->tanggal_akhir_publish;?></a></li>
											</ul>
										</div><!-- ad-meta -->									
									</div><!-- ad-info -->
								</div>
								<div class="ad-info">
									<?= Html::a('Lihat Detail', ['rancangan/view', 'id' => $data->id],['class'=>'btn btn-primary']);?>
									<?php if (strtotime($data->tanggal_akhir_publish) > strtotime(date('Y-m-d'))): ?>

										<?= Html::a('Partisipasi', ['komentar/create', 'id' => $data->id],['class'=>'btn btn-primary']);?>	
									<?php else : ?>
										<?= Html::a('Lihat Komentar', ['komentar/view', 'id' => $data->id],['class'=>'btn btn-primary']);?>
									<?php endif; ?> 														
								</div>																
							</div>								
						<?php endforeach; ?>
					<?php else : ?>
						<?php echo 'tidak ada data';?>						
					<?php endif; ?> 
     
					</div>
					<!-- tab penyusunan -->
					<div role="tabpanel" class="tab-pane fade in" id="penyusunan">
						<?php if (!empty(Rancangan::find()->jenis('Penyusunan'))): ?>
							<?php foreach (Rancangan::find()->jenis('Penyusunan') as $data) : ?> 									
								<div class="job-ad-item">
									<div class="item-info">								
										<div class="ad-info">
											<span><?= Html::a($data->nama_rancangan, ['rancangan/view', 'id' => $data->id],['class'=>'title']);?></span>
											<div class="ad-meta">
												<ul>
													<li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i><?=$data->program->nama_program;?></a></li>
													<li><a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i><?=$data->tahun;?></a></li>
													<li><a href="#"><i class="fa fa-money" aria-hidden="true"></i><?=$data->jenisRancangan->nama_rancangan;?></a></li>
													<li><a href="#"><i class="fa fa-tags" aria-hidden="true"></i><?=$data->pemrakarsa->nama_pemrakarsa;?></a></li>
													  <li><a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i>Berakhir pada : <?=$data->tanggal_akhir_publish;?></a></li>
												</ul>
											</div><!-- ad-meta -->									
										</div><!-- ad-info -->
									</div>
									<div class="ad-info">
										<?= Html::a('Lihat Detail', ['rancangan/view', 'id' => $data->id],['class'=>'btn btn-primary']);?>
										<?php if (strtotime($data->tanggal_akhir_publish) > strtotime(date('Y-m-d'))): ?>

											<?= Html::a('Partisipasi', ['komentar/create', 'id' => $data->id],['class'=>'btn btn-primary']);?>	
										<?php else : ?>
											<?= Html::a('Lihat Komentar', ['komentar/view', 'id' => $data->id],['class'=>'btn btn-primary']);?>
										<?php endif; ?> 														
									</div>																
								</div>								
							<?php endforeach; ?>
						<?php else : ?>
							<?php echo 'tidak ada data';?>						
						<?php endif; ?>  					
   
					</div><!-- tab-pane -->
					
					<!-- tab penyusunan -->
					<div role="tabpanel" class="tab-pane fade in" id="pembahasan">
						<?php if (!empty(Rancangan::find()->jenis('Pembahasan'))): ?>
							<?php foreach (Rancangan::find()->jenis('Pembahasan') as $data) : ?> 									
								<div class="job-ad-item">
									<div class="item-info">								
										<div class="ad-info">
											<span><?= Html::a($data->nama_rancangan, ['rancangan/view', 'id' => $data->id],['class'=>'title']);?></span>
											<div class="ad-meta">
												<ul>
													<li><a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i><?=$data->program->nama_program;?></a></li>
													<li><a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i><?=$data->tahun;?></a></li>
													<li><a href="#"><i class="fa fa-money" aria-hidden="true"></i><?=$data->jenisRancangan->nama_rancangan;?></a></li>
													<li><a href="#"><i class="fa fa-tags" aria-hidden="true"></i><?=$data->pemrakarsa->nama_pemrakarsa;?></a></li>
													  <li><a href="#"><i class="fa fa-clock-o" aria-hidden="true"></i>Berakhir pada : <?=$data->tanggal_akhir_publish;?></a></li>
												</ul>
											</div><!-- ad-meta -->									
										</div><!-- ad-info -->
									</div>
									<div class="ad-info">
										<?= Html::a('Lihat Detail', ['rancangan/view', 'id' => $data->id],['class'=>'btn btn-primary']);?>
										<?php if (strtotime($data->tanggal_akhir_publish) > strtotime(date('Y-m-d'))): ?>

											<?= Html::a('Partisipasi', ['komentar/create', 'id' => $data->id],['class'=>'btn btn-primary']);?>	
										<?php else : ?>
											<?= Html::a('Lihat Komentar', ['komentar/view', 'id' => $data->id],['class'=>'btn btn-primary']);?>
										<?php endif; ?> 														
									</div>																
								</div>								
							<?php endforeach; ?>
						<?php else : ?>
							<?php echo 'tidak ada data';?>						
						<?php endif; ?>  
					</div><!-- tab-pane -->
				</div><!-- tab-content -->


			</div><!-- trending ads -->		

				<div class="section category-items job-category-items  text-center">
				
					<div class="col-sm-4">
						<div class="single-cta">
							<div class="cta-icon icon-jobs">							
								<?= Html::img('@web/frontend/assets/images/icon/1.png',['alt' => 'Icon', 'class' => 'img-responsive']); ?>
							</div><!-- cta-icon -->
							<h3><?= Rancangan::find()->total('Perencanaan');?></h3>
							<h4>Perencanaan</h4>
							<p>Rancangan Peraturan Perundang-undangan</p>
						</div>
					</div><!-- single-cta -->

					<div class="col-sm-4">
						<div class="single-cta">
							<!-- cta-icon -->
							<div class="cta-icon icon-company">
								
								<?= Html::img('@web/frontend/assets/images/icon/32.png',['alt' => 'Icon', 'class' => 'img-responsive']); ?>
							</div><!-- cta-icon -->
							<h3><?= Rancangan::find()->total('Penyusunan');?></h3>
							<h4>Penyusunan</h4>
							<p>Rancangan Peraturan Perundang-undangan</p>
						</div>
					</div><!-- single-cta -->

					<div class="col-sm-4">
						<div class="single-cta">
							<div class="cta-icon icon-candidate">
								
								<?= Html::img('@web/frontend/assets/images/icon/33.png',['alt' => 'Icon', 'class' => 'img-responsive']); ?>
							</div><!-- cta-icon -->
							<h3><?= Rancangan::find()->total('Pembahasan');?></h3>
							<h4>Pembahasan</h4>
							<p>Rancangan Peraturan Perundang-undangan</p>
						</div>
					</div><!-- single-cta -->
				</div><!-- row -->
			



		

		</div><!-- conainer -->
	</div><!-- page -->
	
	<!-- download -->
