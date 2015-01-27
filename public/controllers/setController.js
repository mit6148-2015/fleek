//search view controller - add stuff here later
angular.module('fleekApp').controller("setController", function($scope,$rootScope,$routeParams,DataService) {
	$scope.problems = {};
	$scope.currentProblem = 0;
	$scope.problem;
	$scope.done = [];
	$scope.intAnswers = [];
	$scope.reported = false;
	$scope.choices = {}
	//generate list of sets from a GET request
	DataService.getSet($routeParams.setId)
	.then (function(data) {
		console.log(data); //
		$scope.problems = data;
		$scope.problem = $scope.problems.problems[$scope.currentProblem];
		//if the problem is multiple choice, populate choices dictionary
		if ($scope.problem.meta.response == "multipleChoice") {
			for (i = 0; i < $scope.problem.response.numChoices; i++) {
				$scope.choices[$scope.problem.response.keys[i]] = $scope.problem.response.choices[i];
			}
		}
	});
	//set current problem index
	$scope.setCurrent = function(index) {
		if (index < 0){
			index = 0;
		}
		else if (index >= $scope.problems.problems.length) {
			index = $scope.problems.problems.length - 1;
		}
		$scope.currentProblem = index;
		$scope.problem = $scope.problems.problems[$scope.currentProblem];
		$scope.reported = false;
		//if the problem is multiple choice, populate choices dictionary
		if ($scope.problem.meta.response == "multipleChoice") {
			$scope.choices = {};
			for (i = 0; i < $scope.problem.response.numChoices; i++) {
				$scope.choices[$scope.problem.response.keys[i]] = $scope.problem.response.choices[i];
			}
		}
	}
	//generate list of values from 0 to n-1
	$scope.range = function(n) {
		list = [];
		for (i = 0; i < n; i++){
			list.push(i);
			$scope.done.push(0);
		}
		return list;
	};
	//validate integer responses
	$scope.intValidate = function(response) {
		if (response == parseInt($scope.problem.response.answer)) {
			DataService.sendProblemResult("/stats/correct",$scope.problem._id)
			.then(function(data){
				if (data == "Problem already attempted") {
					$scope.attempted = true;
				}
			});
			$scope.done[$scope.currentProblem] = 1;
			// console.log("answer correct!");
		}
		else {
			DataService.sendProblemResult("/stats/incorrect",$scope.problem._id)
			.then(function(data){
				if (data == "Problem already attempted") {
					$scope.attempted = true;
				}
			});
			$scope.done[$scope.currentProblem] = -1;
			// console.log("answer incorrect");
		}
	}
	//validate multiple choice responses
	$scope.multiValidate = function(choice) {
		if (choice == $scope.problem.response.correctIndex) {
			DataService.sendProblemResult("/stats/correct",$scope.problem._id)
			.then(function(data){
				if (data == "Problem already attempted") {
					$scope.attempted = true;
				}
			});
			$scope.done[$scope.currentProblem] = 1;
			// console.log("answer correct!");
		}
		else {
			DataService.sendProblemResult("/stats/incorrect",$scope.problem._id)
			.then(function(data){
				if (data == "Problem already attempted") {
					$scope.attempted = true;
				}
			});
			$scope.done[$scope.currentProblem] = -1;
			// console.log("answer incorrect");
		}
	}
	//validate short answer responses
	$scope.shortValidate = function(response) {
		$scope.answered = true;
		if (response) {
			DataService.sendProblemResult("/stats/correct",$scope.problem._id)
			.then(function(data){
				if (data == "Problem already attempted") {
					$scope.attempted = true;
				}
			});
			$scope.done[$scope.currentProblem] = 1;
			// console.log("answer correct!");
		}
		else {
			DataService.sendProblemResult("/stats/incorrect",$scope.problem._id)
			.then(function(data){
				if (data == "Problem already attempted") {
					$scope.attempted = true;
				}
			});
			$scope.done[$scope.currentProblem] = -1;
			// console.log("answer incorrect");
		}
	}
	//report problem mistake
	$scope.report = function(id) {
		DataService.reportProblem(id)
		.then (function(data) {
			$scope.reported = true;
		});
	}
	//listen for keypress
	$scope.$on('keypress', function(event, args) {
		if (args.key == "j") {
    		$scope.setCurrent($scope.currentProblem - 1);
    	}
    	else if (args.key == "k") {
    		$scope.setCurrent($scope.currentProblem + 1);
    	}
	    else if ($scope.problem.meta.response == "multipleChoice") 
	    {
	    	var count = 0;
	    	else {
		    	for (var k in $scope.choices) {
		    		if (angular.lowercase(k) == args.key) {
		    			$scope.multiValidate(count);
		    		}
		    		count++;
		    	}
		    }
	    }
	});

});