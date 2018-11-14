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

//
// db connect
//
$modulecontent = "Unable to get weekly timesheet list.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// get week timesheet info for client 
//---------------------------------------------------------------
$sql = "SELECT 
	TS.id as timesheetid,
	TS.hours as hours, 
	TS.status as timesheetstatus, 
	TS.comments as comments,
	E.name as employeename,
	E.rate as rate,
	E.id as employeeid,
	ROUND(COALESCE((E.rate * TS.hours),0), 2) AS amount 
	FROM timesheettbl TS 
	LEFT JOIN employeetbl E ON E.id = TS.employeeid
	WHERE TS.clientid = $clientid 
	AND TS.weekending = '$weekendingTS'";

// echo "$sql";
// exit();

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
