<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
?>

<section class="page-title-section bg-img cover-background" data-overlay-dark="7" data-background="/img/banner/header.jpg">
	<div class="container">
		<h1>Member Login</h1>
		<ul class="text-center">
			<li><?= Html::a('Home', ['/']); ?></li>
			<li>
				<span class="active">Login</span>
			</li>
		</ul>
	</div>
</section>
<section>
	<div class="container">
		<div class="row">
			<div class="col-lg-6 center-col">
				<div class="padding-40px-all sm-padding-25px-all shadow border-radius-4">
					<h3 class="text-center margin-40px-bottom">Login</h3>
					<?php $form = ActiveForm::begin(['id' => 'login-form']); ?>

					<?= $form->field($model, 'username')->textInput(['autofocus' => true, 'placeholder' => 'Username'])->label(false) ?>

					<?= $form->field($model, 'password')->passwordInput(['placeholder' => 'Password'])->label(false) ?>

					<div class="row">
						<div class="col-sm-6 mb-2">
													</div>
						<div class="col-sm-6 text-left text-sm-right">

							
						</div>

					</div>


					<?= Html::submitButton('Login', ['class' => 'butn btn-block', 'name' => 'login-button']) ?>
				</div>
			</div>
		</div>

		<?php ActiveForm::end(); ?>
	</div>
</section>