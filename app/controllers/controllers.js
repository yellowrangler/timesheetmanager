// define controllers for app
var controllers = {};

controllers.dashboardController = function ($scope, $http, $location) {

    init();
    function init() {
      
    };
}

controllers.administrationController = function ($scope, $http, $location, clientServices, clientFactory) {
    $scope.clients = "";
    $scope.current.client = "";

    function getClientList() 
    {
        // get client list
        clientFactory.getClients()
            .success( function(JSONstr) {
                $scope.clients = JSONstr;
            })
            .error( function (data) {
                alert("Error "+data);
            });
    }
    init();
    function init() {
        // client process
        var clientObj = clientServices.getCurrentClient();
        if (clientObj != "")
        {
            $scope.current.client = clientObj.id;
        }

        // get client list
        getClientList();   
    }

}

controllers.timesheetentryController = function ($scope, clientServices, dateServices, clientFactory, employeeFactory, weekEndingTimesheetFactory) {
    
    //
    // get client list
    // 
    function getClientList() 
    {
        // get client list
        clientFactory.getClients()
            .success( function(JSONstr) {
                $scope.clients = JSONstr;

                $scope.current.name = "NA";

                getWeekEndingList();
            })
            .error( function (data) {
                alert("Error "+data);
            });
    }

    //
    // get employee list
    // 
    function getEmployeeList() 
    {
        // get client list
        employeeFactory.getEmployees()
            .success( function(JSONstr) {
                $scope.employees = JSONstr;

                $scope.current.employeeid = "";
            })
            .error( function (data) {
                alert("Error "+data);
            });
    }

    // add new time entry
    function insertWeekEndingEntry()
    {
        var clientid = $scope.current.clientid;
        var weekending = $scope.current.weekending;

        var timesheetid = $scope.newWeekEnding.timesheetid;
        var employeeid = $scope.newWeekEnding.employeeid;
        var hours = $scope.newWeekEnding.hours;
        var comments = $scope.newWeekEnding.comments;

        if ($scope.current.timeEntryActionButton == "Add")
        {
            var data = "clientid="+clientid+"&employeeid="+employeeid+"&weekending="+weekending+"&hours="+hours+"&comments="+comments;

            weekEndingTimesheetFactory.addWeekEndingTimesheet(data)
                .success( function(sdata) {
                    clearWeekEndingEntry();
                    
                    getWeekEndingList();
                })
                .error( function(edata) {
                    alert("Failed ajax to add time entry");
                });
        } 
        else
        {
            var data = "timesheetid="+timesheetid+"&clientid="+clientid+"&employeeid="+employeeid+"&weekending="+weekending+"&hours="+hours+"&comments="+comments;

            weekEndingTimesheetFactory.updateWeekEndingTimesheet(data)
                .success( function(sdata) {
                    clearWeekEndingEntry();
                    
                    getWeekEndingList();
                })
                .error( function(edata) {
                    alert("Failed ajax to update time entry");
                });
        }
            
    }

    function clearWeekEndingEntry ()
    {
        $scope.current.timeEntryActionButton = "Add";

        $scope.newWeekEnding.employee = "";
        $scope.newWeekEnding.employeeid = "";     
        $scope.newWeekEnding.timesheetid = "";           
        $scope.newWeekEnding.hours = "";
        $scope.newWeekEnding.comments = "";
    }

    // set input fields for edit of time entry line item
    function editWeekEndingEntry(employeeid)
    {
        var timesheetlist = $scope.weekEndings;
        $.each(timesheetlist, function (key, value) {
            if (value.employeeid == employeeid)
            {
                $scope.newWeekEnding.employeeid = value.employeeid;
                $scope.newWeekEnding.hours = value.hours;
                $scope.newWeekEnding.comments = value.comments;
                $scope.newWeekEnding.timesheetid = value.timesheetid;

                return false;
            }
        });

        $scope.current.timeEntryActionButton = "Update";
                
    }

    // delete time entry line item
    function deleteWeekEndingEntry(timesheetid)
    {
        var data = "timesheetid="+timesheetid;
        weekEndingTimesheetFactory.deleteWeekEndingTimesheet(data)
            .success( function(sdata) {
                clearWeekEndingEntry();
                
                getWeekEndingList();
            })
            .error( function(edata) {
                alert("Failed ajax to delete time entry");
            });
    }
        
    // get time entries for today
    // add new time entry
    function getWeekEndingList()
    {
        var clientid = $scope.current.clientid;
        var weekending = $scope.current.weekending;

        var data = "clientid="+clientid+"&weekending="+weekending;

        weekEndingTimesheetFactory.getWeekEndingTimesheet(data)
            .success( function(JSONstr) {
                $scope.weekEndings = JSONstr;

                var totalAmount = 0;
                var totalHours = 0;
                $.each(JSONstr, function () {
                     totalHours = totalHours + parseFloat(this.hours);                    
                     totalAmount = totalAmount + parseFloat(this.amount);
                });

                totalHours = totalHours.toFixed(2);
                $scope.weekEndingTotalHours = totalHours.toString();

                totalAmount = totalAmount.toFixed(2);
                $scope.weekEndingTotalAmount = totalAmount.toString();
            })
            .error( function(edata) {
                alert("Failed ajax to get time entry history");
            });
    }

    function getNewClientList(clientid)
    {
        $scope.current.clientid = clientid;

        clearWeekEndingEntry();

        getWeekEndingList();
    }
    
    init();
    function init() {
        // initialize and define variables
        $scope.current = {};
        $scope.clients = "";
        $scope.employees = "";    
        $scope.newWeekEnding = {};
        $scope.current.weekending = "";
        $scope.current.timeEntryActionButton = "";    
        $scope.current.client = "";       
        $scope.weekEndings = {};
        $scope.weekEndingTotalHours = "0.00";
        $scope.weekEndingTotalAmount = "0.00";

        // some initial clean up and set up
        clearWeekEndingEntry();

        // date stuff
        $( "#datepicker" ).datepicker();

        $( "#datepicker" ).change(function() {
            $scope.current.weekending = $("#datepicker").val();
            if ($scope.current.weekending == "")
            {
                $scope.current.weekending = dateServices.getCurrentDateForDisplay();
                $("#datepicker").val($scope.current.weekending);
            }

            if ($scope.current.clientid != "")
            {
                getNewClientList($scope.current.clientid)
            }
            
        });

        if ($scope.current.weekending == "")
        {
            $scope.current.weekending = dateServices.getCurrentDateForDisplay();
            $("#datepicker").val($scope.current.weekending);

            if ($scope.current.clientid != "")
            {
                getWeekEndingList();
            }
        }

        // client process
        var clientObj = clientServices.getCurrentClient();
        if (clientObj != "")
        {
            $scope.current.clientid = clientObj.id;
        }

        // get client list
        getClientList();

        // get employee list
        getEmployeeList();

        //
        // redo list
        //
        getWeekEndingList();
        
    };


    // clear daily entry
    $scope.clearWeekEndingEntry = function () {
        clearWeekEndingEntry();
    }

    // edit timedailyentry
    $scope.editWeekEndingEntry = function (weekendingdate)
    {
        editWeekEndingEntry(weekendingdate);
    }

    // add new time entry
    $scope.insertWeekEndingEntry = function (id)
    {
        insertWeekEndingEntry(id);
    }

    // delete the time entry daily
    $scope.deleteWeekEndingEntry = function (id)
    {
        deleteWeekEndingEntry(id);
    }

    $scope.getNewClientList = function (clientid)
    {
        getNewClientList(clientid);
    }
}

