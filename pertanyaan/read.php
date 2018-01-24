<?php
//require header
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

//include database and object files
include_once '../config/database.php';
include_once "../objects/pertanyaan.php";
include_once "../objects/jawaban.php";

//instantiate databse and product object
$database = new Database();
$db = $database->getConnection();

//initialize object
$pertanyaan = new Pertanyaan($db);
$jawaban = new Jawaban($db);

//query pertanyaan
$stmt_pertanyaan = $pertanyaan->read();
$num_pertanyaan = $stmt_pertanyaan->rowCount();

//flag
$i = 0;
//check if more than 0 record found
if($num_pertanyaan>0){
    //product array
    $pertanyaan_arr = array();
    $pertanyaan_arr["records"] = array();
    //extract row, this will make $row['name] to just $name only
    
    // retrieve our table contents
    while($row_pertanyaan = $stmt_pertanyaan->fetch(PDO::FETCH_ASSOC)){
        extract($row_pertanyaan);
        //query jawaban
        $stmt_jawaban = $jawaban->readByPertanyaan($kode);
        $num_jawaban = $stmt_jawaban->rowCount();
        $jawaban_arr=array();

        while($row_jawaban = $stmt_jawaban->fetch(PDO::FETCH_ASSOC)){
            //extract row, this will make $row['name] to just $name only
            extract($row_jawaban);
            $temp_array = [
                "kode_gejala" => $kode_gejala,
                "nama_gejala" => $nama_gejala
            ];
            array_push($jawaban_arr, $temp_array);
        }

        if ($i > 1) {
            $temp_array = [
                "kode_gejala" => "G00",
                "nama_gejala" => "Tidak"
            ];
            array_push($jawaban_arr, $temp_array);
        } else {
            $i++;
        }
        

        $pertanyaan=array(
            "kode" => $kode,
            "pertanyaan" => $pertanyaan,
            "jawaban" => $jawaban_arr
        );

        array_push($pertanyaan_arr["records"], $pertanyaan);
    }
    echo json_encode($pertanyaan_arr);
}
else{
    echo json_encode(
        array("message" => "No pertanyaan found.")
    );
}
?>