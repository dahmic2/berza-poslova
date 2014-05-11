var services= angular.module('AppServices', ['ngResource']);
services.factory('Cv', ['$resource', function($resource){
    return $resource('/cvs', {}, {
        query:{ method:'GET', isArray: true},
        create:{ method: 'POST'}
    })
}]);

services.factory('CvFactory', function($resource){
    return $resource('/cvs/:id', {}, {
        show: { method: 'GET'},
        update: { method: 'PUT', params:{id: '@id'}},
        delete: {method:'DELETE', params: {id:'@id'}}
    })
});

