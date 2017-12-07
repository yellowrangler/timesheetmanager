function simpleTimeFormat(timeIn) {
	var timeOut = "";

	if (timeIn != null)
	{
		var timeArray = timeIn.split(' ');
		timeOut = timeArray[0] + ":" + timeArray[1] + " " + timeArray[2];
	}
		
	return (timeOut);
}

$(document).ready( function(){

});  

function setviewpadding()
{	
	// var navTypeMobile = isMobile();
	// var navTypeSmall = isSmall();

	window.scrollTo(0, 0);
	
}

function getUserAgent()
{
	var deviceName = "MainStream";
	var deviceType = "Computer";

	var useragent = navigator.userAgent.toLowerCase();
	if (useragent.search("iphone") > -1)
	{
		deviceName = "iPhone";
		deviceType = "Mobile";
	}
	else if (useragent.search("android") > -1)
	{
		deviceName = "Android";
		deviceType = "Mobile";
	}
	else if (useragent.search("ipad") > -1)
	{
		deviceName = "iPad";
		deviceType = "Mobile";
	}
	else if (useragent.search("blackberry") > -1)
	{
		deviceName = "BlackBerry";
		deviceType = "Mobile";
	}
	else if (useragent.search("iemobile") > -1)
	{
		deviceName = "Windows";
		deviceType = "Mobile";
	}


	return { deviceName: deviceName, deviceType: deviceType };
}

function isMobile() {
	var rval = 0;

	var ua = getUserAgent();

	// alert("User Agent:"+ ua.deviceName + " " + ua.deviceType);
        
    if (ua.deviceType == "Mobile" && ua.deviceName != "iPad")
    {
        rval = 1;
    }

    return rval;
}

function isSmall() {
	var rval = 0;

	var w = window.innerWidth;
	if (w < 750)
	{
		rval = 1;
	}

	var m = isMobile();
	if (m)
	{
		rval = 1;
	}

    return rval;
}

function decodeHtmlString(str) {
	var decodedStr = $("<div/>").html(str).text();

	return decodedStr;
}

function windowDimentions() {
	var w = window.innerWidth;
	var h = window.innerHeight;

	return { width: w, height: h };
}

function convertMySQLdate2mdy(mysqlDate)
{
	//
	// split date into its component parts
	//
	var t = mysqlDate.split(/[- :]/);

	//
	// convert to english mdy
	//
	var d = new Date(t[0], t[1]-1, t[2], t[3], t[4], t[5]);

	//
	// split english mdy for readability
	//
	var hd = d.split(" ");

	//
	// return mdy as June 2 2015 eg
	//
	var dateStr = hd[0] + " " + hd[1] + ", " + hd[2];

	return dateStr;
}

function getCurrentDateTimeStr()
{
	//
	// get current date
	//
	var today = new Date();

	var dd = today.getDate();
	var mm = today.getMonth()+1; //January is 0!
	var yyyy = today.getFullYear();

	var ss = today.getSeconds();
	var min = today.getMinutes();
	var hh = today.getHours();

	if(dd<10) {
	    dd='0'+dd
	} 

	if(mm<10) {
	    mm='0'+mm
	} 

	var todayStr = mm.toString()+dd.toString()+yyyy.toString()+hh.toString()+min.toString()+ss.toString();

	return todayStr;
}

//
// prototypes
//
function stopWatch() {
	this.startdate = "";
	this.stopdate = "";
	this.diffdate = "";

	function setdatediff (start, stop) {
		return stop - start;
	}

	this.start = function () {
		this.startdate = new Date();

		this.stopdate = "";
		this.diffdate = "";
	}

	this.stop = function () {
		this.stopdate = new Date();
		this.diffdate = setdatediff(this.startdate, this.stopdate);
	}

	this.getLocalTimeStart = function() {
		return this.startdate.toLocaleTimeString();
	};

	this.getLocalTimeStop = function() {
		return this.stopdate.toLocaleTimeString();
	};

	this.getMinutesDiff = function() {
		return Math.round(((this.diffdate % 86400000) % 3600000) / 60000); // minutes
	};

	this.getSecondsDiff = function() {
		return Math.round(this.diffdate / 1000); // seconds
	};

}