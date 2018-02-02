<?php 

echo "Integrantes AM Endava"."<br>";

/*
$mysqli = mysqli_connect("localhost", "root", "asdf1201", "amendava");
$result = $mysqli->query("SELECT * FROM members");

while ($actor = $resultado->fetch_assoc()) {
    echo $actor;
}
*/

$pdo = new PDO('mysql:host=localhost:3606;dbname=amendava', 'root', 'asdf1201');
$statement = $pdo->query("SELECT * FROM members");


while($row = $statement->fetch(PDO::FETCH_ASSOC)) {
	echo $row['idmembers'].". ".$row['name']."<br>";
}

?>