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

//
// db connect
//
$modulecontent = "Unable to update week ending entry.";
include_once ('mysqlconnect.php');


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

//
// sql query
//
$function = "update";
include ('mysqlquery.php');

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
exit($rv);
?>
