<?php
    use yii\helpers\Html;
?>        
		<!-- start footer section -->
        <footer>
            <div class="footer-area padding-90px-tb md-padding-70px-tb sm-padding-50px-tb">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-sm-6 sm-margin-40px-bottom">
                            
							 <!-- start logo -->
                                        <?= Html::img('@web/frontend/assets/img/logos/logo.png', ['class' => 'width-50 margin-30px-bottom xs-margin-20px-bottom']); ?>
                                        <!-- end logo -->
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere.</p>
                        </div>

                        <div class="col-lg-3 col-sm-6 sm-margin-40px-bottom">
                            <h3 class="footer-title-style1">Contact Us</h3>
                            <ul class="list-style-1 no-margin">
                                <li>
                                    <span class="d-inline-block vertical-align-top font-size18"><i class="ti-location-pin text-theme-color"></i></span>
                                    <span class="d-inline-block width-65 sm-width-85 vertical-align-top padding-10px-left">74 Guild Street 542B, Great North Town MT.</span>
                                </li>
                                <li>
                                    <span class="d-inline-block vertical-align-top font-size18"><i class="ti-mobile text-theme-color"></i></span>
                                    <span class="d-inline-block width-65 sm-width-85 vertical-align-top padding-10px-left">4355 6567 789</span>
                                </li>
                                <li>
                                    <span class="d-inline-block vertical-align-top font-size18"><i class="ti-email text-theme-color"></i></span>
                                    <span class="d-inline-block width-65 sm-width-85 vertical-align-top padding-10px-left">example@yourname.com</span>
                                </li>
                            </ul>
                        </div>

                        <div class="col-lg-2 col-sm-6 mobile-margin-40px-bottom">
                            <h3 class="footer-title-style1">Useful Links</h3>
                            <ul class="list-style-1 no-margin-bottom">
                                <li><a href="index.html">Home</a></li>
                                <li><a href="#">About Us</a></li>
                                <li><a href="admin/index.html">Dashboard</a></li>
                                <li><a href="blog-grid.html">Blog</a></li>
                                <li><a href="contact-us.html">Contact Us</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <h3 class="footer-title-style1">Subscribe</h3>
                            <p class="margin-20px-bottom">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit.</p>
                            <div class="email-box  wow fadeInUp" data-wow-delay=".3s" style="visibility: visible; animation-delay: 0.3s; animation-name: fadeInUp;">
                                <div class="input">
                                    <input type="email" placeholder="Enter your email">
                                    <a href="javascript:void(0)" class="butn"><span><i class="far fa-paper-plane"></i></span></a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="footer-bar xs-padding-15px-tb">
                <div class="container">
                    <div class="float-right xs-width-100 text-center xs-margin-5px-bottom">
                        <ul class="social-icon-style no-margin">
                            <li>
                                <a href="javascript:void(0)"><i class="fab fa-facebook-f"></i></a>
                            </li>
                            <li>
                                <a href="javascript:void(0)"><i class="fab fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="javascript:void(0)"><i class="fab fa-instagram"></i></a>
                            </li>
                            <li>
                                <a href="javascript:void(0)"><i class="fab fa-linkedin-in"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="float-left xs-width-100 text-center">
                        <p class="text-medium-gray font-weight-600 margin-5px-top xs-no-margin-top">&copy; 2020 Finder is Powered by Chitrakoot Web</p>
                    </div>
                </div>
            </div>
        </footer>
        <!-- end footer section -->