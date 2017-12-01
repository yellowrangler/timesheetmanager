<?php

require ('../class/class.Log.php');
include ('../class/class.ErrorLog.php');
include ('../class/class.AccessLog.php');

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");


$clientid = "";
$weekending = "";

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

if( isset($_POST['weekending']) )
{
     $weekending = $_POST["weekending"];
}
else
{
	if( isset($_GET['weekending']) )
	{
	     $weekending = $_GET["weekending"];
	}
}

// create time stamp versions for select
$entrydateTS = "";
if ($weekending != "")
{
	$weekendingTS = date("Y-m-d H:i:s", strtotime($weekending));

}

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Get time entry daily started" );

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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to get weekly timesheet list.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to get weekly timesheet list.");

	$rv = "";
	exit($rv);
}

//---------------------------------------------------------------
// get week timesheet info for client 
//---------------------------------------------------------------
$sql = "SELECT 
	TS.id as timesheetid,
	TS.hours as hours, 
	TS.comments as comments,
	E.name as employeename,
	E.rate as rate,
	E.id as employeeid,
	COALESCE((E.rate * TS.hours),0) AS amount 
	FROM timesheettbl TS 
	LEFT JOIN employeetbl E ON E.id = TS.employeeid
	WHERE TS.clientid = $clientid 
	AND TS.weekending = '$weekendingTS'";

// echo "$sql";
// exit();

$sql_result = @mysql_query($sql, $dbConn);
if (!$sql_result)
{
	$log = new ErrorLog("logs/");
	$sqlerr = mysql_error();
	$log->writeLog("SQL error: $sqlerr - Error doing weekly timesheet list. select");
	$log->writeLog("SQL: $sql");

	$rv = "";
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