controllers.timeentryreviewController = function ($scope, $http, $location, clientServices, dateServices, clientFactory, weekEndingTimesheetFactory) {
    $scope.current = {};

    $scope.clients = "";
    $scope.employees = "";
    $scope.current.client = ""; 
    $scope.WeekEndingReview = "";
    $scope.weekEndingReviewTotal = "0.00";


    function getClientList() 
    {
        // get client list
        clientFactory.getClients()
            .success( function(JSONstr) {
                $scope.clients = JSONstr;
            })
            .error( function (data) {
                alert("Error "+data);
            });
    }
        
    // get time entries for today
    // add new time entry
    function getWeekEndingListReview()
    {
        var clientid = $scope.current.client;
        var fromdate = $("#datepickerfrom").val();
        var todate = $("#datepickerto").val();

        var data = "clientid="+clientid+"&employeeid="+employeeid+"&fromdate="+fromdate+"&todate="+todate;

        weekEndingTimesheetFactory.getDailyTimeReview(data)
            .success( function(JSONstr) {
                $scope.WeekEndingReview = JSONstr;

                var nbr = 0;
                $.each(JSONstr, function () {
                     nbr = nbr + parseFloat(this.finterval);
                });

                nbr = nbr.toFixed(2);
                $scope.weekEndingReviewTotal = nbr.toString();
            })
            .error( function(edata) {
                alert("Failed ajax to get time entry review history");
            });
    }
    
    init();
    function init() {
        // from and to date stuff
        $( "#datepickerfrom" ).datepicker();

        $( "#datepickerfrom" ).change(function() {
            if ($("#datepickerfrom").val() == "")
            {
                $("#datepickerfrom").val(dateServices.getCurrentDateForDisplay());
            }

            var date = $("#datepickerfrom").val();
            $("#datepickerto").val(dateServices.getDateforNextWeek(date));
        });

        if ($("#datepickerfrom").val() == "")
        {
            var currentDate = dateServices.getCurrentDateForDisplay();
            $("#datepickerfrom").val(dateServices.getCurrentDateForDisplay());
        }

        $( "#datepickerto" ).datepicker();
        if ($("#datepickerto").val() == "")
        {
            var currentDate = dateServices.getCurrentDateForDisplay();
            $("#datepickerto").val(dateServices.getDateforNextWeek(currentDate));
        }

        // client process
        var clientObj = clientServices.getCurrentClient();
        if (clientObj != "")
        {
            $scope.current.client = clientObj.id;
            getClientList($scope.current.client);
        }

        // get client list
        getClientList();

    };

    // get review list
    $scope.getDailyEntryReviewList = function ()
    {
        getWeekEndingListReview();
    }
}

