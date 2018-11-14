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
$modulecontent = "Unable to add week ending entry.";
include_once ('mysqlconnect.php');

// create time stamp versions for insert to mysql
$weekendingTS = date("Y-m-d H:i:s", strtotime($weekending));
$enterdateTS = date("Y-m-d H:i:s");


//---------------------------------------------------------------
// add week ending entered using information passed. 
//---------------------------------------------------------------
$sql = "INSERT INTO timesheettbl 
	(clientid, employeeid, hours, comments, weekending, status, enterdate) 
	VALUES ($clientid,$employeeid, $hours, '$comments', '$weekendingTS', 0, '$enterdateTS')";

// print $sql;

//
// sql query
//
$function = "insert";
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
