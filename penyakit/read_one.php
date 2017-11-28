<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: access");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Allow-Credentials: true");
header('Content-Type: application/json');
 
// include database and object files
include_once '../config/database.php';
include_once '../objects/penyakit.php';
include_once '../objects/gejala.php';

// get database connection
$database = new Database();
$db = $database->getConnection();
 
// prepare product object
$penyakit = new Penyakit($db);
$gejala = new Gejala($db);
 
// set ID property of product to be edited
$penyakit->kode_penyakit = isset($_GET['kode_penyakit']) ? $_GET['kode_penyakit'] : die();

// read the details of product to be edited
$penyakit->readOne();

//query gejala
$stmt_gejala = $gejala->readByPenyakit($penyakit->kode_penyakit);
$num_gejala = $stmt_gejala->rowCount();
$gejala_arr=array();

while($row_gejala = $stmt_gejala->fetch(PDO::FETCH_ASSOC)){
    //extract row, this will make $row['name] to just $name only
    extract($row_gejala);
    
    array_push($gejala_arr, $nama_gejala);
}
// create array
$penyakit = array(
    "kode_penyakit" => $penyakit->kode_penyakit,
    "nama_penyakit" => $penyakit->nama_penyakit,
    "penanganan" => $penyakit->penanganan,
    "gejala" => $gejala_arr
);

// make it json format
echo json_encode($penyakit);
?>