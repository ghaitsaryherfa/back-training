<?php
class Pertanyaan{
    //database connection and table name
    private $conn;
    private $table_name = "pertanyaan";

    //object properties
    public $kode;
    public $pertanyaan;

    //constructor with $db as database connection
    public function __construct($db){
        $this->conn = $db;
    }

    //read penyakit
    function read(){
        //select all query
        $query = "SELECT * FROM " . $this->table_name;

        //prepare query statement
        $stmt = $this->conn->prepare($query);

        //execute query
        $stmt->execute();

        return $stmt;
    }

    // used when filling up the update product form
    function readOne(){
    
       // query to read single record
       $query = "SELECT * FROM ". $this->table_name . " p WHERE p.kode = ?";
    
       // prepare query statement
       $stmt = $this->conn->prepare( $query );
    
       // bind id of product to be updated
       $stmt->bindParam(1, $this->kode);
    
       // execute query
       $stmt->execute();
    
       // get retrieved row
       $row = $stmt->fetch(PDO::FETCH_ASSOC);
    
       // set values to object properties
       $this->kode_penyakit = $row['kode_penyakit'];
       $this->nama_penyakit = $row['nama_penyakit'];
       $this->penanganan = $row['penanganan'];
   }
}