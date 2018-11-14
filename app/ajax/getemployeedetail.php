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
if( isset($_POST['employeeid']) )
{
     $employeeid = $_POST["employeeid"];
}
else
{
	if( isset($_GET['employeeid']) )
	{
	     $employeeid = $_GET["employeeid"];
	}
}

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("employee detail request started" );

//
// db connect
//
$modulecontent = "Unable to get employee detail.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// get patient information using information passed. limit 5 
//---------------------------------------------------------------

$sql = "SELECT id as employeeid,
	name,
	address1,
	address2,
	city,
	state,
	zip,
	phone,
	email,
	rate,
	status 
	FROM employeetbl
	WHERE id = $employeeid";

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
