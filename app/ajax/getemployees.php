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

//------------------------------------------------------
// get admin user info
//------------------------------------------------------
// open connection to host
$DBhost = "localhost";
$DBschema = "tsm";
$DBuser = "tarryc";
$DBpassword = "tarryc";

//
// connect to db
//
$dbConn = @mysql_connect($DBhost, $DBuser, $DBpassword);
if (!$dbConn) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$rv = "DB error: $dberr - Error mysql connect. Unable to get employee list.";
	$log->writeLog($rv);

	print $rv;

	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$rv = "DB error: $dberr - Error selecting db Unable to get employee list.";
	$log->writeLog($rv);

	print $rv;

	exit($rv);
}

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

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
	$log = new ErrorLog("logs/");
	$sqlerr = mysql_error();
	$rv = "SQL error: $sqlerr - Error doing get employee list select. SQL = $sql";
	$log->writeLog($rv);

	print $rv;

	exit($rv);
}

$count = mysql_num_rows($sql_result);
if ($count > 0)
{
	$rows = array();
	while($row = mysql_fetch_assoc($sql_result)) {
	    $results[] = $row;
	}
}

//
// close db connection
//
mysql_close($dbConn);
	
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
