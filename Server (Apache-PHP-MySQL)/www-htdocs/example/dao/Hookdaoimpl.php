<?php

include 'databaseConnect.php';
include 'databaseConnectInterface.php';
include 'MyTransportAPI.php';


class HookDaoimplement implements HookDao
{
	function __construct() {
       	$db = new databaseConnect();
		$db->dbconnect();
   }
   
      function __destruct() {
		  global $conn;
       mysqli_close($conn);
   }
   
   // 0 update, 1 select, 2 delete, 
	function sqlcommands($sqlq, $number){
			global $conn;
			$result = $conn->query($sqlq);
			if ($number == 1)
			{
				$check = mysqli_fetch_all($result, MYSQLI_ASSOC);
				return $check;
			}
			else
			{
				return $result;
			}
	}
   
	function login()
	{
		if($_SERVER['REQUEST_METHOD']=='POST')
		{
			$username = $_POST["username"];
			$pwd = $_POST["pwd"];
			$sql = "SELECT * FROM users WHERE username = '$username' AND pwd ='$pwd'";
			$checklogin = $this->sqlcommands($sql, 1);
			if (isset($checklogin) && !empty($checklogin))
			{
				if($checklogin[0]['lvl'] == 99)
					echo "admin";
				else if ($checklogin[0]['lvl'] == 0)
					echo "user";
			}
			else
			{
				echo "failure";
			}
		}
		else
		{
				echo "failure";
		}
	}
	
	function addbookmark()
	{
		if($_SERVER['REQUEST_METHOD']=='POST')
		{
			$username = $_POST["username"];
			$bookmark = $_POST["bookmarkname"];
			$latitude = $_POST["latitude"];
			$longtitude = $_POST["longtitude"];

		$sql = "INSERT INTO favourites (username,favourite,latitude,longtitude) VALUES ('$username','$bookmark','$latitude','$longtitude') ON DUPLICATE KEY UPDATE favourite=favourite";
		$sqlcheck = "SELECT * FROM favourites WHERE username = '$username' AND favourite = '$bookmark'";
		$check = $this->sqlcommands($sqlcheck,1);
		
		if(sizeof($check) == 0)
		{
			$check2 = $this->sqlcommands($sql,0);
			if ($check2 )
				echo "success";
			else
				echo "unsuccessful";
		}
		else
			echo "duplicate";
		}
	}
	
	function register()
	{
		if($_SERVER['REQUEST_METHOD']=='POST')
		{
			$username = $_POST["username"];
			$pwd = $_POST["pwd"];
			
		
		$sql = "INSERT INTO users (username,pwd) VALUES ('$username','$pwd')";
		$result = $this->sqlcommands($sql,0);
		
		if ($result)
			echo "success";
		else
			echo "unsuccessful";
		}
	}
	
	function getTrafficFeed()
	{
		if($_SERVER['REQUEST_METHOD']=='GET')
		{
		$sql = "SELECT * FROM trafficnews ORDER BY date_time DESC LIMIT 30 ";
		$check = $this->sqlcommands($sql,1);
		
		if ( isset($check) )
		{
			echo json_encode($check);
		}
		else
		{
			echo "error";	
		}
		}
	}

	
	function deletebookmark()
	{
		if($_SERVER['REQUEST_METHOD']=='POST')
		{
			$username = $_POST["username"];
			$bookmark = $_POST["bookmarkname"];
			
		$sqlcheck = "SELECT * FROM favourites WHERE username = '$username' AND favourite = '$bookmark'";
		$check = $this->sqlcommands($sqlcheck,1);
		if(sizeof($check) == 1)
		{
			$sql = "DELETE FROM favourites WHERE (username = '$username' AND favourite = '$bookmark')";
			$delresult = $this->sqlcommands($sql,2);
			if($delresult)
			{
				$sql2 = "SELECT favourite,latitude,longtitude FROM favourites WHERE username = '$username'";
				$getresultcheck = $this->sqlcommands($sql2,1);
				echo json_encode($getresultcheck);
			}
			else
				echo "failed";
		}
		else
			echo "No record found";
		}
	}
	
	function getBookMark()
	{
		if($_SERVER['REQUEST_METHOD']=='GET')
		{
			$username = $_GET["username"];
			$sql = "SELECT favourite,latitude,longtitude FROM favourites WHERE username = '$username'";
			$checkTrafficFeed = $this->sqlcommands($sql,1);
		if ( isset($checkTrafficFeed) )
			echo json_encode($checkTrafficFeed);
		else
			echo "error";
		
		}
	}
	
		function index()
	{
		$getAPI = new MyTransportAPI();
		$obj = $getAPI->getMyTransportAPIObj();
		
		for ($x = (sizeof($obj->value)-1); $x>=0; $x--)
		{
			$x1 = $obj->value[$x]->Type;
			$x2 = $obj->value[$x]->Latitude;
			$x3 = $obj->value[$x]->Longitude;
			$x4 = $obj->value[$x]->Message;
			$myArray = explode(' ', $x4);
			$addzero = explode(')',$myArray[0]);
			
			if(4 == strlen($addzero[1]))
			{
				$addzero[1] = "0" . $addzero[1];
				$myArray[0] = $addzero[0] . ')' . $addzero[1];
			}				
		
		
		$sql2 = "INSERT INTO trafficnews (Type, Latitude, Longtitude, Message, date_time)
				VALUES ('$x1', '$x2', '$x3', '$x4','$myArray[0]') ON DUPLICATE KEY UPDATE message = message";

		if ($this->sqlcommands($sql2,3) === TRUE) 
		{
			//echo "New record created successfully";
		} 
		else 
		{
			echo "Error: " . $sql2 . "<br>" . $conn->error;
		}
	}	
	}
	
	
}
$HookDaoimplement = new HookDaoimplement();
switch($_GET['function']) {
case 'login':
	$HookDaoimplement->login();
	break;
case 'addbookmark':
	$HookDaoimplement->addbookmark();
	break;
case 'register':
	$HookDaoimplement->register();
	break;
case 'deletebookmark':
	$HookDaoimplement->deletebookmark();
	break;
case 'getTrafficFeed':
	$HookDaoimplement->getTrafficFeed();
	break;
case 'getBookMark':
	$HookDaoimplement->getBookMark();
	break;
case 'index':
	$HookDaoimplement->index();
	break;

}
//http://172.21.148.166/example/dao/Hookdaoimpl.php?function=login/addbookmark/register/deletebookmark/...

?>