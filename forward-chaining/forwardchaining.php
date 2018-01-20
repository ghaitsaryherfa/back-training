<?php
    include ('connect.php');
    
    $sql_clear = "delete from tmp_hasil";
    $clear = mysqli_query ($conn, $sql_clear);
    
    
    $sql_tmpgejala = "select * from tmp_gejala";
    $eksekusi = mysqli_query ($conn, $sql_tmpgejala);

    $kode_gejala = '';
    $kode_penyakit = '';
    $insert_eksekusi = '';
    $i=0;

    
    if (mysqli_num_rows ($eksekusi) >0 ){
        while ($row = mysqli_fetch_assoc($eksekusi)){
//            echo $row["kode_gejala"]."<br>"; // G03
            $kode_gejala = $row["kode_gejala"];
            $query = "select p.kode_penyakit from penyakit p inner join relasi r on 
            p.kode_penyakit = r.kode_penyakit inner join tmp_gejala tg on 
            r.kode_gejala = tg.kode_gejala where tg.kode_gejala = '".$row["kode_gejala"]."'";
            $sql_query = mysqli_query ($conn, $query);
            
            if (mysqli_num_rows ($sql_query) > 0){
                while ($row = mysqli_fetch_assoc($sql_query)){
//                    echo $row["kode_penyakit"]."<br>"; // P02                   
                    $kode_penyakit = $row["kode_penyakit"];
                    $insert = '';
                    
                    if($i==0){
                        $insert = "insert into tmp_hasil (kode_gejala,".$kode_penyakit.") values ('".$kode_gejala."', 1)";
                    }
                    else{
                        $insert = "update tmp_hasil set ".$kode_penyakit." = 1 where kode_gejala='".$kode_gejala."'";
                    }
                    $insert_eksekusi = mysqli_query ($conn, $insert);
                    $i++;
                }
                
                $i = 0;
            }
            else{
                echo "0 results";
            }
        }
        if (!$insert_eksekusi){
            echo "Gagal memasukan data";
        }
    }
    else{
        echo "0 results";
    }
    
?>