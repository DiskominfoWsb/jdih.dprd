<?php

namespace backend\models;

use Yii;
use yii\db\ActiveRecord;
use yii\db\Expression;
use yii\behaviors\SluggableBehavior;
use yii\behaviors\BlameableBehavior;

/**
 * This is the model class for table "member_type".
 *
 * @property int $id
 * @property string $member_type_name Nama tipe Member
 * @property int $loan_limit jumlah_maksimal_peminjaman
 * @property int $loan_periode lama_maksimal_peminjaman
 * @property int $enable_reserve status aktif/tidak
 * @property int $reserve_limit jumlah_maksimal_reservasi
 * @property int $member_periode masa_berlaku_member
 * @property int $reborrow_limit maksimal perpanjangan
 * @property int $fine_each_day denda_perhari
 * @property int|null $grace_periode toleransi_keterlambatan
 * @property string $input_date
 * @property string|null $last_update
 * @property string|null $id_tipe_koleksi
 * @property string|null $id_tipe_gmd
 * @property int|null $created_by
 * @property int|null $updated_by
 * @property string $created_at
 * @property string $updated_at
 */
class MemberType extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'member_type';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['member_type_name', 'loan_limit', 'loan_periode', 'member_periode', 'reborrow_limit', 'fine_each_day', 'input_date', 'created_at', 'updated_at'], 'required'],
            [['loan_limit', 'loan_periode', 'enable_reserve', 'reserve_limit', 'member_periode', 'reborrow_limit', 'fine_each_day', 'grace_periode', 'created_by', 'updated_by'], 'integer'],
            [['input_date', 'last_update', 'created_at', 'updated_at'], 'safe'],
            [['member_type_name'], 'string', 'max' => 50],
            [['id_tipe_koleksi', 'id_tipe_gmd'], 'string', 'max' => 255],
            [['member_type_name'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'member_type_name' => 'Member Type Name',
            'loan_limit' => 'Loan Limit',
            'loan_periode' => 'Loan Periode',
            'enable_reserve' => 'Enable Reserve',
            'reserve_limit' => 'Reserve Limit',
            'member_periode' => 'Member Periode',
            'reborrow_limit' => 'Reborrow Limit',
            'fine_each_day' => 'Fine Each Day',
            'grace_periode' => 'Grace Periode',
            'input_date' => 'Input Date',
            'last_update' => 'Last Update',
            'id_tipe_koleksi' => 'Id Tipe Koleksi',
            'id_tipe_gmd' => 'Id Tipe Gmd',
            'created_by' => 'Created By',
            'updated_by' => 'Updated By',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
        ];
    }

    public function behaviors()
    {
        return [
            'timestamp' => [
                'class' => 'yii\behaviors\TimestampBehavior',
                'attributes' => [
                    ActiveRecord::EVENT_BEFORE_INSERT => ['created_at', 'updated_at'],
                    ActiveRecord::EVENT_BEFORE_UPDATE => ['updated_at'],
                ],
                'value' => new Expression('NOW()'),
            ],
            'blameable' => [
                'class' => BlameableBehavior::className(),
                'createdByAttribute' => 'created_by',
                'updatedByAttribute' => 'updated_by',
            ],
        ];
    }

    public function getTanggal($tanggal)  // fungsi atau method untuk mengubah hari, tanggal ke format indonesia
    {
        $BulanIndo = array("","Januari", "Februari", "Maret","April", "Mei", "Juni","Juli", "Agustus", "September","Oktober", "November", "Desember");
        $HariIndo= array("Minggu","Senin","Selasa","Rabu","Kamis","Jumat","Sabtu");
        $sepparator = '-';
        $parts = explode($sepparator, $tanggal);

        //$hari = $HariIndo[date("w", mktime(0, 0, 0, $parts[1], $parts[2], $parts[0]))]; //mendapatkan hari indonesia
        $tgl   = substr($tanggal, 8, 2); // memisahkan format tanggal menggunakan substring
        $bulan = substr($tanggal, 5, 2); // memisahkan format bulan menggunakan substring   
        $tahun = substr($tanggal, 0, 4); // memisahkan format tahun menggunakan substring

        //$result = $hari .", " .$tgl . " " . $BulanIndo[(int)$bulan] . " ". $tahun;
        $result = $tgl . " " . $BulanIndo[(int)$bulan] . " ". $tahun;
        return($result);
    }
   
}
