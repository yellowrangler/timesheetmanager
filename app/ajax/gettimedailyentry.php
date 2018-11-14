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
$entrydate = $_POST["entrydate"];

// create time stamp versions for select
$entrydateTS = "";
if ($entrydate != "")
{
	$entrydateTS = date("Y-m-d H:i:s", strtotime($entrydate));

}

//
// messaging
//
$returnArrayLog = new AccessLog("logs/");
// $returnArrayLog->writeLog("Get time entry daily started" );

//
// db connect
//
$modulecontent = "Unable to get time entry daily project list.";
include_once ('mysqlconnect.php');

//---------------------------------------------------------------
// get project information using information passed. 
//---------------------------------------------------------------
$sql = "SELECT 
	PDT.id as projectdailytimeid, 
	projectid,enterdate,
	DATE_FORMAT(starttime,'%h %i %p') AS fstarttime, 
	DATE_FORMAT(starttime,'%m-%d-%Y') as fstartdate,	
	PT.name as projectname,
	DATE_FORMAT(stoptime,'%h %i %p') as fstoptime,
	DATE_FORMAT(stoptime,'%m-%d-%Y') as fstopdate,
	FORMAT(timeinterval,2) as finterval,
	intervaldescription
	FROM projectdailytimetbl PDT 
	LEFT JOIN projecttbl PT ON PT.id = PDT.projectid
	WHERE PDT.projectid = $projectid ";

	if ($entrydateTS != "")
	{
		$sql = $sql . " AND enterdate = '$entrydateTS' ";
	}

	$sql = $sql . " ORDER BY starttime ASC ";

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
