//signup controller - controls signup form
angular.module('fleekApp').controller("signupController", function($scope,$rootScope,$location,AuthService,DataService) {
	//default values
	$scope.submitted = false;
	$scope.err = false;
	//get country list for form
	$scope.countries = null;
	DataService.getData('/assets/countries.json')
	.then (function(data) {
		$scope.countries = data;
	});
    //on form submit, send POST to /signup with data
    $scope.submit = function(){
    	$scope.submitted = true;
    	AuthService.signup(angular.lowercase($scope.user), $scope.pass, $scope.gen, $scope.ctry)
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
});
