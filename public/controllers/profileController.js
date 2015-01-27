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
		},250);
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
			},250);
		})
	});

	//see if user should see tutorial
    DataService.getData('/tutorial/status')
    .then (function(data) {
        $scope.tutorial = data.tutorial;
    })

	$scope.resetTutorial = function() {
		for (key in $scope.tutorial) {
			DataService.setTutorial(key,true);
		}
		$scope.reset = true;
	}
});