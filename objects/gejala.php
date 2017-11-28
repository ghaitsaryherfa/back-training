<?php
class Gejala{
 
    // database connection and table name
    private $conn;
    private $table_name = "gejala";
 
    // object properties
    public $kode_gejala;
    public $nama_gejala;
 
    public function __construct($db){
        $this->conn = $db;
    }
 
    // used by select drop-down list
    public function readByPenyakit($kode_penyakit){
        //select all data
        $query = "SELECT
                    g.nama_gejala
                FROM
                    " . $this->table_name . " g, relasi r
                WHERE
                    g.kode_gejala = r.kode_gejala 
                    AND
                    r.kode_penyakit = ?";
 
        $stmt = $this->conn->prepare( $query );
        $stmt->bindParam(1, $kode_penyakit);
        $stmt->execute();
 
        return $stmt;
    }
}
?>