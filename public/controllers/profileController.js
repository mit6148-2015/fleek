//profile view controller - add stuff here later
angular.module('fleekApp').controller("profileController", function($scope,$routeParams,$timeout,DataService) {
	$scope.username = $routeParams.username; //email address
	$scope.user; //user object
	$scope.reset = false;

	//get user data
	DataService.getUser($scope.username)
	.then(function(data) {
		$scope.user = data;
	})
	.then (function() {
		$timeout(function() {
			loadchart($scope.user.stats.solvedCount,$scope.user.stats.attemptedCount - $scope.user.stats.solvedCount,'user-graph');
		},750);
	});

	//hacky jquery to help make sure chart loads
	$(window).load(function() {
		//get user data
		DataService.getUser($scope.username)
		.then(function(data) {
			$scope.user = data;
		})
		.then(function() {
			$timeout(function() {
				loadchart($scope.user.stats.solvedCount,$scope.user.stats.attemptedCount - $scope.user.stats.solvedCount,'user-graph');
			},750);
		})
	});

	$scope.resetTutorial = function() {
		DataService.getData('/tutorial/reset');
		$scope.reset = true;
	}
});