App.factory('Cv',['$resource',function($resource){
    return $resource('/cvs/create.json');
}]);
$scope.add = function() {
    $scope.cv.push({});
};