<?php

require ('../class/class.Log.php');
include ('../class/class.ErrorLog.php');
include ('../class/class.AccessLog.php');

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Client List request started" );

//
// db connect
//
$modulecontent = "Unable to get client list.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// get patient information using information passed. limit 5 
//---------------------------------------------------------------

$sql = "SELECT * FROM clienttbl";

//
// sql query
//
$function = "select";
include ('mysqlquery.php');

$count = mysqli_num_rows($sql_result);
if ($count > 0)
{
	$rows = array();
	while($row = mysqli_fetch_assoc($sql_result)) {
	    $results[] = $row;
	}
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
	exit(json_encode($results));
}
?>
