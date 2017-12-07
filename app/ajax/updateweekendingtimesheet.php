<?php

require ('../class/class.Log.php');
include ('../class/class.ErrorLog.php');
include ('../class/class.AccessLog.php');

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

// print_r($_POST);
// die();

// get post values
$timesheetid = $_POST["timesheetid"];
$clientid = $_POST["clientid"];
$employeeid = $_POST["employeeid"];
$weekending = $_POST["weekending"];
$hours = $_POST["hours"];
$comments = $_POST["comments"];

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Client List request started" );

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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to update week ending entry.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to update week ending entry.");

	$rv = "";
	exit($rv);
}

// create time stamp versions for insert to mysql
$weekendingTS = date("Y-m-d H:i:s", strtotime($weekending));
$enterdateTS = date("Y-m-d H:i:s");

//---------------------------------------------------------------
// update timesheet table 
//---------------------------------------------------------------
$sql = "UPDATE timesheettbl 
	SET clientid = $clientid,
	employeeid = '$employeeid',
	hours = '$hours',
	comments = '$comments',
	weekending = '$weekendingTS',	
	enterdate ='$enterdateTS' 
	WHERE id = $timesheetid";

// print $sql;
// exit();

$rv = "";
$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
	$log = new ErrorLog("logs/");
	$sqlerr = mysql_error();
	$log->writeLog("SQL error: $sqlerr - Error doing update to update week ending entrye");
	$log->writeLog("SQL: $sql");

	exit($rv);
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
exit($rv);
?>
