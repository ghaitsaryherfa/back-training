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

//query penyakit
$delete = $jawaban->deleteJawaban();

if ($delete == "success") {
    echo json_encode(
        array("message" => "Data has been deleted.")
    );
}
else{
    echo json_encode(
        array("message" => "Failed to delete data.")
    );
}
?>