//profile view controller - add stuff here later
angular.module('fleekApp').controller("profileController", function($scope,$routeParams,DataService) {
	$scope.username = $routeParams.username; //email address
	$scope.user; //user object

	DataService.getUser($scope.username)
	.then(function(data) {
		$scope.user = data;
		console.log(data);
	});

});