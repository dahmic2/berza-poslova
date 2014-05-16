app.controller('CvCreationCtrl',    function($scope) {
        $scope.cv = {};
           $scope.posalji = function() {
            data = {
                additional_information : $scope.cv.additional_information ,
                personal_skills : $scope.cv.personal_skills
            };
            Cv.get(data);
            $scope.cv.additional_information.push($scope.cv.additional_information);
            $scope.cv.additional_information="";
            CvFactrory.save($scope.newCv, backToList);
            var skills = $scope.newCv.additional_information;
            $http.post('/cvs/'+newCv.id+'.json' , { personal_skills: skills }).success(function() {
                $scope.newCv.personal_skills = '';
                $location.path("cvs");
            })
        };

        });
