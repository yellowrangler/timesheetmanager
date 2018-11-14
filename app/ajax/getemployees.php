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
// $returnArrayLog->writeLog("employee List request started" );

//
// db connect
//
$modulecontent = "Unable to get employee list.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// get employee information  
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
	ORDER BY name";


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
