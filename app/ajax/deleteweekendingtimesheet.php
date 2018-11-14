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

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Client List request started" );

//
// db connect
//
$modulecontent = "Unable to delete weekly ending timesheet.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// delete daily time entered using information passed. 
//---------------------------------------------------------------
$sql = "DELETE FROM timesheettbl WHERE id = $timesheetid";

// print $sql;
// die();

//
// sql query
//
$function = "delete";
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
