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
	$rv = "DB error: $dberr - Error mysql connect. Unable to get employee detail.";
	$log->writeLog($rv);

	print $rv;

	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$rv = "DB error: $dberr - Error selecting db Unable to get employee detail.";
	$log->writeLog($rv);

	print $rv;

	exit($rv);
}

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

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
	$log = new ErrorLog("logs/");
	$sqlerr = mysql_error();
	$rv = "SQL error: $sqlerr - Error doing get employee detail select. SQL = $sql";
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