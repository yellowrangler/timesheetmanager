var tsmApp = angular.module ('tsmApp', ['ngRoute']);


// define routes for app
tsmApp.config(function ($routeProvider) {
    $routeProvider
        .when('/dashboard',
            {
                controller: 'dashboardController',
                templateUrl: 'app/partials/dashboard.html'
            })  
        .when('/timeentrydaily',
            {
                controller: 'timesheetentryController',
                templateUrl: 'app/partials/timesheetentry.html'
            })
        .when('/timeentryreview',
            {
                controller: 'timeentryreviewController',
                templateUrl: 'app/partials/timeentryreview.html'
            }) 
        .when('/invoicecreate',
            {
                controller: 'invoicesController',
                templateUrl: 'app/partials/invoicescreate.html'
            })  
        .when('/reports',
            {
                controller: 'reportsController',
                templateUrl: 'app/partials/reports.html'
            })  
        .when('/adminclients',
            {
                controller: 'adminclientsController',
                templateUrl: 'app/partials/adminclients.html'
            })   
        .when('/adminemployees',
            {
                controller: 'adminemployeesController',
                templateUrl: 'app/partials/adminemployees.html'
            })      
        .when('/dumpdatabase',
            {
                controller: 'dumpdatabaseController',
                templateUrl: 'app/partials/dumpdatabase.html'
            })  
        .when('/other',
            {
                controller: 'd3Controller',
                templateUrl: 'app/partials/home.html'
            })     
        .otherwise({redirectTo: '/home' });
});