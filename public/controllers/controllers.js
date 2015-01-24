var app = angular.module('fleekApp', ['ngRoute'])
//routing definitions
.config(['$routeProvider', '$locationProvider',
	function($routeProvider, $locationProvider) {
	    $routeProvider
		.when('/', {
	        templateUrl: '/views/splash.html'
	    })
	    .when('/login', {
	        templateUrl: '/views/login.html',
	        controller: 'loginController'
	    })
	    .when('/signup', {
	        templateUrl: '/views/signup.html',
	        controller: 'signupController'
	    })
	    .when('/search', {
	        templateUrl: '/views/search.html',
	        controller: 'searchController'
	    })
	    .when('/search/:searchQuery', {
	        templateUrl: '/views/search.html',
	        controller: 'searchController'
	    })
	    .when('/problem/:problemId', {
	        templateUrl: '/views/problem.html',
	        controller: 'problemController'
	    })
	    .otherwise({
	        redirectTo: '/'
	    });
    //remove # from URL
    $locationProvider.html5Mode(true);
}])
.run(function($rootScope, $location, AuthService) {
    //watch for route changes and redirect accordingly
    $rootScope.$on( "$routeChangeStart", function(event, next, current) {
    	$rootScope.current = next.templateUrl;
    	AuthService.getAuth()
		.then( function(data) {
			//if user is logged in
			if (data) {
				$rootScope.userLoggedIn = data;
				//if the user is trying to access signup or login, redirect to root page
				if ($rootScope.loginTemplates.indexOf(next.templateUrl) >= 0) {
					$location.path("/");
				}
			}
			//if user is not logged in
			else {
				//if the user is trying to access search or problem, redirect to login page
				if ($rootScope.restrictedTemplates.indexOf(next.templateUrl) >= 0) {
					$location.path( "/login" );
				}
			}
			console.log('logged in user: '+ $rootScope.userLoggedIn + ', current template: ' + $rootScope.current);
		});
	});
});

//page controller - controls what the page displays & authentication state
app.controller("pageController", function ($scope, $rootScope, $location, AuthService) {
	$rootScope.userLoggedIn = null; //only used to display buttons and stuff
	$rootScope.restrictedTemplates = ['/views/problem.html','/views/search.html'];
	$rootScope.loginTemplates = ['/views/login.html','/views/signup.html'];
	// $scope.restrictions = { //map pages to restrictions
	// 	"/views/splash.html": false, 
	// 	"/views/login.html": false, 
	// 	"/views/signup.html": false, 
	// 	"/views/problem.html": true, 
	// 	"/views/search.html": true
	// };
	// $scope.checkAuth = function() {
	// 	AuthService.getAuth()
	// 	.then( function(data) {
	// 		if (data) {
	// 			console.log("logged in");
	// 			$rootScope.userLoggedIn = data;
	// 		}
	// 	});
	// }
	// //function to set view (accessible from child scopes)
	// $scope.setView = function(page,init) {
	// 	//collapse nav bar, not very angular
	// 	if (!init) {
	// 		if ($(".navbar-toggle").css("display") == "block" ) {
	// 			$("#nav-collapse").collapse("hide");
	// 		}
	// 	}
	// 	//set init's default to false
	// 	init = init | false; 
	// 	//if page is unrestricted (and it's not the first visit), continue to page
	// 	if (!$scope.restrictions[page] && !init) { 
	// 		console.log(" / unrestricted, continue to " + page);
	// 		$scope.current = page;
	// 	}
	// 	//if page is restricted (or it's the first visit), check authorization status
	// 	else {
	// 		AuthService.getAuth()
	// 		.then( function(data) {
	// 			if (data) {
	// 				console.log(" / authorized, continue to " + page);
	// 				$scope.current = page;
	// 				$scope.auth = true;
	// 			}
	// 			else if (!$scope.restrictions[page]) {
	// 				console.log(" / unrestricted, continue to " + page);
	// 				$scope.current = page;
	// 				$scope.auth = false;
	// 			}
	// 			else {
	// 				console.log(" / unauthorized, redirect to login");
	// 				$scope.current = "/views/login.html";
	// 				$scope.auth = false;
	// 			}
	// 		}, function(error) {
	// 			console.log(" / unauthorized, redirect to login");
	// 			$scope.current = "/views/login.html";
	// 			$scope.auth = false;
	// 		});
	// 	}
	// };

	//function to log out
	$scope.logout = function() {
		AuthService.logout()
		.then( function(data) {
			if (data) {
				$rootScope.userLoggedIn = null;
				// $scope.setView('/views/splash.html');
				$location.path('/');
			}
		});
	}
});

//login controller - controls login form
app.controller("loginController", function($scope, $rootScope, $location, AuthService) {
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
    			$rootScope.userLoggedIn = angular.lowercase($scope.user);
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

//signup controller - controls signup form
app.controller("signupController", function($scope,$rootScope,$location,AuthService,DataService) {
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
    			$rootScope.userLoggedIn = angular.lowercase($scope.user);
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

//problem view controller - add stuff here later
app.controller("problemController", function($scope,$routeParams,ProblemService) {
	$scope.problem = ProblemService.getProblem();
	$scope.correct = false;
	$scope.incorrect = false;
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
});

//search view controller - add stuff here later
app.controller("searchController", function($scope,$routeParams,$location,DataService,ProblemService) {
	$scope.searchQuery = $routeParams.searchQuery
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
	//use a service to send information to problem controller
	$scope.setProb = function(contest,year,number,ansType,sources,statement,ans) {
		ProblemService.setProblem(contest,year,number,ansType,sources,statement,ans);
		$scope.setView("/views/problem.html");
	}
	//on submit, send GET request for search results
	$scope.search = function(){
		$routeParams.searchQuery = $scope.searchQuery;
		var list = []
		for (var key in $scope.contests) {
			if ($scope.contests.hasOwnProperty(key)) {
				if ($scope.contests[key]==true) {
					list.push(key);
				}
			}
		}
		console.log('searching contests ' + list);
		DataService.search($scope.searchQuery,list,$scope.startYear, $scope.endYear)
		.then (function(data) {
			$scope.results = data;
		});
	}
	$scope.search();
	$scope.submit = function() {
		$location.path('/search/'+$scope.searchQuery);
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