controllers.invoicesController = function ($scope, $http, $location, clientServices, dateServices, clientFactory, weekEndingTimesheetFactory) {
    $scope.clients = "";
    $scope.current = "";
    $scope.current.client = 1;
    $scope.WeekEndingReview = "";
    $scope.weekEndingReviewTotal = "0.00";

    // functions to call in controller
    function getClientList() 
    {
        // get client list
        clientFactory.getClients()
            .success( function(JSONstr) {
                $scope.clients = JSONstr;
            })
            .error( function (data) {
                alert("Error "+data);
            });
    }

    function getTimeEntriesForClient(id) 
    {
        var clientid = $scope.current.client;
        var fromdate = $("#datepickerfrom").val();
        var todate = $("#datepickerto").val();

        var data = "clientid="+clientid+"&employeeid="+employeeid+"&fromdate="+fromdate+"&todate="+todate;

        weekEndingTimesheetFactory.getDailyTimeReview(data)
            .success( function(JSONstr) {
                $scope.WeekEndingReview = JSONstr;

                var nbr = 0;
                $.each(JSONstr, function () {
                     nbr = nbr + parseFloat(this.finterval);
                });

                nbr = nbr.toFixed(2);
                $scope.weekEndingReviewTotal = nbr.toString();
            })
            .error( function(edata) {
                alert("Failed ajax to get time entry review history");
            });
    }

    init();
    function init() {
        // from and to date stuff
        $( "#datepickerfrom" ).datepicker();

        $( "#datepickerfrom" ).change(function() {
            if ($("#datepickerfrom").val() == "")
            {
                $("#datepickerfrom").val(dateServices.getCurrentDateForDisplay());
            }

            var date = $("#datepickerfrom").val();
            $("#datepickerto").val(dateServices.getWeekEndingDate(date));
        });

        if ($("#datepickerfrom").val() == "")
        {
            var currentDate = dateServices.getCurrentDateForDisplay();
            $("#datepickerfrom").val(dateServices.getCurrentDateForDisplay());
        }

        $( "#datepickerto" ).datepicker();
        if ($("#datepickerto").val() == "")
        {
            var currentDate = dateServices.getCurrentDateForDisplay();
            $("#datepickerto").val(dateServices.getWeekEndingDate(currentDate));
        }

        // client process
        var clientObj = clientServices.getCurrentClient();
        if (clientObj != "")
        {
            $scope.current.client = clientObj.id;
        }
        getClientList();
    }

    // client time list for dates
    $scope.getTimeEntriesForClient = function (id) {
        getTimeEntriesForClient(id);
    }
}

controllers.adminclientsController = function ($scope, $http, $location, clientServices, clientFactory, stateService, clientStatusService) {
    $scope.current = {};
    $scope.current.client = "";
    $scope.clientdetails = "";

    // functions to call in controller
    function getClientList() 
    {
        // get client list
        clientFactory.getClients()
            .success( function(JSONstr) {
                $scope.clients = JSONstr;
            })
            .error( function (data) {
                alert("Error "+data);
            });
    }

    // functions to call in controller
    function getClientDetail(clientid) 
    {
        $scope.current.client = clientid;
        clientServices.addCurrentClient(clientid,"Clientid");

        var data = "clientid="+clientid;

        // get client list
        clientFactory.getClientDetail(data)
            .success( function(JSONstr) {
                $scope.clientdetails = JSONstr;
            })
            .error( function (data) {
                alert("Error "+data);
            });
    }

    function clearClientDetails()
    {
        $scope.clientdetails = "";
        $scope.current.client = "";
        clientServices.addCurrentClient($scope.current.client,"Clientid");
    }

    function addNewClient()
    {
        var err = validateClientForm();
        if (err)
            return false;

        var data = $("#adminClientForm").serialize();
        
        clientFactory.addUpdateClient(data)
            .success( function(data) {
                getClientList();

                getClientDetail(data); 

                alert("Succesfully addUpdate client");
            })
            .error( function(edata) {
                alert("Failed addUpdate client");
            });
        
    }

    init();
    function init() {
        // client process
        var clientObj = clientServices.getCurrentClient();
        if (clientObj != "")
        {
            $scope.current.client = clientObj.id;

            getClientDetail($scope.current.client);
        }

        getClientList();

        $scope.states = stateService.getStateList();
        $scope.statuses = clientStatusService.getStatusList();
    };

    // get client details
    $scope.showClientInformation = function (id) {
        getClientDetail(id);
    }

    // clear client details
    $scope.clearClientDetails = function () {
        clearClientDetails();
    }

    // add new client 
    $scope.addNewClient = function () {
        addNewClient();
    }

    
}

