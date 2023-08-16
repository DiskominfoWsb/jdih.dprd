<?php

namespace frontend\assets;

use yii\web\AssetBundle;

/**
 * Main frontend application asset bundle.
 * @author Kartik Visweswaran <kartikv2@gmail.com>
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web/frontend/assets';
    public $css = [


        'css/plugins.css',
        'search/search.css',
        'css/styles.css',
    ];

    public $js = [

        'js/jquery.min.js',
        'js/modernizr.js',
        'js/bootstrap.min.js',
        'search/search.js',
        'js/nav-menu.js',
        'js/easy.responsive.tabs.js',
        'js/owl.carousel.js',
        'js/jquery.counterup.min.js',
        'js/jquery.stellar.min.js',
        'js/waypoints.min.js',
        'js/countdown.js',
        'js/animated-headline.js',
        'js/ion.rangeSlider.min.js',
        'js/datepicker.min.js',
        'js/jquery.validate.min.js',
        'js/jquery.bootstrap.wizard.min.js',
        'js/form-wizard.js',
        'js/clipboard.min.js',
        'js/prism.js',
        'js/main.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        //'yii\bootstrap\BootstrapAsset',
    ];
}
