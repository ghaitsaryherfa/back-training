<?php
//require header
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");

//include database and object files
include_once '../config/database.php';
include_once "../objects/jawaban.php";

//instantiate databse and product object
$database = new Database();
$db = $database->getConnection();

//initialize object
$jawaban = new Jawaban($db);

// delete data
$delete = $jawaban->deleteJawaban();

//get data
// $kode_gejala = $_POST["answer"];
// echo $kode_gejala;
$kode_gejala_arr = [];
$input = json_decode(file_get_contents('php://input'), true);

if (!isset($input[0]["jawaban"])) {
    echo json_encode(
        array("message" => "Wrong format.")
    );
} else {
    $kode_gejala_arr = $input[0]["jawaban"];
    for ($n = 0; $n < count($kode_gejala_arr); $n++) {
        if(!isset($kode_gejala_arr[$n]["kode_gejala"])) {
            echo json_encode(
                array("message" => "Wrong format.")
            );
            break;
        } else {
            $kode_gejala = $kode_gejala_arr[$n]["kode_gejala"];
            if ($kode_gejala != "G00") {
                $insert = $jawaban->addJawaban($kode_gejala);
        
                if ($n == count($kode_gejala_arr)-1 && $insert == "success") {
                    // echo json_encode(
                    //     array("message" => "Data has been added successfully.")
                    // );
                    include('../forward-chaining/forwardchaining.php');
                }
                else if($n == count($kode_gejala_arr)-1){
                    echo json_encode(
                        array("message" => "Failed to add data.")
                    );
                }
            }
        }
    }
}
    

?>