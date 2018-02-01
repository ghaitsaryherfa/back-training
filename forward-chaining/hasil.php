<?php
    // include('forwardchaining.php');
    include_once '../objects/penyakit.php';
        
    //menghitung persentasi penyakit
    $persentase = array();
    $kodepenyakit = array('P01','P02','P03','P04','P05','P06','P07','P08','P09','P10','P11','P12','P13','P14','P15');
    $hasil_akhir = array();
    $i=0;
    $j = 0;
    $x=0;
    $input = 0.0;
    $jumlah_gejala = 0.0;
    $queryJml = "";
    
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

        $x = 0;
        $queryJml = "select kode from jawaban where";
        while ($row = $stmt_hasil->fetch(PDO::FETCH_ASSOC)) {
            if($x==0) {
                $temp_query = " kode_gejala = '".$row["kode_gejala"]."'";
                $x++;
            } else {
                $temp_query = " OR kode_gejala = '".$row["kode_gejala"]."'";
            }
            $queryJml .= $temp_query;
        }
        $queryJml .= " group by kode";
        $stmt_jml = $conn->prepare($queryJml);
        $stmt_jml->execute();
        
        // $jmlhasil = $stmt_hasil->rowCount();
        $jmlhasil = $stmt_jml->rowCount();
        $persentase[$i] = ($input/$jmlhasil)*100;
        $input = 0.0;
        
        $sqlnama = "select nama_penyakit from penyakit where kode_penyakit = '".$kodepenyakit[$i]."'";
        $stmt_nama = $conn->prepare( $sqlnama );
        $stmt_nama->execute();
        while ($row = $stmt_nama->fetch(PDO::FETCH_ASSOC)){
            if ($j != 0) {
                $temp_array = [
                    "kode_penyakit" => $kodepenyakit[$i],
                    "nama_penyakit" => $row["nama_penyakit"],
                    "persentase" => $persentase[$i]
                ];
                array_push ($hasil_akhir, $temp_array);
            } else {
                $j++;
            }
        }
    }
    // sorting
    for ($k = 0; $k < count($hasil_akhir); $k++) {  
        for ($l = $k+1; $l < count($hasil_akhir); $l++) {
            if ($hasil_akhir[$k]["persentase"] < $hasil_akhir[$l]["persentase"]) {
                $temp = $hasil_akhir[$k];
                $hasil_akhir[$k] = $hasil_akhir[$l];
                $hasil_akhir[$l] = $temp;
            }
        }
    }
    array_splice($hasil_akhir, 3);

    if ($hasil_akhir[0]["persentase"] == 100) {
        $penyakit = new Penyakit($conn);
        $penyakit->kode_penyakit = $hasil_akhir[0]["kode_penyakit"];
        $penyakit->readOne();
        $hasil_akhir[0] =[
            "kode_penyakit" => $hasil_akhir[0]["kode_penyakit"],
            "nama_penyakit" => $hasil_akhir[0]["nama_penyakit"],
            "persentase" => $hasil_akhir[0]["persentase"],
            "penanganan" => $penyakit->penanganan
        ];
    }
    echo json_encode($hasil_akhir);
?>
