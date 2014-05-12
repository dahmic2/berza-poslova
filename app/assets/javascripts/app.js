
var app = angular.module('App', [])
    .config(['$routeProvider', function ($routeProvider) {
        $routeProvider.when('/cvs', {templateUrl: 'partials/cv.html', controller: 'CvCtrl'});
        $routeProvider.when('/cvs/create', {templateUrl: 'views/cvs/new.html.erb', controller: 'CvCreationCtrl'});

    }]);


