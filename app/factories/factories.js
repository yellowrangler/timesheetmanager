// define factories
tsmApp.factory('clientFactory', function($q, $http) {
    var factory = {};

    factory.getClients = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getclients.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getClientDetail = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getclientdetail.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.addUpdateClient = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/addupdateclient.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    return factory;

});

tsmApp.factory('employeeFactory', function($q, $http) {
    var factory = {};

    factory.getEmployees = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getemployees.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getEmployeeDetail = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getemployeedetail.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.addUpdateEmployee = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/addupdateemployee.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    return factory;

});

tsmApp.factory('weekEndingTimesheetFactory', function($q, $http) {
    var factory = {};

    factory.addWeekEndingTimesheet = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/addweekendingtimesheet.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.updateWeekEndingTimesheet = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/updateweekendingtimesheet.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.getWeekEndingTimesheet = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/getweekendingtimesheet.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    factory.deleteWeekEndingTimesheet = function (data) {
        return $http({ 
            method: 'POST', 
            url: "app/ajax/deleteweekendingtimesheet.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    return factory;

});

tsmApp.factory('adminFactory', function($q, $http) {
    var factory = {};

    factory.buildMySqlDump = function (data) {
        return $http({
            method: 'POST',
            url: "app/ajax/buildmysqldump.php",
            data: data,
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}
        })
    }

    return factory;
});

