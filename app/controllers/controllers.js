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

        var employeeid = $scope.newWeekEnding.employeeid;
        var hours = $scope.newWeekEnding.hours;
        var comments = $scope.newWeekEnding.comments;

        var data = "clientid="+clientid+"&employeeid="+employeeid+"&weekending="+weekending+"&hours="+hours+"&comments="+comments;

        if ($scope.current.timeEntryActionButton == "Add")
        {
            weekEndingTimesheetFactory.addWeekEnding(data)
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
            weekEndingTimesheetFactory.updateWeekEnding(data)
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

                return false;
            }
        });

        $scope.current.timeEntryActionButton = "Update";
                
    }

    // delete time entry line item
    function deleteWeekEndingEntry(weekendingdate)
    {

        var data = "weekendingdate="+weekendingdate;

        weekEndingTimesheetFactory.deleteDailyTime(data)
            .success( function(sdata) {
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
                $.each(JSONstr, function () {
                     totalAmount = totalAmount + parseFloat(this.amount);
                });

                totalAmount = totalAmount.toFixed(2);
                $scope.weekEndingTotal = totalAmount.toString();

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
        $scope.WeekEndingTotal = "0.00";

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
                getNewClientList($scope.current.clientid)
            }
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
    function getClientDetails(clientid) 
    {
        $scope.current.client = clientid;
        clientServices.addCurrentClient(clientid,"Clientid");

        var data = "clientid="+clientid;

        // get client list
        clientFactory.getClientDetails(data)
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

                getClientDetails(data); 

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

            getClientDetails($scope.current.client);
        }

        getClientList();

        $scope.states = stateService.getStateList();
        $scope.statuses = clientStatusService.getStatusList();
    };

    // get client details
    $scope.showClientInformation = function (id) {
        getClientDetails(id);
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

controllers.taxesController = function ($scope, $http, $location) {

    init();
    function init() {
      
    };
}

controllers.reports = function ($scope, $http, $location) {

    init();
    function init() {
      
    };
}


tsmApp.controller(controllers); 
