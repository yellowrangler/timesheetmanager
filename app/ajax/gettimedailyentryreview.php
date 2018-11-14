<?php

require ('../class/class.Log.php');
include ('../class/class.ErrorLog.php');
include ('../class/class.AccessLog.php');

//
// get date time for this transaction
//
$datetime = date("Y-m-d H:i:s");

$clientid = $_POST["clientid"];
$projectid = $_POST["projectid"];
$fromdate = $_POST["fromdate"];
$todate = $_POST["todate"];

// create time stamp versions for insert to mysql
$fromdateTS = date("Y-m-d H:i:s", strtotime($fromdate));
$todateTS = date("Y-m-d H:i:s", strtotime($todate));

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Get time entry daily started" );

//
// db connect
//
$modulecontent = "Unable to get time entry daily project review list.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// get patient information using information passed. limit 5 
//---------------------------------------------------------------
$sql = "SELECT 
	PDT.id as projectdailytimeid, 
	projectid,
	DATE_FORMAT(enterdate,'%m/%d/%y') as fenterdate,
	PT.name as projectname, CT.name as clientname,
	FORMAT(SUM(timeinterval),2) as finterval,
	intervaldescription
	FROM projectdailytimetbl PDT 
	LEFT JOIN projecttbl PT ON PT.id = PDT.projectid
	LEFT JOIN clienttbl CT ON CT.id = PT.clientid
	WHERE enterdate >= '$fromdateTS' AND enterdate <= '$todateTS'";

	if ($clientid != "0")
	{
		$sql .= "AND clientid = '$clientid' ";
	}

	if ($projectid != "0")
	{
		$sql .= "AND projectid = '$projectid' ";
	}

$sql .=  "GROUP BY PT.name, enterdate ORDER BY PT.name";

// print $sql;
// die();

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
