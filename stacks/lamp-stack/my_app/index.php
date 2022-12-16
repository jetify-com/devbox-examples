<?php

include 'config.php';

$conn = pg_connect("host=$db_hostname dbname=$db_database user=$db_username password=$db_password")
	or die('Could not connect: ' . pg_last_error());

echo "Successfully Connected <br> <br>";

$query = "SELECT * FROM colors;";
$result = pg_query($conn, $query) or die ('Query failed: ' . pg_last_error());

$status = pg_result_status($result);

if ($status == PGSQL_TUPLES_OK){
	while ($row = pg_fetch_array($result, null, PGSQL_ASSOC)){
		echo "id: " . $row["id"] . " - Color: " . $row["name"] . " - Hex: " . $row["hex"] . "<br>";
	}
} else {
	echo "0 results found";
}

pg_free_result($result);

pg_close($conn);
