<?php
class Jawaban{
 
    // database connection and table name
    private $conn;
    private $table_name = "jawaban";
 
    // object properties
    public $kode;
    public $kode_gejala;
 
    public function __construct($db){
        $this->conn = $db;
    }
 
    // used by select drop-down list
    public function readByPertanyaan($kode_pertanyaan){
        //select all data
        $query = "SELECT
                    g.kode_gejala, g.nama_gejala
                FROM
                    " . $this->table_name . " j, gejala g
                WHERE
                    g.kode_gejala = j.kode_gejala 
                    AND
                    j.kode = ?";
 
        $stmt = $this->conn->prepare( $query );
        $stmt->bindParam(1, $kode_pertanyaan);
        $stmt->execute();
 
        return $stmt;
    }

    public function addJawaban($kode_gejala){
        //insert into tmp_gejala
        $query = "INSERT INTO
                    tmp_gejala (kode_gejala)
                    VALUES ('".$kode_gejala."')
                    ";
        $this->conn->exec($query);
 
        return "success";
    }

    public function deleteJawaban(){
        //insert into tmp_gejala
        $query = "DELETE FROM tmp_gejala";
        $this->conn->exec($query);
 
        return "success";
    }
}
?>