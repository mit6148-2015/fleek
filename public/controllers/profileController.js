//profile view controller - add stuff here later
angular.module('fleekApp').controller("profileController", function($scope,$routeParams,$timeout,DataService) {
	$scope.username = $routeParams.username; //email address
	$scope.user; //user object
	$scope.reset = false;
	
	//get user data
	DataService.getUser($scope.username)
	.then(function(data) {
		$scope.user = data;
		$scope.percentCorrect = ($scope.user.stats.solvedCount / $scope.user.stats.attemptedCount)*100;
		$scope.percentIncorrect = 100 - $scope.percentCorrect;
	})
	.then (function() {
		$scope.piedata = [
		  {label: "correct: " + $scope.percentCorrect.toFixed(1) + "%", value: $scope.percentCorrect, color: "#ed458d"}, 
		  {label: "incorrect " + $scope.percentIncorrect.toFixed(1) + "%", value: $scope.percentIncorrect, color: "#50c6e7"},
		];
		$scope.pieoptions = {thickness: 60};

	});

	$scope.resetTutorial = function() {
		DataService.postData('/tutorial/reset', {});
		$scope.reset = true;
	}
});