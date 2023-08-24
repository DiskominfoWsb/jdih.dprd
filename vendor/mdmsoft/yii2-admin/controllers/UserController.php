<?php

namespace mdm\admin\controllers;

use mdm\admin\components\UserStatus;
use mdm\admin\models\form\ChangePassword;
use mdm\admin\models\form\Login;
use mdm\admin\models\form\PasswordResetRequest;
use mdm\admin\models\form\ResetPassword;
use mdm\admin\models\form\Signup;
use mdm\admin\models\searchs\User as UserSearch;
use mdm\admin\models\User;
use Yii;
use yii\base\InvalidParamException;
use yii\base\UserException;
use yii\filters\VerbFilter;
use yii\mail\BaseMailer;
use yii\web\BadRequestHttpException;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\data\ActiveDataProvider;
use backend\models\LogPustakawan;
use backend\models\Users;
use yii\web\UploadedFile;

/**
 * User controller
 */
class UserController extends Controller
{
    private $_oldMailPath;

    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                    'logout' => ['post'],
                    'activate' => ['post'],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function beforeAction($action)
    {
        if (parent::beforeAction($action)) {
            if (Yii::$app->has('mailer') && ($mailer = Yii::$app->getMailer()) instanceof BaseMailer) {
                /* @var $mailer BaseMailer */
                $this->_oldMailPath = $mailer->getViewPath();
                $mailer->setViewPath('@mdm/admin/mail');
            }
            return true;
        }
        return false;
    }

    /**
     * @inheritdoc
     */
    public function afterAction($action, $result)
    {
        if ($this->_oldMailPath !== null) {
            Yii::$app->getMailer()->setViewPath($this->_oldMailPath);
        }
        return parent::afterAction($action, $result);
    }

