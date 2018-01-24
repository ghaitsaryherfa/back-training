<?php
class Database{
    //database credential
    // private $host = "ap-cdbr-azure-southeast-b.cloudapp.net";
	private $host = "localhost";
	// private $db_name = "rumaji";
    private $db_name = "sistem_pakar";
    // private $db_name = "api_db";
	// private $db_user = "baaafb453f5db3";
    private $db_user = "root";
	// private $db_pass = "d2e42ccf";
    private $db_pass = "";
    public $conn;

    //get the database connection
    public function getConnection(){
        $this->conn =null;

        try{
            $this->conn = new PDO("mysql:host=".$this->host.";dbname=".$this->db_name, $this->db_user, $this->db_pass);
            $this->conn->exec("set names utf8");
        }catch(PDOException $exception){
            echo "Connection error: ".$exception->getMessage();
        }
        return $this->conn;
    }
}