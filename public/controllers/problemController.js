//problem view controller - add stuff here later
angular.module('fleekApp').controller("problemController", function($scope,$routeParams,DataService) {
	$scope.problem = null;
	$scope.choices = {};
	$scope.correct = false;
	$scope.incorrect = false;
	//send a GET request for the problem data
	DataService.getProblem($routeParams.problemId)
	.then (function(data) {
		$scope.problem = data;
		//if the problem is multiple choice, populate choices dictionary
		if ($scope.problem.meta.response == "multipleChoice") {
			for (i = 0; i < $scope.problem.response.numChoices; i++) {
				$scope.choices[$scope.problem.response.keys[i]] = $scope.problem.response.choices[i];
			}
		}
	});
	//validate integer responses
	$scope.intValidate = function() {
		if ($scope.intResponse == parseInt($scope.problem.response.answer)) {
			$scope.incorrect = false;
			$scope.correct = true;
			console.log("answer correct!");
		}
		else {
			$scope.correct = false;
			$scope.incorrect = true;
			console.log("answer incorrect");
		}
	}
	//validate multiple choice responses
	$scope.multiValidate = function(choice) {
		if (choice == $scope.problem.response.correctIndex) {
			$scope.incorrect = false;
			$scope.correct = true;
			console.log("answer correct!");
		}
		else {
			$scope.correct = false;
			$scope.incorrect = true;
			console.log("answer incorrect");
		}
	}
});