
window.App = angular.module('App', ['ngRoute','ui.bootstrap','ngResource'])
    .config(['$routeProvider', function($routeProvider)
    {    $routeProvider.when('/cvs', {templateUrl: 'partials/cv.html', controller:'CvCtrl'});
    $routeProvider.when('cvs/create', {templateUrl: 'partials/cvNew.html', controller:'CvCreationCtrl'});

}
 angular.module('App', ['ngRoute', 'controllers']).
