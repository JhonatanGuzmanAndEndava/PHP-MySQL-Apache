<?php
    class Conection {
        var $user;
        var $password;
        var $url;
        var $port;
        var $schema;

        var $pdo;

        function __construct($user, $password, $url, $port, $schema) {
            $this->user = $user;
            $this->password = $password;
            $this->url = $url;
            $this->port = $port;
            $this->schema = $schema;
        }

        function makeConection() {

            $str = "mysql:host=".$this->url.":".$this->port.";dbname=".$this->schema;
            $this->pdo = new PDO($str, $this->user, $this->password); //handle error 
            return $this->pdo;
        }

        function getAllRegisters() {
            $statement = $this->pdo->query("SELECT * FROM members");
            while($row = $statement->fetch(PDO::FETCH_ASSOC)) {
                echo $row['idmembers'].". ".$row['name']." ".$row['enterprise']."<br>";
            }
        }

    }
?>