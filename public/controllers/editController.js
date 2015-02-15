//problem view controller - add stuff here later
angular.module('fleekApp').controller("editController", function($scope,$routeParams,DataService) {
	$scope.problem = null;
	$scope.choices = {};
	$scope.reported = false;
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
});