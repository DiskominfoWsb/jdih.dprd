<?php

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;
?>

	<section class="clearfix job-bg user-page">
		<div class="container">
			<div class="row text-center">
				<!-- user-login -->			
				<div class="col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3">
					<div class="user-account">
						<h2>User Login</h2>
						<!-- form -->


            <?php $form = ActiveForm::begin(['id' => 'login-form']); ?>

                <?= $form->field($model, 'username')->textInput(['autofocus' => true,'placeholder'=>'Username'])->label(false) ?>

                <?= $form->field($model, 'password')->passwordInput(['placeholder'=>'Password'])->label(false) ?>

                

                <div style="color:#999;margin:1em 0">
                    If you forgot your password you can <?= Html::a('reset it', ['site/request-password-reset']) ?>.
                </div>

             

						<!-- forgot-password -->
						<div class="user-option">
							<div class="checkbox pull-left">
								<label for="logged"><input type="checkbox" name="rememberMe" id="logged"> Keep me logged in </label>
							

							</div>
							<div class="pull-right forgot-password">
								
								<?= Html::a('forgot password', ['site/request-password-reset']) ?>
							</div>
						</div><!-- forgot-password -->
						<?= Html::submitButton('Login', ['class' => 'btn btn-primary', 'name' => 'login-button']) ?>
					</div>
				
            <?php ActiveForm::end(); ?>					
				</div><!-- user-login -->			
			</div><!-- row -->	
		</div><!-- container -->
	</section><!-- signin-page -->