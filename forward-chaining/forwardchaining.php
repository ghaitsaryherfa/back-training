<?php
    // include ('connect.php');
    //require header
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");

    //include database and object files
    include_once '../config/database.php';

    //instantiate databse and product object
    $database = new Database();
    $conn = $database->getConnection();
        
    $sql_clear = "delete from tmp_hasil";
    $stmt_clear = $conn->prepare( $sql_clear );
    $stmt_clear->execute();
    // $clear = mysqli_query ($conn, $sql_clear);
    
    
    $sql_tmpgejala = "select * from tmp_gejala";
    $stmt_tmpgejala = $conn->prepare( $sql_tmpgejala );
    $stmt_tmpgejala->execute();
    // $eksekusi = mysqli_query ($conn, $sql_tmpgejala);

    $kode_gejala = '';
    $kode_penyakit = '';
    $insert_eksekusi = '';
    $i=0;

    
    if ($stmt_tmpgejala->rowCount() >0 ){
        while ($row = $stmt_tmpgejala->fetch(PDO::FETCH_ASSOC)){
//            echo $row["kode_gejala"]."<br>"; // G03
            $kode_gejala = $row["kode_gejala"];
            $query = "select p.kode_penyakit from penyakit p inner join relasi r on 
            p.kode_penyakit = r.kode_penyakit inner join tmp_gejala tg on 
            r.kode_gejala = tg.kode_gejala where tg.kode_gejala = '".$row["kode_gejala"]."'";
            $stmt_query = $conn->prepare( $query );
            $stmt_query->execute();
            // $sql_query = mysqli_query ($conn, $query);
            
            if ($stmt_query->rowCount() > 0){
                while ($row = $stmt_query->fetch(PDO::FETCH_ASSOC)){
//                    echo $row["kode_penyakit"]."<br>"; // P02                   
                    $kode_penyakit = $row["kode_penyakit"];
                    $insert = '';
                    
                    if($i==0){
                        $insert = "insert into tmp_hasil (kode_gejala,".$kode_penyakit.") values ('".$kode_gejala."', 1)";
                    }
                    else{
                        $insert = "update tmp_hasil set ".$kode_penyakit." = 1 where kode_gejala='".$kode_gejala."'";
                    }
                    $stmt_insert = $conn->prepare( $insert );
                    $stmt_insert->execute();
                    // $insert_eksekusi = mysqli_query ($conn, $insert);
                    $i++;
                }
                
                $i = 0;
            }
            else{
                echo "0 results";
            }
        }
        if (!$stmt_insert){
            echo "Gagal memasukan data";
        }
    }
    else{
        echo "0 results";
    }
    
?>