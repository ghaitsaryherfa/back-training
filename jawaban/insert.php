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

//get data
$kode_gejala = $_POST["kode_gejala"];

//query penyakit
$insert = $jawaban->addJawaban($kode_gejala);

if ($insert == "success") {
    echo json_encode(
        array("message" => "Data has been added successfully.")
    );
}
else{
    echo json_encode(
        array("message" => "Failed to add data.")
    );
}
?>