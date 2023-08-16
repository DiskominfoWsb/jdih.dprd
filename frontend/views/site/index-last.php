<?php

use yii\helpers\Html;
use frontend\models\Dokumen;
?>
<!-- start banner -->
<section class="bg-img screen-height cover-background line-banner" data-overlay-dark="6" data-background="frontend/assets/img/banner/ok.jpg">

    <!-- start banner text -->
    <div class="container position-relative h-100">
        <div class="header-text display-table h-200 z-index-1 width-00">
            <div class="display-table-cell vertical-align-middle text-center">

                <p class="font-size18 xs-font-size16 text-white letter-spacing-1 margin-15px-bottom">JARINGAN DOKUMENTASI DAN INFORMASI HUKUM</p>

                <!-- start banner headline text -->
                <h1 class="cd-headline slide">
                    BADAN PEMBINAAN HUKUM NASIONAL

                </h1>
                <!-- end banner headline text -->

                <div class="bg-white-opacity padding-10px-tb margin-40px-top xs-margin-30px-top padding-15px-lr xs-padding-20px-all border-radius-4">

                    <form id="w0" class="shadow-sm rounded mb-8" action="/jdih/dokumen/index" method="get" data-pjax="1">
                        <div class="form-row align-items-center">
                            <div class="col-md-10 my-1">
                                <input type="text" class="form-control" id="dokumensearch-judul" name="DokumenSearch[judul]" placeholder="What are you looking for?">
                            </div>


                            <div class="col-md-2 my-1">
                                <button type="submit" class="butn btn-block">Cari</button>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="margin-40px-top xs-margin-30px-top">
                    <span class="margin-10px-right text-white xs-display-block xs-margin-10px-bottom">Pencarian Populer</span>
                    <div class="searchs display-inline-block">
                        <ul class="no-margin-bottom">
                            <li><?= Html::a('Peraturan', ['dokumen/peraturan'], ['class' => 'text-white']); ?></li>
                            <li><?= Html::a('Monografi', ['dokumen/monografi'], ['class' => 'text-white']); ?></li>
                            <li><?= Html::a('Artikel', ['dokumen/artikel'], ['class' => 'text-white']); ?></li>
                            <li><?= Html::a('Putusan', ['dokumen/putusan'], ['class' => 'text-white']); ?></li>
                        </ul>
                    </div>
                </div>
                <br>
                <p class="font-size18 xs-font-size16 text-white letter-spacing-1 margin-15px-bottom"><?= Html::a('Pencarian Lanjut', ['dokumen/index'], ['class' => 'text-white']); ?></p>
            </div>
        </div>
    </div>
    <!-- end banner text -->

</section>
<!-- end banner -->

<!-- Start featured categories Section -->
<section>
    <div class="container">
        <div class="text-center margin-40px-bottom">
            <h3 class="margin-10px-bottom">Dokumen Hukum</h3>
            <!-- <p class="no-margin-bottom">Lorem Ipsum is simply dummy printing</p> -->
        </div>
        <div class="row">
            <div class="col-sm-6 col-md-4 col-lg-3 margin-40px-bottom mobile-margin-25px-bottom">
                <a href="listing-grid-full-width.html">
                    <div class="feature-inner display-table">
                        <div class="display-table-cell vertical-align-middle">
                            <div class="bg-icon">
                                <i class="ti-server"></i>
                            </div>
                            <div>
                                <h5 class="font-size20">Peraturan</h5>
                                <i class="ti-server font-size32 text-theme-color"></i>
                                <h6 class="mt-3"><?= Dokumen::find()->total(1); ?></h6>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 margin-40px-bottom mobile-margin-25px-bottom">
                <a href="listing-grid-full-width.html">
                    <div class="feature-inner display-table">
                        <div class="display-table-cell vertical-align-middle">
                            <div class="bg-icon">
                                <i class="ti-world"></i>
                            </div>
                            <div>
                                <h5 class="font-size20">Monografi Hukum</h5>
                                <i class="ti-world font-size32 text-theme-color"></i>
                                <h6 class="mt-3"><?= Dokumen::find()->total(2); ?></h6>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 margin-40px-bottom mobile-margin-25px-bottom">
                <a href="listing-grid-full-width.html">
                    <div class="feature-inner display-table">
                        <div class="display-table-cell vertical-align-middle">
                            <div class="bg-icon">
                                <i class="ti-layers"></i>
                            </div>
                            <div>
                                <h5 class="font-size20">Artikel Hukum</h5>
                                <i class="ti-layers font-size32 text-theme-color"></i>
                                <h6 class="mt-3"><?= Dokumen::find()->total(3); ?></h6>
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3 margin-40px-bottom mobile-margin-25px-bottom">
                <a href="listing-grid-full-width.html">
                    <div class="feature-inner display-table">
                        <div class="display-table-cell vertical-align-middle">
                            <div class="bg-icon">
                                <i class="ti-bar-chart-alt"></i>
                            </div>
                            <div>
                                <h5 class="font-size20">Yurisprudensi</h5>
                                <i class="ti-bar-chart-alt font-size32 text-theme-color"></i>
                                <h6 class="mt-3"><?= Dokumen::find()->total(4); ?></h6>
                            </div>
                        </div>
                    </div>
                </a>
            </div>

        </div>
    </div>
