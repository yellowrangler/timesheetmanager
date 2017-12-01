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
$entrydateTS = date("Y-m-d H:i:s", strtotime($entrydate));
$weekending = date("Y-m-d H:i:s", strtotime($weekending));

//---------------------------------------------------------------
// update timesheet table 
//---------------------------------------------------------------
$sql = "UPDATE timesheettbl 
	SET clientid = $projectid,	
	enterdate ='$entrydateTS',
	starttime = '$starttimeTS',";

	if ($stoptimeTS != "")	
	{
		$sql = $sql . "stoptime = '$stoptimeTS',";
	}	

$sql = $sql ."timeinterval = $interval,
	intervaldescription = '$comment'
	WHERE id = $projectdailytimeid";

// print $sql;

$rv = "";
$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
	$log = new ErrorLog("logs/");
	$sqlerr = mysql_error();
	$log->writeLog("SQL error: $sqlerr - Error doing insert to add daily time");
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
