<?php

require ('../class/class.Log.php');
include ('../class/class.ErrorLog.php');
include ('../class/class.AccessLog.php');

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

//------------------------------------------------------
// get client data 
//------------------------------------------------------
$clientid = $_POST["clientid"];
$clientname = $_POST["clientname"];
$clientaddress1 = $_POST["clientaddress1"];
$clientaddress2 = $_POST["clientaddress2"];
$clientcity = $_POST["clientcity"];
$clientstate = $_POST["clientstate"];
$clientzip = $_POST["clientzip"];
$clientphone = $_POST["clientphone"];
$clientemail = $_POST["clientemail"];
$clientstatus = $_POST["clientstatus"];

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("client details request started" );

//
// db connect
//
$modulecontent = "Unable to add/update client details.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// add or update patient information using information passed. 
// if clientid = null insert else update
//---------------------------------------------------------------

$sql = "";

if ($clientid == "")
{
	//--------------------------------------
	// we are an add
	//--------------------------------------
	$sql = "INSERT INTO clienttbl
		( name, 
		  address1, 
		  address2, 
		  city, 
		  state, 
		  zip, 
		  phone,
		  email,
		  status)
		VALUES
		( '$clientname', 
		  '$clientaddress1', 
		  '$clientaddress2', 
		  '$clientcity', 
		  '$clientstate', 
		  '$clientzip', 
		  '$clientphone', 
		  '$clientemail',  
		  '$clientstatus')";

// print $sql;
// exit();

	//
	// sql query
	//
	$function = "insert";
	include ('mysqlquery.php');

	$clientid = mysqli_insert_id($dbConn);
}
else
{
	//--------------------------------------
	// we are an update
	//--------------------------------------
	$sql = "UPDATE clienttbl
			SET name = '$clientname', 
			address1 = '$clientaddress1', 
			address2 = '$clientaddress2',
			city = '$clientcity',
			state = '$clientstate',
			zip = '$clientzip',
			phone = '$clientphone',
			email = '$clientemail',						
			status = '$clientstatus'
			WHERE id = '$clientid'
			";

	// print $sql;
	// exit();

	//
	// sql query
	//
	$function = "update";
	include ('mysqlquery.php');
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
print $clientid;
?>