</section>
<!-- End featured categories Section -->



<!-- start contact section -->
<section class="bg-theme">
    <div class="container">
        <div class="text-center">
            <div class="row">
                <div class="col-sm-2 col-md-2 col-lg-2">
                </div>
                <div class="col-sm-4 col-md-4 col-lg-4 mobile-margin-25px-bottom">
                    <a href="listing-grid-full-width.html">
                        <div class="feature-inner2 display-table" style="color: red">
                            <div class="display-table-cell vertical-align-middle">
                                <div>
                                    <h5 class="font-size20">Koleksi BPHN </h5>
                                    <?= Html::a(Html::img('@web/frontend/assets/img/jdih/icon-portal.png'), ['/']); ?>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>


                <div class="col-sm-4 col-md-4 col-lg-4">
                    <a href="listing-grid-full-width.html">
                        <div class="feature-inner2 display-table">
                            <div class="display-table-cell vertical-align-middle">
                                <div>
                                    <h5 class="font-size20">Portal JDIHN </h5>
                                    <?= Html::a(Html::img('@web/frontend/assets/img/jdih/icon-basis.png'), ['/']); ?>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="col-sm-2 col-md-2 col-lg-2">
                </div>
            </div>
        </div>
    </div>
</section>
<!-- end contact section -->

<!-- start services section -->
<section>
    <div class="container">
        <div class="row">
            <div class="col-md-8 xs-margin-30px-bottom">
                <div class="text-center bg-white border padding-20px-lr padding-40px-tb border-radius-4 h-100">
                    <span class="margin-20px-bottom font-size40 text-theme-color display-inline-block"><i class="ti-fullscreen"></i></span>
                    <h3 class="font-size20 margin-20px-bottom sm-margin-10px-bottom">Tentang Kami</h3>
                    <p class="center-col xs-width-95 no-margin-bottom">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                </div>
            </div>
            <div class="col-md-4 xs-margin-30px-bottom">
                <div class="text-center bg-white border padding-20px-lr padding-40px-tb border-radius-4 h-100">
                    <span class="margin-20px-bottom font-size40 text-theme-color display-inline-block"><i class="ti-layers"></i></span>
                    <h3 class="font-size20 margin-20px-bottom sm-margin-10px-bottom">Explore Best Places</h3>
                    <p class="center-col xs-width-95 no-margin-bottom">It is a long established fact that a reader will be distracted by the readable content of a page.</p>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- end services section -->

<!-- start testimonial section -->
<section class="no-padding">
    <div class="container">
        <div class="text-center margin-30px-bottom">
            <h3 class="margin-10px-bottom">Testimonials</h3>
        </div>
        <div class="owl-carousel owl-theme" id="testmonials-carousel">
            <div class="testmonial-single margin-10px-top text-center">
                <p class="line-height-40 xs-line-height-35 width-65 md-width-70 sm-width-90 xs-width-100 center-col font-size22 xs-font-size18 position-relative text-extra-dark-gray">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that.</p>
                <h4 class="padding-35px-top xs-padding-20px-top font-size16 no-margin-bottom">Karen Irvin</h4>
            </div>
            <div class="testmonial-single margin-10px-top text-center">
                <p class="line-height-40 xs-line-height-35 width-65 md-width-70 sm-width-90 xs-width-100 center-col font-size22 xs-font-size18 position-relative text-extra-dark-gray">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still.</p>
                <h4 class="padding-35px-top xs-padding-20px-top font-size16 no-margin-bottom">Edward Lillis</h4>
            </div>
            <div class="testmonial-single margin-10px-top text-center">
                <p class="line-height-40 xs-line-height-35 width-65 md-width-70 sm-width-90 xs-width-100 center-col font-size22 xs-font-size18 position-relative text-extra-dark-gray">Make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                <h4 class="padding-35px-top xs-padding-20px-top font-size16 no-margin-bottom">Terry Campbell</h4>
            </div>
        </div>
    </div>
