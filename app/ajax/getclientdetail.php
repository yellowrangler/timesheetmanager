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
	$rv = "DB error: $dberr - Error mysql connect. Unable to get client detail.";
	$log->writeLog($rv);

	print $rv;

	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$rv = "DB error: $dberr - Error selecting db Unable to get client detail.";
	$log->writeLog($rv);

	print $rv;

	exit($rv);
}

//---------------------------------------------------------------
// get patient information using information passed. limit 5 
//---------------------------------------------------------------

$sql = "SELECT * FROM clienttbl WHERE id = $clientid";

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
	$log = new ErrorLog("logs/");
	$sqlerr = mysql_error();
	$rv = "SQL error: $sqlerr - Error doing get client detail select. SQL = $sql";
	$log->writeLog($rv);

	print $rv;

	exit($rv);
}

$count = mysql_num_rows($sql_result);
if ($count > 0)
{
	$rows = array();
	$row = mysql_fetch_assoc($sql_result);
}
else
{
	$row ="error";
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
	exit(json_encode($row));
}
?>
