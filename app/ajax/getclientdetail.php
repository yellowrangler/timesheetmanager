<?php

require ('../class/class.Log.php');
include ('../class/class.ErrorLog.php');
include ('../class/class.AccessLog.php');

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

//
// get passed data
//
if( isset($_POST['clientid']) )
{
     $clientid = $_POST["clientid"];
}
else
{
	if( isset($_GET['clientid']) )
	{
	     $clientid = $_GET["clientid"];
	}
}

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("client detail request started" );

//
// db connect
//
$modulecontent = "Unable to get client detail.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// get patient information using information passed. limit 5 
//---------------------------------------------------------------

$sql = "SELECT * FROM clienttbl WHERE id = $clientid";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

$count = mysqli_num_rows($sql_result);
if ($count > 0)
{
	$rows = array();
	$row = mysqli_fetch_assoc($sql_result);
}
else
{
	$row ="error";
}

//
// close db connection
//
mysqli_close($dbConn);
	
//
// logging
//
// $returnArrayLog->writeLog("Patient List request ended.");	

//
// pass back info
//
if ($count > 0)
{
	exit(json_encode($row));
}
?>
