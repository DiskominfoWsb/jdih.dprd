<?PHP
header("Content-Type: application/json");
$servername = "localhost";//diisi nama server
$username = "root";//diisi nama user db
$password = "";//diisi password db
$dbname = "";//diisi nama database
$varjson = array();
$row_array = (object)array();
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$sql="SELECT document.id AS sc_id, document.tahun_terbit AS sc_tahun, document.tanggal_penetapan AS sc_penetapan, document.tanggal_pengundangan AS sc_pengundangan, document.bentuk_peraturan AS sc_jenis, document.nomor_peraturan AS sc_nomor, document.judul AS sc_judul, document.nomor_panggil AS sc_panggil, document.singkatan_jenis AS sc_singkatan, document.tempat_terbit AS sc_tempat, document.penerbit AS sc_penerbit, document.deskripsi_fisik AS sc_fisik, document.sumber AS sc_sumber, data_subyek.subyek AS sc_subyek, document.isbn AS sc_isbn, document.status AS sc_status, document.bahasa AS sc_bahasa, document.bidang_hukum AS sc_bidkum, data_pengarang_fix.teu AS sc_teu, document.nomor_induk_buku AS sc_nib, data_lampiran.dokumen_lampiran AS sc_lampiran, data_lampiran.url_lampiran AS sc_url
FROM document
LEFT JOIN data_lampiran ON document.id = data_lampiran.id_dokumen
LEFT JOIN data_subyek ON document.id = data_subyek.id_dokumen
LEFT JOIN (SELECT data_pengarang.id, data_pengarang.id_dokumen, data_pengarang.nama_pengarang, pengarang.`name` AS teu FROM data_pengarang LEFT JOIN pengarang ON data_pengarang.nama_pengarang = pengarang.id) data_pengarang_fix ON document.id = data_pengarang_fix.id_dokumen"; //query sql yang disesuaikan
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
$row_array->idData=$row["sc_id"]; //berisi id dokumen
$row_array->tahun_pengundangan=$row["sc_tahun"]; //berisi tahun penetapan atau tahun terbit ex. 2019
$row_array->tanggal_pengundangan=$row["sc_pengundangan"]; //berisi tahun bulan tanggal (YYYY-MM-DD) ex. 2019-04-22
$row_array->jenis=$row["sc_jenis"]; //berisi jenis peraturan ex. Peraturan Daerah
$row_array->noPeraturan=$row["sc_nomor"]; //berisi no peraturan ex. 24
$row_array->judul=$row["sc_judul"]; //berisi judul ex. Peraturan Pemerintah No 1 Tahun 2019 Tentang Peraturan
$row_array->noPanggil=$row["sc_panggil"]; //khusus untuk monografi/buku bila PUU bisa dikosongkan atau diisi '-'
$row_array->singkatanJenis=$row["sc_singkatan"]; //berisi singkatan dari jenis ex. PERMEN/KEPMEN
$row_array->tempatTerbit=$row["sc_tempat"]; //berisi tempat terbit
$row_array->penerbit=$row["sc_penerbit"]; //khusus untuk monografi/buku bila PUU bisa dikosongkan atau diisi '-'
$row_array->deskripsiFisik=$row["sc_fisik"]; //khusus untuk monografi/buku bila PUU bisa dikosongkan atau diisi '-'
$row_array->sumber=$row["sc_sumber"]; //berisi sumber dokumen hukum, contoh PUU bersumber dari Berita Negara Tahun .... Nomor .....
$row_array->subjek=$row["sc_subyek"]; //berisi kata kunci dari dokumen hukum
$row_array->isbn=$row["sc_isbn"]; //khusus untuk monografi/buku bila PUU bisa dikosongkan atau diisi '-'
$row_array->status=$row["sc_status"]; //berisi status PUU ex.berlaku/tidak berlaku
$row_array->bahasa=$row["sc_bahasa"]; //berisi bahasa dari dokumen hukum tersebut
$row_array->bidangHukum=$row["sc_bidkum"]; //berisi pembidangan/pengkategorian isi dokumen hukum(opsional menyesuaikan kebutuhan instansi)
$row_array->teuBadan=$row["sc_teu"];//nama instansi terkait
$row_array->nomorIndukBuku=$row["sc_nib"];//khusus untuk monografi/buku bila PUU bisa dikosongkan atau diisi '-'
$row_array->fileDownload=$row["sc_lampiran"]; //berisi nama file ex. peraturan.pdf, peraturan.docx
$row_array->urlDownload=$row["sc_url"];//berisi url dan nama file ex. domain.com/peraturan.pdf atau menyesuaikan
$row_array->urlDetailPeraturan='http://gantidengansubdomain/dokumen/view?id='.$row["sc_id"]; //berisi url halaman detail peraturan silahkan ganti s..........
$row_array->operasi="4"; //wajib ada
$row_array->display="1"; //wajib ada
      array_push($varjson,json_decode(json_encode($row_array)));
    }
    echo json_encode($varjson);
} else {
    echo "0 results";
}
$conn->close();
            ?>
