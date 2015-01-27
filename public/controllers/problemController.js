//problem view controller - add stuff here later
angular.module('fleekApp').controller("problemController", function($scope,$routeParams,DataService) {
	$scope.problem = null;
	$scope.choices = {};
	// $scope.correct = false;
	// $scope.incorrect = false;
	$scope.reported = false;
	$scope.attempted = false;
	$scope.state = 0; //not attempted = 0, wrong = -1, correct = 1, show answer = 2
	//see if user should see tutorial
    DataService.getData('/tutorial/status')
    .then (function(data) {
        $scope.tutorial = data.tutorial;
    })
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
	//close tutorial box
	$scope.closeTutorial = function(name) {
		DataService.setTutorial(name,false)
		.then (function(data) {
			$scope.tutorial[name] = false;
		})
	}
	//validate integer responses
	$scope.intValidate = function(response) {
		if (response == parseInt($scope.problem.response.answer)) {
			$scope.state = 1;
			DataService.sendProblemResult("/stats/correct",$scope.problem._id)
			.then(function(data){
				if (data == "Problem already attempted") {
					$scope.attempted = true;
					$scope.message = "";
				}
				else {
					$scope.message = data;
					$scope.attempted = false;
				}
			});
			// console.log("answer correct!");
		}
		else {
			$scope.state = -1;
			DataService.sendProblemResult("/stats/incorrect",$scope.problem._id)
			.then(function(data){
				if (data == "Problem already attempted") {
					$scope.attempted = true;
					$scope.message = "";
				}
				else {
					$scope.message = data;
					$scope.attempted = false;
				}
			});
			// console.log("answer incorrect");
		}
	}
	//validate multiple choice responses
	$scope.multiValidate = function(choice) {
		if (choice == $scope.problem.response.correctIndex) {
			$scope.state = 1;
			DataService.sendProblemResult("/stats/correct",$scope.problem._id)
			.then(function(data){
				if (data == "Problem already attempted") {
					$scope.attempted = true;
					$scope.message = "";
				}
				else {
					$scope.message = data;
					$scope.attempted = false;
				}
			});
			// console.log("answer correct!");
		}
		else {
			$scope.state = -1;
			DataService.sendProblemResult("/stats/incorrect",$scope.problem._id)
			.then(function(data){
				if (data == "Problem already attempted") {
					$scope.attempted = true;
					$scope.message = "";
				}
				else {
					$scope.message = data;
					$scope.attempted = false;
				}
			});
			// console.log("answer incorrect");
		}
	}
	//validate short answer responses
	$scope.shortValidate = function(response) {
		if (response) {
			$scope.state = 1;
			DataService.sendProblemResult("/stats/correct",$scope.problem._id)
			.then(function(data){
				if (data == "Problem already attempted") {
					$scope.attempted = true;
					$scope.message = "";
				}
				else {
					$scope.message = data;
					$scope.attempted = false;
				}
			});
			// console.log("answer correct!");
		}
		else {
			$scope.state = -1;
			DataService.sendProblemResult("/stats/incorrect",$scope.problem._id)
			.then(function(data){
				if (data == "Problem already attempted") {
					$scope.attempted = true;
					$scope.message = "";
				}
				else {
					$scope.message = data;
					$scope.attempted = false;
				}
			});
			// console.log("answer incorrect");
		}
	}
	//report problem mistake
	$scope.report = function(id) {
		DataService.sendProblemResult('/report',id)
		.then (function(data) {
			$scope.reported = true;
		});
	}
	//listen for keypress
	$scope.$on('keypress', function(event, args) {
		//focus on int answer questions
	    if ($scope.problem.meta.response == "integerAnswer") {
	    	if (args.key == "enter") {
	    		$('#focus-input').focus();
	    	}
	    }
    	//answer multiple choice questions
	    else if ($scope.problem.meta.response == "multipleChoice" && $scope.state != 1) {
	    	var count = 0;
	    	for (var k in $scope.choices) {
	    		if (angular.lowercase(k) == args.key) {
	    			$scope.multiValidate(count);
	    		}
	    		count++;
	    	}
	    }
	    //show short answer answers
	    else if ($scope.problem.meta.response == "shortAnswer") {
	    	if (args.key == "enter" && $scope.state == 0) {
	    		$scope.state = 2;
	    	}
	    	else if (args.key == "c" && $scope.state == 2) {
	    		$scope.shortValidate(true);
	    	}
	    	else if (args.key == "i" && $scope.state == 2) {
	    		$scope.shortValidate(false);
	    	}
	    }
	});

});