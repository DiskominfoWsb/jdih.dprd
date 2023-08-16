<?php

use yii\helpers\Html;
?>
<header class="main-header">
  <!-- Logo -->
  <a href="index" class="logo">
    <!-- mini logo for sidebar mini 50x50 pixels -->
    <span class="logo-mini"><b><?= $title ?></b></span>
    <!-- logo for regular state and mobile devices -->
    <span class="logo-lg"><b><?= $title ?></b></span>
  </a>
  <!-- Header Navbar: style can be found in header.less -->
  <nav class="navbar navbar-static-top" role="navigation">
    <!-- Sidebar toggle button-->
    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
      <span class="sr-only">Toggle navigation</span>
    </a>
    <div class="navbar-custom-menu">
      <ul class="nav navbar-nav">
        <!-- Messages: style can be found in dropdown.less-->

        <!-- Notifications: style can be found in dropdown.less -->
        <!-- <li class="dropdown notifications-menu">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            <i class="fa fa-bell-o"></i>
            <span class="label label-warning">10</span>
          </a>
          <ul class="dropdown-menu">
            <li class="header">You have 10 notifications</li>
            <li>
              
              <ul class="menu">
                <li>
                  <a href="#">
                    <i class="fa fa-users text-aqua"></i> 5 new members joined today
                  </a>
                </li>
                <li>
                  <a href="#">
                    <i class="fa fa-warning text-yellow"></i> Very long description here that may not fit into the page and may cause design problems
                  </a>
                </li>
                <li>
                  <a href="#">
                    <i class="fa fa-users text-red"></i> 5 new members joined
                  </a>
                </li>
                <li>
                  <a href="#">
                    <i class="fa fa-shopping-cart text-green"></i> 25 sales made
                  </a>
                </li>
                <li>
                  <a href="#">
                    <i class="fa fa-user text-red"></i> You changed your username
                  </a>
                </li>
              </ul>
            </li>
            <li class="footer"><a href="#">View all</a></li>
          </ul>
        </li> -->


        <!-- User Account: style can be found in dropdown.less -->
        <li class="dropdown user user-menu">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">

            <?= Html::img(\Yii::getAlias('@imageurl') . '/common/dokumen/' . \Yii::$app->user->identity->picture, ['class' => 'user-image', 'alt' => 'myImage', 'width' => '160', 'height' => 'auto']); ?>

            <span class="hidden-xs"><?= \Yii::$app->user->identity->username ?></span>
          </a>
          <ul class="dropdown-menu">
            <!-- User image -->
            <li class="user-header">
              <?= Html::img('@web/img/user2-160x160.jpg', ['class' => 'img-circle', 'alt' => 'User Image']) ?>
              <p>
                <?= \Yii::$app->user->identity->username ?>
              </p>
              <p>
                <?= \Yii::$app->user->identity->email ?>
              </p>
            </li>
            <!-- Menu Body -->

            <!-- Menu Footer-->
            <li class="user-footer">
              <div class="pull-left">

                <?= Html::a(
                  'Profile',
                  ['/admin/user/profile', 'id' => Yii::$app->user->identity->id],
                  ['class' => 'btn btn-default btn-flat']
                ) ?>
              </div>
              <div class="pull-right">
                <?= Html::a(
                  'Sign out',
                  ['/site/logout'],
                  ['data-method' => 'post', 'class' => 'btn btn-default btn-flat']
                ) ?>
              </div>
            </li>
          </ul>
        </li>
        <!-- Control Sidebar Toggle Button -->
        <!-- <li>
                <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
              </li> -->
      </ul>
    </div>
  </nav>
</header>