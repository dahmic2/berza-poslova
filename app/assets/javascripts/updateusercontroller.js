app.controller('UserUpdateCtrl',    function($scope) {
    $scope.user = {};
    $scope.update = function() {
        data = {
            name : $scope.user.name ,
            lastname : $scope.lastname ,
            email : $scope.user.email ,
            password : $scope.user.password ,
            adress : $scope.user.adress ,
            phone : $scope.user.phone

        };
        Cv.get(data);
        $scope.user.name.push($scope.user.name);
        $scope.user.lastname.push($scope.lastname);
        $scope.user.email.push($scope.user.email);
        $scope.user.password.push($scope.password);
        $scope.user.adress.push($scope.user.adress);
        $scope.user.phone.push($scope.phone);
        UserFactory.save($scope.updateUser, backToList);
        //var skills = $scope.newCv.additional_information;
        //$http.post('/cvs/'+newCv.id+'.json' , { personal_skills: skills }).success(function() {
         //   $scope.newCv.personal_skills = '';
        //    $location.path("cvs");
        //})
    };

});
