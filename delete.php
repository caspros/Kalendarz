<?php
	session_start();
	// connect to datebase 
	$miesiac=$_SESSION['miesiac'];
	$rok = $_SESSION['currY'];
    require_once 'connect.php';
    $config = new DB_Config;
    $conn = new mysqli($config->servername, $config->username, $config->password, $config->dbname);
	$conn -> query("SET NAMES 'utf8'");
	// delete data in mysql database 
	$id = ''; 
	if( isset( $_GET['id']))
	{
    	$id = '"'.$_GET['id'].'"'; 
	} 
	$sql = "DELETE FROM events WHERE id=$id";
	if ($conn->query($sql) === TRUE)
	{
		header('Location: index.php?month='.$miesiac.'&year='.$rok);
		exit();
	} else {
   	echo "Error: " . $sql . "<br>" . $conn->error;
	}
	
?>