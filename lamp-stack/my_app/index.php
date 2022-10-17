<?php

include 'config.php';

$conn = new mysqli($db_hostname, $db_username, $db_password, $db_database);

if (!is_null($conn->connect_error)){
	echo "Connection Failed<br>";
	echo "Error Number: " . $e->getCode() . "<br>";
	echo "Error Message: " . $e->getMessage() . "br>";
	die();
}

echo "Successfully Connected <br> <br>";

$query = "SELECT * FROM colors;";
$result = $conn->query($query);

if (!$result)
{
	   echo 'Query error: ' . mysqli_error($mysqli);
	      die();
}

if ($result->num_rows > 0){
	while ($row = $result->fetch_assoc()){
		echo "id: " . $row["id"] . " - Color: " . $row["name"] . " - Hex: " . $row["hex"] . "<br>";
	}
} else {
	echo "0 results found";
}

$conn->close();