</section>
<!-- end testimonial section -->

<!-- start blog section -->
<section>
    <div class="container">
        <div class="text-center margin-30px-bottom">
            <h3 class="margin-10px-bottom">Berita Terbaru</h3>
        </div>
        <div class="row">

            <!-- start blog -->
            <div class="col-lg-4 sm-margin-30px-bottom">
                <div class="card border-0 shadow h-100">
                    <a href="#">
                        <img class="card-img-top rounded" src="frontend/assets/img/blog/blog-1.jpg" alt="" />
                    </a>
                    <div class="card-body padding-30px-all">
                        <h5 class="card-title font-size22 font-weight-500 magin-20px-bottom">
                            <a href="blog-details.html" class="text-extra-dark-gray">Think about your passions</a>
                        </h5>
                        <div class="margin-10px-bottom">
                            <span><a href="#" class="font-size12 margin-15px-right text-extra-dark-gray"><i class="ti-user margin-5px-right"></i>Amdin</a></span>
                            <span><a href="#" class="font-size12 margin-15px-right text-extra-dark-gray"><i class="ti-comment-alt margin-5px-right"></i>27</a></span>
                            <span><a href="#" class="font-size12 text-extra-dark-gray"><i class="ti-heart margin-5px-right"></i>12</a></span>
                        </div>
                        <p class="no-margin-bottom">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.</p>
                    </div>
                </div>
            </div>
            <!-- end blog -->

            <!-- start blog -->
            <div class="col-lg-4 sm-margin-30px-bottom">
                <div class="card border-0 shadow h-100">
                    <a href="#">
                        <img class="card-img-top rounded" src="frontend/assets/img/blog/blog-2.jpg" alt="" />
                    </a>
                    <div class="card-body padding-30px-all">
                        <h5 class="card-title font-size22 font-weight-500 magin-20px-bottom">
                            <a href="blog-details.html" class="text-extra-dark-gray">Find things you don't know</a>
                        </h5>
                        <div class="margin-10px-bottom">
                            <span><a href="#" class="font-size12 margin-15px-right text-extra-dark-gray"><i class="ti-user margin-5px-right"></i>Amdin</a></span>
                            <span><a href="#" class="font-size12 margin-15px-right text-extra-dark-gray"><i class="ti-comment-alt margin-5px-right"></i>16</a></span>
                            <span><a href="#" class="font-size12 text-extra-dark-gray"><i class="ti-heart margin-5px-right"></i>5</a></span>
                        </div>
                        <p class="no-margin-bottom">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece.</p>
                    </div>
                </div>
            </div>
            <!-- end blog -->

            <!-- start blog -->
            <div class="col-lg-4">
                <div class="card border-0 shadow h-100">
                    <a href="#">
                        <img class="card-img-top rounded" src="frontend/assets/img/blog/blog-3.jpg" alt="" />
                    </a>
                    <div class="card-body padding-30px-all">
                        <h5 class="card-title font-size22 font-weight-500 magin-20px-bottom">
                            <a href="blog-details.html" class="text-extra-dark-gray">Fitness for working people.</a>
                        </h5>
                        <div class="margin-10px-bottom">
                            <span><a href="#" class="font-size12 margin-15px-right text-extra-dark-gray"><i class="ti-user margin-5px-right"></i>Amdin</a></span>
                            <span><a href="#" class="font-size12 margin-15px-right text-extra-dark-gray"><i class="ti-comment-alt margin-5px-right"></i>32</a></span>
                            <span><a href="#" class="font-size12 text-extra-dark-gray"><i class="ti-heart margin-5px-right"></i>46</a></span>
                        </div>
                        <p class="no-margin-bottom">It is a long established fact that a reader will be distracted by the readable content.</p>
                    </div>
                </div>
            </div>
            <!-- end blog -->

        </div>
    </div>
</section>
<!-- end blog section -->