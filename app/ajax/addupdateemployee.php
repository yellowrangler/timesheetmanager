<?php

require ('../class/class.Log.php');
include ('../class/class.ErrorLog.php');
include ('../class/class.AccessLog.php');

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

//------------------------------------------------------
// get employee data 
//------------------------------------------------------
$employeeid = $_POST["employeeid"];
$employeename = $_POST["employeename"];
$employeeaddress1 = $_POST["employeeaddress1"];
$employeeaddress2 = $_POST["employeeaddress2"];
$employeecity = $_POST["employeecity"];
$employeestate = $_POST["employeestate"];
$employeezip = $_POST["employeezip"];
$employeerate = $_POST["employeerate"];
$employeephone = $_POST["employeephone"];
$employeeemail = $_POST["employeeemail"];
$employeestatus = $_POST["employeestatus"];

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("employee details request started" );

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
	$log->writeLog("DB error: $dberr - Error mysql connect. Unable to add/update employee details.");

	$rv = "";
	exit($rv);
}

if (!mysql_select_db($DBschema, $dbConn)) 
{
	$log = new ErrorLog("logs/");
	$dberr = mysql_error();
	$log->writeLog("DB error: $dberr - Error selecting db Unable to add/update employee details.");

	$rv = "";
	exit($rv);
}

//---------------------------------------------------------------
// add or update patient information using information passed. 
// if employeeid = null insert else update
//---------------------------------------------------------------

$sql = "";

if ($employeeid == "")
{
	//--------------------------------------
	// we are an add
	//--------------------------------------
	$sql = "INSERT INTO employeetbl
		( name, 
		  address1, 
		  address2, 
		  city, 
		  state, 
		  zip, 
		  rate,
		  phone,
		  email,
		  status)
		VALUES
		( '$employeename', 
		  '$employeeaddress1', 
		  '$employeeaddress2', 
		  '$employeecity', 
		  '$employeestate', 
		  '$employeezip', 
		  '$employeerate', 
		  '$employeephone', 
		  '$employeeemail',  
		  '$employeestatus')";

// print $sql;
// exit();

	$sql_result = @mysql_query($sql, $dbConn);
	if (!$sql_result)
	{
		$log = new ErrorLog("logs/");
		$sqlerr = mysql_error();
		$log->writeLog("SQL error: $sqlerr - Error doing insert employee for add/update employee details");
		$log->writeLog("SQL: $sql");

		$rv = "";
		exit($rv);
	}	

	$employeeid = mysql_insert_id($dbConn);
}
else
{
	//--------------------------------------
	// we are an update
	//--------------------------------------
	$sql = "UPDATE employeetbl
			SET name = '$employeename', 
			address1 = '$employeeaddress1', 
			address2 = '$employeeaddress2',
			city = '$employeecity',
			state = '$employeestate',
			zip = '$employeezip',
			rate = '$employeerate',
			phone = '$employeephone',
			email = '$employeeemail',						
			status = '$employeestatus'
			WHERE id = '$employeeid'
			";

// print $sql;
// exit();

	$sql_result = @mysql_query($sql, $dbConn);
	if (!$sql_result)
	{
		$log = new ErrorLog("logs/");
		$sqlerr = mysql_error();
		$log->writeLog("SQL error: $sqlerr - Error doing update employee for add/update employee details");
		$log->writeLog("SQL: $sql");

		$rv = "";
		exit($rv);
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
print $employeeid;
?>