    /**
     * Lists all User models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new UserSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single User model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {

        $changepassword = new ChangePassword();
        if ($changepassword->load(Yii::$app->getRequest()->post()) && $changepassword->change()) {
            Yii::$app->session->setFlash('success', 'password successfully changed');
            return $this->redirect(['view', 'id' => $id]);
        }

        $log = new ActiveDataProvider([
            'query' => LogPustakawan::find()->where(['created_by' => \Yii::$app->user->identity->id]),
            'pagination' => ['pageSize' => 10]
        ]);

        return $this->render('view', [
            'model' => $this->findModel($id),
            'changepassword' => $changepassword,
            'log' => $log,
        ]);
    }

    public function actionProfile($id)
    {
        $model = Users::findOne($id);
        // $old_picture = $model->picture;
        //$changepassword = new ChangePassword();

        if ($model->load(Yii::$app->getRequest()->post())) {

            $picture = UploadedFile::getInstance($model, 'picture');
            if (!empty($picture)) {
                $model->picture =  strtolower(preg_replace('/[^a-zA-Z0-9-_\.]/', '', $picture->name));
                $path = Yii::getAlias('@common') . '/dokumen/' . $model->picture;
                $picture->saveAs($path);
            }
            if ($model->save()) {
                Yii::$app->session->setFlash('success', 'picture successfully changed');
                return $this->redirect(['profile', 'id' => $id]);
            }
        }


        if (\Yii::$app->user->identity->id != $id) {
            Yii::$app->session->setFlash('warning', 'anda tidak diizinkan melihat profile user lain');
            return $this->redirect(['profile', 'id' => \Yii::$app->user->identity->id]);
        }

        $changepassword = new ChangePassword();
        if ($changepassword->load(Yii::$app->getRequest()->post()) && $changepassword->change()) {
            Yii::$app->session->setFlash('success', 'password successfully changed');
            return $this->redirect(['profile', 'id' => $id]);
        }

        $log = new ActiveDataProvider([
            'query' => LogPustakawan::find()->where(['created_by' => \Yii::$app->user->identity->id]),
            'pagination' => ['pageSize' => 10]
        ]);


        return $this->render('view', [
            'model' => $model,
            'changepassword' => $changepassword,
            'log' => $log,

        ]);
    }




    /**
     * Deletes an existing User model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Login
     * @return string
     */
    public function actionLogin()
    {
        if (!Yii::$app->getUser()->isGuest) {
            return $this->goHome();
        }

        $model = new Login();
        if ($model->load(Yii::$app->getRequest()->post()) && $model->login()) {
            return $this->goBack();
        } else {
            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Logout
     * @return string
     */
    public function actionLogout()
    {
        Yii::$app->getUser()->logout();

        return $this->goHome();
    }

    /**
     * Signup new user
     * @return string
     */
    public function actionSignup()
    {
        $model = new Signup();
        if ($model->load(Yii::$app->getRequest()->post())) {
            if ($user = $model->signup()) {
                Yii::$app->session->setFlash('succecc', 'user baru berhasil dibuat');
                return $this->redirect(['/admin/user/index']);
                //return $this->goHome();
            }
        }

        return $this->render('signup', [
            'model' => $model,
        ]);
    }

    /**
     * Request reset password
     * @return string
     */
    public function actionRequestPasswordReset()
    {
        $model = new PasswordResetRequest();
        if ($model->load(Yii::$app->getRequest()->post()) && $model->validate()) {
            if ($model->sendEmail()) {
                Yii::$app->getSession()->setFlash('success', 'Check your email for further instructions.');

                return $this->goHome();
            } else {
                Yii::$app->getSession()->setFlash('error', 'Sorry, we are unable to reset password for email provided.');
            }
        }

        return $this->render('requestPasswordResetToken', [
            'model' => $model,
        ]);
    }

    /**
     * Reset password
     * @return string
     */
    public function actionResetPassword($token)
    {
        try {
            $model = new ResetPassword($token);
        } catch (InvalidParamException $e) {
            throw new BadRequestHttpException($e->getMessage());
        }

        if ($model->load(Yii::$app->getRequest()->post()) && $model->validate() && $model->resetPassword()) {
            Yii::$app->getSession()->setFlash('success', 'New password was saved.');

            return $this->goHome();
        }

        return $this->render('resetPassword', [
            'model' => $model,
        ]);
    }

    /**
     * Reset password
     * @return string
     */
    public function actionChangePassword()
    {
        $model = new ChangePassword();
        if ($model->load(Yii::$app->getRequest()->post()) && $model->change()) {
            return $this->goHome();
        }

        return $this->render('change-password', [
            'model' => $model,
        ]);
    }

    public function actionPassword($id)
    {
        $model = $this->findModel($id);
        $model->setPassword('123456');
        $model->save(false);
        Yii::$app->session->setFlash('success', 'User berhasil direset dengan password 123456');
        return $this->redirect(['user/index']);
    }

    /**
     * Activate new user
     * @param integer $id
     * @return type
     * @throws UserException
     * @throws NotFoundHttpException
     */
    public function actionActivate($id)
    {
        /* @var $user User */
        $user = $this->findModel($id);
        if ($user->status == UserStatus::INACTIVE) {
            $user->status = UserStatus::ACTIVE;
            if ($user->save()) {
                // return $this->goHome();
                Yii::$app->session->setFlash('success', 'User successfully activated');
                return $this->redirect(['user/index']);
            } else {
                $errors = $user->firstErrors;
                throw new UserException(reset($errors));
            }
        }
        return $this->goHome();
    }


    public function actionInactivate($id)
    {
        /* @var $user User */
        $user = $this->findModel($id);
        if ($user->status == UserStatus::ACTIVE) {
            $user->status = UserStatus::INACTIVE;
            if ($user->save()) {
                //return $this->goHome();
                Yii::$app->session->setFlash('warning', 'User successfully inactivated');
                return $this->redirect(['user/index']);
            } else {
                $errors = $user->firstErrors;
                throw new UserException(reset($errors));
            }
        }
        return $this->goHome();
    }

    /**
     * Finds the User model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return User the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = User::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
