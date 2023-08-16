<?php
$params = array_merge(
    require(__DIR__ . '/../../common/config/params.php'),
    require(__DIR__ . '/../../common/config/params-local.php'),
    require(__DIR__ . '/params.php'),
    require(__DIR__ . '/params-local.php')
);

return [
    'id' => 'app-backend',
    'name' => 'JDIH',
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'backend\controllers',
    'bootstrap' => ['log'],
    'timezone' => 'Asia/Bangkok',
    'modules' => [
        'admin' => [
            'class' => 'mdm\admin\Module',
        ],
        'gridview' =>  [
            'class' => '\kartik\grid\Module',
        ],
    ],

    'aliases' => [
        '@adminlte/widgets' => '@vendor/adminlte/yii2-widgets'
    ],

    'components' => [
        'authManager' => [
            'class' => 'yii\rbac\DbManager', // or use 'yii\rbac\DbManager'
        ],

        'authManager' => [
            'class' => 'yii\rbac\DbManager', // or use 'yii\rbac\DbManager'
        ],
        'request' => [
            'csrfParam' => '_csrf-backend',
        ],
        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => true,
            'identityCookie' => ['name' => '_identity-backend', 'httpOnly' => true],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the backend
            'name' => 'djpp-backend',
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            //'suffix' => '.html',
            // 'rules' => [

            //     // 'article/<id:\d+>/<slug>' => 'article/view',
            //     //'<controller:\w+>/<id:\d+>/' => '<controller>/view',

            //     '<controller:\w+>/<id:\d+>/<slug>' => '<controller>/view',
            //     '<controller:\w+>/<action:\w+>/<id:\d+>' => '<controller>/<action>',
            //     '<controller:\w+>/<action:\w+>' => '<controller>/<action>',
            //     // '<controller:\w+>/<action:\w+>/<id:\d+>/<usr:\d+>' => '<controller>/<action>',
            // ],
        ],
    ],
    'as access' => [
        'class' => 'mdm\admin\components\AccessControl',
        'allowActions' => [
            'site/*',
            'admin/*',
        ],
    ],
    'params' => $params,
];
