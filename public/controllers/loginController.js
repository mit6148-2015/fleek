//login controller - controls login form
angular.module('fleekApp').controller("loginController", function($scope, $rootScope, $location, AuthService) {
	//default values
	$scope.submitted = false;
	$scope.err = false;

	//on form submit, send POST to /login with data
    $scope.submit = function(){
    	$scope.submitted = true;
    	AuthService.login(angular.lowercase($scope.user), $scope.pass)
    	.then (function(data) {
    		if (data) {
    			$scope.submitted = false;
    			$location.path('/search');
    		}
    		else {
    			$scope.err = true;
    			$scope.submitted = false;
    			$scope.pass = "";
    		}
    	});
    }
    //listen for keypress
    $scope.$on('keypress', function(event, args) {
        //focus on input
        if (args.key == "enter") {
            $('#focus-input').focus();
        }
    });
});
