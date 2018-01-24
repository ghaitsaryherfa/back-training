<?php
    // include('forwardchaining.php');
        
    //menghitung persentasi penyakit
    $persentase = array();
    $kodepenyakit = array('P01','P02','P03','P04','P05','P06','P07','P08','P09','P10','P11','P12','P13','P14','P15');
    $hasil_akhir = array();
    $i=0;
    $j = 0;
    $input = 0.0;
    $jumlah_gejala = 0.0;
    
    //menjumlahkan gejala yang diinput
    for($i=0; $i<count($kodepenyakit); $i++){
        $sqlcari = "select ".$kodepenyakit[$i]." from tmp_hasil";
        $stmt_cari = $conn->prepare( $sqlcari );
        $stmt_cari->execute();

        while ($row = $stmt_cari->fetch(PDO::FETCH_ASSOC)){
            $input = $input+$row[$kodepenyakit[$i]];
        }

        $sqlhasil = "select kode_gejala from relasi where kode_penyakit = '".$kodepenyakit[$i]."'";
        $stmt_hasil = $conn->prepare( $sqlhasil );
        $stmt_hasil->execute();
        
        $jmlhasil = $stmt_hasil->rowCount();
        $persentase[$i] = ($input/$jmlhasil)*100;
        $input = 0.0;
        
        $sqlnama = "select nama_penyakit from penyakit where kode_penyakit = '".$kodepenyakit[$i]."'";
        $stmt_nama = $conn->prepare( $sqlnama );
        $stmt_nama->execute();
        
        while ($row = $stmt_nama->fetch(PDO::FETCH_ASSOC)){
            if ($j != 0) {
                $temp_array = [
                    "nama_penyakit" => $row["nama_penyakit"],
                    "persentase" => $persentase[$i]
                ];
                array_push ($hasil_akhir, $temp_array);
            } else {
                $j++;
            }
        }
    }
    echo json_encode($hasil_akhir);
?>
