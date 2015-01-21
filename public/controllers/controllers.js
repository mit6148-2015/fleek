var app = angular.module('fleekApp', []);

//page controller - controls what the page displays & authentication state
app.controller("pageController", function ($scope, AuthService) {
	$scope.current; //default page is splash
	$scope.auth; //only used for displaying buttons and stuff
	$scope.restrictions = { //map pages to restrictions
		"/views/splash.html": false, 
		"/views/login.html": false, 
		"/views/signup.html": false, 
		"/views/problem.html": true, 
		"/views/search.html": true
	};
	//function to set view (accessible from child scopes)
	$scope.setView = function(page,init) {
		//collapse nav bar, not very angular
		if (!init) {
			if ($(".navbar-toggle").css("display") == "block" ) {
				$("#nav-collapse").collapse("hide");
			}
		}
		//set init's default to false
		init = init | false; 
		//if page is unrestricted (and it's not the first visit), continue to page
		if (!$scope.restrictions[page] && !init) { 
			console.log(" / unrestricted, continue to " + page);
			$scope.current = page;
		}
		//if page is restricted (or it's the first visit), check authorization status
		else {
			AuthService.getAuth()
			.then( function(data) {
				if (data) {
					console.log(" / authorized, continue to " + page);
					$scope.current = page;
					$scope.auth = true;
				}
				else if (!$scope.restrictions[page]) {
					console.log(" / unrestricted, continue to " + page);
					$scope.current = page;
					$scope.auth = false;
				}
				else {
					console.log(" / unauthorized, redirect to login");
					$scope.current = "/views/login.html";
					$scope.auth = false;
				}
			}, function(error) {
				console.log(" / unauthorized, redirect to login");
				$scope.current = "/views/login.html";
				$scope.auth = false;
			});
		}
	};

	//function to log out
	$scope.logout = function() {
		AuthService.logout()
		.then( function(data) {
			if (data) {
				$scope.auth = false;
				$scope.setView('/views/splash.html');
			}
		});
	}
});

//login controller - controls login form
app.controller("loginController", function($scope, AuthService) {
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
    			$scope.setView('/views/search.html');
    		}
    		else {
    			$scope.err = true;
    			$scope.submitted = false;
    			$scope.pass = "";
    		}
    	});
    }
});

//signup controller - controls signup form
app.controller("signupController", function($scope,AuthService,DataService) {
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
    			$scope.setView('/views/search.html');
    		}
    		else {
    			$scope.err = true;
    			$scope.submitted = false;
    			$scope.pass = "";
    		}
    	});
    }
});

//problem view controller - add stuff here later
app.controller("problemController", function($scope) {
});

//search view controller - add stuff here later
app.controller("searchController", function($scope,DataService) {
	$scope.minYear = 1950;
	$scope.maxDate = Date.now();
	$scope.contests = {'AMC 8': true, 'AMC 10': true, 'AMC 12': true, 'AIME': true, 'USAMO': true}
	$scope.contestList = [];
	$scope.startYear = 1950;
	$scope.endYear = 2015;
	//holds search results
	$scope.results;
	//generate list of contests from map
	for (var key in $scope.contests) {
		$scope.contestList.push(key);
	}
	//on submit, send GET request for search results
	$scope.submit = function(){
		var list = []
		for (var key in $scope.contests) {
			if ($scope.contests.hasOwnProperty(key)) {
				if ($scope.contests[key]==true) {
					list.push(key);
				}
			}
		}
		console.log('searching contests ' + list);
		DataService.search($scope.text,list,$scope.startYear, $scope.endYear)
		.then (function(data) {
			//generate list of problem metadata
			var metaresults = [];
			for (i in data) {
				metaresults.push(data[i]['meta']);
			}
			$scope.results = metaresults;
		});
	}
});

//focus elements
app.directive('focusMe', function($timeout) {
  return {
    link: function(scope, element, attrs) {
      scope.$watch(attrs.focusMe, function(value) {
        if(value === true) { 
            element[0].focus();
            scope[attrs.focusMe] = false;
        }
      });
    }
  };
});

//refresh mathjax on problem change
//from http://blog.datacamp.com/mathjax-binding-in-angular-js
app.directive('mathjax',function(){
	return {
		restrict: 'EA',
		link: function(scope, element, attrs) {
			scope.$watch(attrs.ngModel, function () {
				MathJax.Hub.Queue(['Typeset',MathJax.Hub,element.get(0)]);
            });
		}
	};
});

//nav-bar.html
app.directive("navBar", function() {
	return {
		restrict: 'E',
		templateUrl: '/views/nav-bar.html'
	};
});