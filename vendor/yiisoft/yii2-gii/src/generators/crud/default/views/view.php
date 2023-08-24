<?php

use yii\helpers\Inflector;
use yii\helpers\StringHelper;

/* @var $this yii\web\View */
/* @var $generator yii\gii\generators\crud\Generator */

$urlParams = $generator->generateUrlParams();

echo "<?php\n";
?>

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model <?= ltrim($generator->modelClass, '\\') ?> */

$this->title = $model-><?= $generator->getNameAttribute() ?>;
$this->params['breadcrumbs'][] = ['label' => <?= $generator->generateString(Inflector::pluralize(Inflector::camel2words(StringHelper::basename($generator->modelClass)))) ?>, 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>


<div class="box-body table-responsive no-padding">
    <div class="box box-primary box-solid">
        <div class="box-header with-border">
            
            <b>Detail Data <?= Inflector::camel2words(StringHelper::basename($generator->modelClass)) ?></b>
        </div>
          
        <div class="box-body">

            <div class="box-header">
                <?= "<?= " ?>Html::a('<i class="fa fa-mail-reply"></i> Kembali', ['index'], ['class' => 'btn btn-success btn-flat']) ?>
                <?= "<?= " ?>Html::a('<i class="fa fa-pencil"></i> Ubah', ['update', <?= $urlParams ?>], ['class' => 'btn btn-primary btn-flat']) ?>
                <?= "<?= " ?>Html::a('<i class="fa fa-trash"></i> Hapus', ['delete', <?= $urlParams ?>], [
                    'class' => 'btn btn-danger btn-flat',
                    'data' => [
                        'confirm' => <?= $generator->generateString('Yakin menghapus data ini?') ?>,
                        'method' => 'post',
                    ],
                ]) ?>
                <p></p>
            </div>
                <?= "<?= " ?>DetailView::widget([
                    'model' => $model,
                    'attributes' => [
        <?php
        if (($tableSchema = $generator->getTableSchema()) === false) {
            foreach ($generator->getColumnNames() as $name) {
                echo "                '" . $name . "',\n";
            }
        } else {
            foreach ($generator->getTableSchema()->columns as $column) {
                $format = stripos($column->name, 'created_at') !== false || stripos($column->name, 'updated_at') !== false ? 'datetime' : $generator->generateColumnFormat($column);
                echo "                '" . $column->name . ($format === 'text' ? "" : ":" . $format) . "',\n";
            }
        }
        ?>
                    ],
                ]) ?>
        </div>
    </div>
</div>


