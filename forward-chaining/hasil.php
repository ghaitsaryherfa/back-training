<?php
    include('forwardchaining.php');
    
    // $hasil = "select * from tmp_hasil";
    // $stmt_hasil = $conn->prepare( $hasil );
    // $stmt_hasil->execute();
    // $execute = mysqli_query ($conn, $hasil);
    
//    echo "
//    <table>
//    <tr>
//    <td>Kode_gejala</td>
//    <td>P01</td>
//    <td>P02</td>
//    <td>P03</td>
//    <td>P04</td>
//    <td>P05</td>
//    <td>P06</td>
//    <td>P07</td>
//    <td>P08</td>
//    <td>P09</td>
//    <td>P10</td>
//    <td>P11</td>
//    <td>P12</td>
//    <td>P13</td>
//    <td>P14</td>
//    <td>P15</td>        
//    </tr>";
//    if (mysqli_num_rows ($execute) > 0){
//        while ($row = mysqli_fetch_assoc($execute)){
//            echo "<tr>
//                <td>".$row["kode_gejala"]."</td>
//                <td>".$row["P01"]."</td>
//                <td>".$row["P02"]."</td>
//                <td>".$row["P03"]."</td>
//                <td>".$row["P04"]."</td>
//                <td>".$row["P05"]."</td>
//                <td>".$row["P06"]."</td>
//                <td>".$row["P07"]."</td>
//                <td>".$row["P08"]."</td>
//                <td>".$row["P09"]."</td>
//                <td>".$row["P10"]."</td>
//                <td>".$row["P11"]."</td>
//                <td>".$row["P12"]."</td>
//                <td>".$row["P13"]."</td>
//                <td>".$row["P14"]."</td>
//                <td>".$row["P15"]."</td>        
//                </tr>";
//        }
//    }
//    echo "</table>";
        
    //menghitung persentasi penyakit
    $persentase = array();
    $kodepenyakit = array('P01','P02','P03','P04','P05','P06','P07','P08','P09','P10','P11','P12','P13','P14','P15');
    $hasil_akhir = array();
    $i=0;
    $input = 0.0;
    $jumlah_gejala = 0.0;
    
    //menjumlahkan gejala yang diinput
    for($i=0; $i<count($kodepenyakit); $i++){
        $sqlcari = "select ".$kodepenyakit[$i]." from tmp_hasil";
        $stmt_cari = $conn->prepare( $sqlcari );
        $stmt_cari->execute();
        // $execute = mysqli_query($conn, $sqlcari);
        while ($row = $stmt_cari->fetch(PDO::FETCH_ASSOC)){
            $input = $input+$row[$kodepenyakit[$i]];
        }

        $sqlhasil = "select kode_gejala from relasi where kode_penyakit = '".$kodepenyakit[$i]."'";
        $stmt_hasil = $conn->prepare( $sqlhasil );
        $stmt_hasil->execute();
        // $exhasil = mysqli_query ($conn, $sqlhasil);
        $jmlhasil = $stmt_hasil->rowCount();
        $persentase[$i] = ($input/$jmlhasil)*100;
        $input = 0.0;
        
        $sqlnama = "select nama_penyakit from penyakit where kode_penyakit = '".$kodepenyakit[$i]."'";
        $stmt_nama = $conn->prepare( $sqlnama );
        $stmt_nama->execute();
        // $exsqlnama = mysqli_query ($conn, $sqlnama);
        while ($row = $stmt_nama->fetch(PDO::FETCH_ASSOC)){
            // $temp_array = [$row["nama_penyakit"] => $persentase[$i]];
            $temp_array = [
                "nama_penyakit" => $row["nama_penyakit"],
                "persentase" => $persentase[$i]
            ];
            array_push ($hasil_akhir, $temp_array);
//            echo $row["nama_penyakit"];
        }
    }
    echo json_encode($hasil_akhir);
?>
