<?php
//require header
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

//include database and object files
include_once '../config/database.php';
include_once "../objects/penyakit.php";
include_once "../objects/gejala.php";

//instantiate databse and product object
$database = new Database();
$db = $database->getConnection();

//initialize object
$penyakit = new Penyakit($db);
$gejala = new Gejala($db);

//query penyakit
$stmt_penyakit = $penyakit->read();
$num_penyakit = $stmt_penyakit->rowCount();

//check if more than 0 record found
if($num_penyakit>0){
    //product array
    $penyakit_arr = array();
    $penyakit_arr["records"] = array();
    //extract row, this will make $row['name] to just $name only
    
    // retrieve our table contents
    while($row_penyakit = $stmt_penyakit->fetch(PDO::FETCH_ASSOC)){
        extract($row_penyakit);
        //query gejala
        $stmt_gejala = $gejala->readByPenyakit($kode_penyakit);
        $num_gejala = $stmt_gejala->rowCount();
        $gejala_arr=array();

        while($row_gejala = $stmt_gejala->fetch(PDO::FETCH_ASSOC)){
            //extract row, this will make $row['name] to just $name only
            extract($row_gejala);
            
            array_push($gejala_arr, $nama_gejala);
        }

        $penyakit=array(
            "kode_penyakit" => $kode_penyakit,
            "nama_penyakit" => $nama_penyakit,
            "penanganan" => $penanganan,
            "gejala" => $gejala_arr
        );

        array_push($penyakit_arr["records"], $penyakit);
    }
    echo json_encode($penyakit_arr);
}
else{
    echo json_encode(
        array("message" => "No products found.")
    );
}
?>