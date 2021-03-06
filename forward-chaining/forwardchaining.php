<?php
    // //require header
    // header("Access-Control-Allow-Origin: *");
    // header("Content-Type: application/json; charset=UTF-8");

    // include database and object files
    // include_once '../config/database.php';

    //instantiate databse and product object
    $database = new Database();
    $conn = $database->getConnection();
        
    $sql_clear = "delete from tmp_hasil";
    $stmt_clear = $conn->prepare( $sql_clear );
    $stmt_clear->execute();
    
    $sql_tmpgejala = "select * from tmp_gejala";
    $stmt_tmpgejala = $conn->prepare( $sql_tmpgejala );
    $stmt_tmpgejala->execute();

    $kode_gejala = '';
    $kode_penyakit = '';
    $insert_eksekusi = '';
    $m = 0;

    
    if ($stmt_tmpgejala->rowCount() >0 ){
        while ($row = $stmt_tmpgejala->fetch(PDO::FETCH_ASSOC)){
            $kode_gejala = $row["kode_gejala"];
            $query = "select p.kode_penyakit from penyakit p inner join relasi r on 
            p.kode_penyakit = r.kode_penyakit inner join tmp_gejala tg on 
            r.kode_gejala = tg.kode_gejala where tg.kode_gejala = '".$row["kode_gejala"]."'";
            $stmt_query = $conn->prepare( $query );
            $stmt_query->execute();
            
            if ($stmt_query->rowCount() > 0){
                while ($row = $stmt_query->fetch(PDO::FETCH_ASSOC)){             
                    $kode_penyakit = $row["kode_penyakit"];
                    $insert = '';
                    
                    if($m==0){
                        $insert = "insert into tmp_hasil (kode_gejala,".$kode_penyakit.") values ('".$kode_gejala."', 1)";
                    }
                    else{
                        $insert = "update tmp_hasil set ".$kode_penyakit." = 1 where kode_gejala='".$kode_gejala."'";
                    }
                    $stmt_insert = $conn->prepare( $insert );
                    $stmt_insert->execute();
                    $m++;
                }
                
                $m = 0;
            }
            else{
                echo json_encode(
                    array("message" => "No penyakit found.".$row["kode_gejala"])
                );
            }
        }
        if (!$stmt_insert){
            echo "Gagal memasukan data";
        }

        include('hasil.php');
    }
    else{
        echo json_encode(
            array("message" => "No gejala found.")
        );
    }
    
?>