adminemployeesController = function ($scope, $http, $location, employeeServices, employeeFactory, stateService, employeeStatusService) {
    $scope.current = {};
    $scope.current.employee = "";
    $scope.employeedetails = "";

    // functions to call in controller
    function getEmployeeList() 
    {
        // get employee list
        employeeFactory.getEmployees()
            .success( function(JSONstr) {
                $scope.employees = JSONstr;
            })
            .error( function (data) {
                alert("Error "+data);
            });
    }

    // functions to call in controller
    function getEmployeeDetail(employeeid) 
    {
        $scope.current.employee = employeeid;
        employeeServices.addCurrentEmployee(employeeid,"Employeeid");

        var data = "employeeid="+employeeid;

        // get employee list
        employeeFactory.getEmployeeDetail(data)
            .success( function(JSONstr) {
                $scope.employeedetails = JSONstr;
            })
            .error( function (data) {
                alert("Error "+data);
            });
    }

    function clearEmployeeDetails()
    {
        $scope.employeedetails = "";
        $scope.current.employee = "";
        employeeServices.addCurrentEmployee($scope.current.employee,"Employeeid");
    }

    function addNewEmployee()
    {
        var err = validateEmployeeForm();
        if (err)
            return false;

        var data = $("#adminEmployeeForm").serialize();
        
        employeeFactory.addUpdateEmployee(data)
            .success( function(data) {
                getEmployeeList();

                getEmployeeDetail(data); 

                alert("Succesfully addUpdate employee");
            })
            .error( function(edata) {
                alert("Failed addUpdate employee");
            });
        
    }

    init();
    function init() {
        // employee process
        var employeeObj = employeeServices.getCurrentEmployee();
        if (employeeObj != "")
        {
            $scope.current.employee = employeeObj.id;

            getEmployeeDetail($scope.current.employee);
        }

        getEmployeeList();

        $scope.states = stateService.getStateList();
        $scope.statuses = employeeStatusService.getStatusList();
    };

    // get employee details
    $scope.showEmployeeInformation = function (id) {
        getEmployeeDetail(id);
    }

    // clear employee details
    $scope.clearEmployeeDetails = function () {
        clearEmployeeDetails();
    }

    // add new employee 
    $scope.addNewEmployee = function () {
        addNewEmployee();
    }

    
}

controllers.reports = function ($scope, $http, $location) {

    init();
    function init() {
      
    };
}

controllers.dumpdatabaseController = function ($scope, $http, $location, adminFactory) {
    var sw = new stopWatch();
    var gw = new stopWatch();
    var startTime = 0;
    var stopTime = 0;
    var timeDiff = 0;

    function buildMySqlDump()
    {
        var data = "";
        var scriptData = "";
        startTime = 0;
        stopTime = 0;
        timeDiff = 0;

        $("#scriptMessagesDisplay").html("");

        //
        // run dump sql table
        //
        sw.start();
        startTime = sw.getLocalTimeStart();

        $("#scriptMessagesDisplay").append("Start of Dump SQL Tables. Time:"+startTime+"<br />");
        var scriptData = "dumpdatabaselabel="+$scope.current.dumpdatabaselabel;

        adminFactory.buildMySqlDump(scriptData)
        .success( function(data) {
            

            sw.stop();
            stopTime = sw.getLocalTimeStop();
            timeDiff = sw.getSecondsDiff();

            $("#scriptMessagesDisplay").append(data);
            $("#scriptMessagesDisplay").append("<br />End of Dump SQL Tables. Time:"+stopTime+". Interval:"+ timeDiff +" seconds");
        })
        .error( function(edata) {
            alert(edata);
        });
    }

    init();
    function init() {
        $scope.current = {};
        
        $scope.current.dumpdatabaselabel = getCurrentDateTimeStr();
      
    };

    $scope.buildMySqlDump = function () {
        buildMySqlDump();
    }
}

tsmApp.controller(controllers); 
