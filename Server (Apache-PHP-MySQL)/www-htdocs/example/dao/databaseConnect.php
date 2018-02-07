<?php
class databaseConnect
{
	function dbconnect()
	{
		global $conn;
		$conn = mysqli_connect("localhost","root","bloop1994","users");
		if (!$conn)
			die('Error Connecting To Database');
	}
}
?>