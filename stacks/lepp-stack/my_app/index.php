<?php

include 'config.php';

$conn = pg_connect("host=$db_hostname dbname=$db_database user=$db_username password=$db_password")
	or die('Could not connect: ' . pg_last_error());

echo "<h1> Successfully Connected to PostgreSQL</h1> \n \n";

$query = "SELECT * FROM colors;";
$result = pg_query($conn, $query) or die ('Query failed: ' . pg_last_error());

$status = pg_result_status($result);

if ($status == PGSQL_TUPLES_OK){
	echo "<ul> \n";
	while ($row = pg_fetch_array($result, null, PGSQL_ASSOC)){
		echo "<li> id: " . $row["id"] . " - Color: " . $row["name"] . " - Hex: " . $row["hex"] . "</li> \n";
	}
	echo "</ul>";
} else {
	echo "0 results found";
}

pg_free_result($result);

pg_close($conn);
