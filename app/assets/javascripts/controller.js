App.controller('CvCreationCtrl', ['$scope', '$filter', 'Cv',
    function($scope, $filter, Cv) {
        $scope.cv = {};

        $scope.posalji = function() {
            data = {
                additional_information : $scope.cv.additional_information ,
                personal_skills : $scope.cv.personal_skills
            };
            Cv.get(data);
        };

    }]);

$scope.posalji() = function() {
    $scope.cv.additional_information.push($scope.cv.additional_information);
    $scope.cv.additional_information="";
}

$scope.addCv = function() {
    CvFactrory.save($scope.newCv, backToList);
    var skills = $scope.newCv.additional_information;
    $http.post('/todo.json', { personal_skills: skills }).success(function() {
        $scope.newCv.personal_skills = '';
        $location.path("cvs");
    });
}